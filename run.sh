# Copy this script to a blank machine and run it

set -e

VENV_DIR=~/server-sanity-venv

yum install -y epel-release

yum install -y git python-pip python-virtualenv
git clone https://github.com/honza/server-sanity
cd server-sanity
virtualenv $VENV_DIR
$VENV_DIR/bin/pip install ansible
$VENV_DIR/bin/ansible-playbook server-sanity.yaml

rm -rf $VENV_DIR

cat <<EOF
=============================
server sanity setup complete!
=============================

Here is what's left to do:

1.  Log out
2.  Log back in with mosh
3.  Start tmux
4.  Profit!

EOF
