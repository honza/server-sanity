# Copy this script to a blank machine and run it

yum install -y git python-pip
git clone https://github.com/honza/server-sanity
cd server-sanity
pip install ansible
ansible-playbook server-sanity.yaml
