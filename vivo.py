#! /usr/bin/env python
from subprocess import Popen,PIPE,STDOUT
import collections
import os
import sys
import time
import math
import os
import time
from urllib2 import urlopen

BOOTSTRAP_URL = "https://mega.nz/#!RjIGABhT!Ak1yl_WOGjvmsOfP4vcJbu8whWXaVDgztK_o4VV22Rg"
SENTINEL_GIT_URL = "https://github.com/vivocoin/sentinel.git"

MN_USERNAME = "mn1"
MN_PORT = 12845
MN_RPCPORT = 12800
MN_NODELIST = urlopen('https://pastebin.com/raw/fsd2Acm0').read()

MN_LFOLDER = ".vivocore"
MN_WFOLDER = "VivoCore"
MN_CONFIGFILE = "vivo.conf"
MN_DAEMON = "vivod"
MN_CLI = "vivo-cli"
MN_EXPLORER = "http://vivo.explorerz.top:3003/"

MN_SWAPSIZE = "2G"
SERVER_IP = urlopen('http://ip.42.pl/raw').read()
DEFAULT_COLOR = "\x1b[0m"
PRIVATE_KEY = ""

def print_info(message):
    BLUE = '\033[94m'
    print(BLUE + "[*] " + str(message) + DEFAULT_COLOR)
    time.sleep(1)

def print_warning(message):
    YELLOW = '\033[93m'
    print(YELLOW + "[*] " + str(message) + DEFAULT_COLOR)
    time.sleep(1)

def print_error(message):
    RED = '\033[91m'
    print(RED + "[*] " + str(message) + DEFAULT_COLOR)
    time.sleep(1)

def get_terminal_size():
    import fcntl, termios, struct
    h, w, hp, wp = struct.unpack('HHHH',
        fcntl.ioctl(0, termios.TIOCGWINSZ,
        struct.pack('HHHH', 0, 0, 0, 0)))
    return w, h
    
def remove_lines(lines):
    CURSOR_UP_ONE = '\x1b[1A'
    ERASE_LINE = '\x1b[2K'
    for l in lines:
        sys.stdout.write(CURSOR_UP_ONE + '\r' + ERASE_LINE)
        sys.stdout.flush()

def run_command_as(user, command):
    run_command('su - {} -c "{}" '.format(user, command))

def run_command(command):
    out = Popen(command, stderr=STDOUT, stdout=PIPE, shell=True)
    lines = []
    
    while True:
        line = out.stdout.readline()
        if (line == ""):
            break
        
        # remove previous lines     
        remove_lines(lines)
        
        w, h = get_terminal_size()
        lines.append(line.strip().encode('string_escape')[:w-3] + "\n")
        if(len(lines) >= 9):
            del lines[0]

        # print lines again
        for l in lines:
            sys.stdout.write('\r')
            sys.stdout.write(l)
        sys.stdout.flush()

    remove_lines(lines) 
    out.wait()

def print_welcome():
    os.system('clear')
    BLUE = '\033[36m'
    print(BLUE + "         (              )   " + DEFAULT_COLOR)
    print(BLUE + "         )\ )        ( /(   " + DEFAULT_COLOR)
    print(BLUE + " (   (  (()/( (   (  )\())  " + DEFAULT_COLOR)
    print(BLUE + " )\  )\  /(_)))\  )\((_)\   " + DEFAULT_COLOR)
    print(BLUE + "((_)((_)(_)) ((_)((_) ((_)  " + DEFAULT_COLOR)
    print(BLUE + "\ \ / / |_ _|\ \ / / / _ \  " + DEFAULT_COLOR)
    print(BLUE + " \ V /   | |  \ V / | (_) | " + DEFAULT_COLOR)
    print(BLUE + "  \_/   |___|  \_/   \___/  " + DEFAULT_COLOR)
    print(BLUE + "                            " + DEFAULT_COLOR)
    print_info("VivoCoin masternode installer v1.3")

def update_system():
    print_info("Updating the system...")
    run_command("apt-get update")
    run_command("apt-get upgrade -y")
    run_command("apt-get dist-upgrade -y")

def check_root():
    print_info("Check root privileges")
    user = os.getuid()
    if user != 0:
        print_error("This program requires root privileges.  Run as root user.")
        sys.exit(-1)

