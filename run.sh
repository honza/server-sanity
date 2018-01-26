# Copy this script to a blank machine and run it

yum install -y git python-pip
git clone https://github.com/honza/server-sanity
cd server-sanity
pip install ansible
# TODO: Handle ansible hosts file
ansible-playbook -i localhost server-sanity.yaml
