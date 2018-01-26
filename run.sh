# Copy this script to a blank machine and run it

yum install -y git python-pip
git clone https://github.com/honza/server-sanity
cd server-sanity
pip install ansible
ansible-playbook server-sanity.yaml

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