def secure_server():
    print_info("Securing server...")
    run_command("apt-get --assume-yes install ufw")
    run_command("ufw allow OpenSSH")
    run_command("ufw allow {}".format(MN_PORT))
    run_command("ufw default deny incoming")
    run_command("ufw default allow outgoing")
    run_command("ufw --force enable")

def setup_wallet():
    print_info("Allocating swap...")
    run_command("fallocate -l {} /swapfile".format(MN_SWAPSIZE))
    run_command("chmod 600 /swapfile")
    run_command("mkswap /swapfile")
    run_command("swapon /swapfile")

    f = open('/etc/fstab','r+b')
    line = '/swapfile   none    swap    sw    0   0 \n'
    lines = f.readlines()
    if (lines[-1] != line):
        f.write(line)
        f.close()

    print_info("Installing wallet dependencies...")
    run_command("apt-get -y install software-properties-common nano libboost-all-dev libzmq3-dev libminiupnpc-dev libssl-dev libevent-dev")
    run_command("add-apt-repository ppa:bitcoin/bitcoin -y")
    run_command("apt-get update")
    run_command("apt-get --assume-yes install git unzip libdb4.8-dev libdb4.8++-dev")

    print_info("Downloading wallet...")
    run_command("wget https://github.com/vivocoin/vivo/releases/download/v0.12.1.7/vivo-0.12.1.7-ubuntu14.04.tar.xz")
    run_command("tar -xvf vivo-0.12.1.7-ubuntu14.04.tar.xz")

    run_command("mv vivod /usr/local/bin/{}".format(MN_DAEMON))
    run_command("mv vivo-cli /usr/local/bin/{}".format(MN_CLI))

def setup_masternode():
    print_info("Setting up masternode...")
    run_command("useradd --create-home -G sudo {}".format(MN_USERNAME))
    
    print_info("Open your desktop wallet config file (%appdata%/{}/{}) and copy\n    your rpc username and password! If it is not there create one! E.g.:\n\trpcuser=[SomeUserName]\n\trpcpassword=[DifficultAndLongPassword]".format(MN_WFOLDER, MN_CONFIGFILE))
    rpc_username = raw_input("rpcuser: ")
    rpc_password = raw_input("rpcpassword: ")

    print_info("Open your wallet console (Tools => Debug Console) and create a new masternode private key: masternode genkey")
    masternode_priv_key = raw_input("masternodeprivkey: ")
    global PRIVATE_KEY
    PRIVATE_KEY = masternode_priv_key
    
    config = """rpcuser={}
rpcpassword={}
rpcallowip=127.0.0.1
rpcport={}
port={}
server=1
listen=1
daemon=1
logtimestamps=1
mnconflock=1
masternode=1
externalip={}:{}
masternodeprivkey={}
{}""".format(rpc_username, rpc_password, MN_RPCPORT, MN_PORT, SERVER_IP, MN_PORT, masternode_priv_key, MN_NODELIST)

    # creates folder structure
    run_command_as(MN_USERNAME, "mkdir -p /home/{}/{}/".format(MN_USERNAME, MN_LFOLDER))
    run_command_as(MN_USERNAME, "touch /home/{}/{}/{}".format(MN_USERNAME, MN_LFOLDER, MN_CONFIGFILE))
    
    print_info("Saving config file...")
    with open('/home/{}/{}/{}'.format(MN_USERNAME, MN_LFOLDER, MN_CONFIGFILE), 'w') as f:
        f.write(config)
        
    print_info("Downloading blockchain file...")
    run_command("apt-get --assume-yes install wget libtool libglib2.0-dev gobject-introspection libgmp3-dev nettle-dev asciidoc glib-networking openssl libcurl4-openssl-dev libssl-dev")
    run_command("wget https://megatools.megous.com/builds/megatools-1.9.98.tar.gz")
    run_command("tar -xvf megatools-1.9.98.tar.gz")
    run_command("cd megatools-1.9.98 && ./configure && make && make install")
    
    filename = "blockchain.rar"
    run_command_as(MN_USERNAME, "cd && megadl '{}' --path {}".format(BOOTSTRAP_URL, filename))
    
    print_info("Unzipping the file...")
    run_command("apt-get --assume-yes install unrar")
    run_command_as(MN_USERNAME, "cd && unrar x -u {} {}".format(filename, MN_LFOLDER))
    
    run_command("rm -rf megatools-1.9.98 megatools-1.9.98.tar.gz vivo-0.12.1.7-ubuntu14.04.tar.xz vivo-qt vivo-tx")
       
    os.system('su - {} -c "{}" '.format(MN_USERNAME, MN_DAEMON + ' -daemon'))
    print_warning("Masternode started syncing in the background...")

def crontab(job):
    p = Popen("crontab -l -u {} 2> /dev/null".format(MN_USERNAME), stderr=STDOUT, stdout=PIPE, shell=True)
    p.wait()
    lines = p.stdout.readlines()
    if job not in lines:
        print_info("Cron job doesn't exist yet, adding it to crontab")
        lines.append(job)
        p = Popen('echo "{}" | crontab -u {} -'.format(''.join(lines), MN_USERNAME), stderr=STDOUT, stdout=PIPE, shell=True)
        p.wait()


def autostart_masternode():
    job = "@reboot /usr/local/bin/{}\n".format(MN_DAEMON)
    crontab(job)
    

def setup_sentinel():
    # no sentinel support
    if SENTINEL_GIT_URL == "":
        return
    
    print_info("Setting up Sentinel (/home/{}/{}/sentinel)...".format(MN_USERNAME, MN_LFOLDER))

    # install dependencies
    run_command("apt-get -y install python-virtualenv git")

    # download and install sentinel
    run_command_as(MN_USERNAME, "git clone {} /home/{}/{}/sentinel".format(SENTINEL_GIT_URL, MN_USERNAME, MN_LFOLDER))
    run_command_as(MN_USERNAME, "cd /home/{}/{}/sentinel && virtualenv ./venv ".format(MN_USERNAME, MN_LFOLDER))
    run_command_as(MN_USERNAME, "cd /home/{}/{}/sentinel && ./venv/bin/pip install -r requirements.txt".format(MN_USERNAME, MN_LFOLDER))

    # run sentinel every minutes
    job = "* * * * * cd /home/{}/{}/sentinel && SENTINEL_DEBUG=1 ./venv/bin/python bin/sentinel.py >> sentinel.log 2>&1".format(MN_USERNAME, MN_LFOLDER)
    crontab(job)

    # try to update sentinel every day
    job = "* * 1 * * cd /home/{}/{}/sentinel && git pull https://github.com/terracoin/sentinel.git".format(MN_USERNAME, MN_LFOLDER)
    crontab(job)
    
def end():

    mn_base_data = """
    Alias: Masternode1
    IP: {}
    Private key: {}
    Transaction ID: [The transaction id of the desposit. 'masternode outputs']
    Transaction index: [The transaction index of the desposit. 'masternode outputs']
    --------------------------------------------------
"""

    mn_data = mn_base_data.format(SERVER_IP + ":" + str(MN_PORT), PRIVATE_KEY)

    imp = R"""Vs lbh sbhaq gur thvqr naq guvf fpevcg hfrshy pbafvqre gb fhccbeg zr.\a    IVIB: IZohAHte4S2pIvTjvsKCGcjNixNrj8g2FX\a    RGU: 0k9n794240o456O8qQ5593n7r8q7NR92s4pn4Q9Q2s\a    OGP: 33PeQClZcpjWSlZGprIZGYWLYE8mOFfaJz\a\a"""

    print('')
    print_info(
"""Masternodes setup finished!
    Wait until the masternode is fully synced. To check the progress login the 
    masternode account (su {}) and run the '{} getinfo' command to get
    the actual block number. Go to {} website to check 
    the latest block number or use your wallet. After the syncronization is done 
    add your masternode to your desktop wallet.

Masternode data:""".format(MN_USERNAME, MN_CLI, MN_EXPLORER) + mn_data)

    print_warning(imp.decode('rot13').decode('unicode-escape'))

def main():
    print_welcome()
    check_root()
    update_system()
    secure_server()
    setup_wallet()
    setup_masternode()
    autostart_masternode()
    setup_sentinel()
    end()

if __name__ == "__main__":
    main()
