# server sanity

Install a few essentials on a blank server.

* vim & vimrc
* tmux & tmux.conf
* mosh

## How do I run this?

### 1. Install ansible on your local machine

This should be as simple as `pip install ansible`.

### 2. Clone this repository

... and `cd` into it

### 3. Update the hosts file

Open the provided `hosts` file, and change it to point to your server.  Let's
say your server is called `east-01`, and lives `177.111.222.333` and you log in
with `root`.

```
east_01 ansible_host=177.111.222.333 ansible_user=root
```

### 4.  Run it

```
$ ansible-playbook -i hosts server-sanity.yaml
```

If you want to disable certain things (e.g. mosh), you can list only the tags
you want to use:

```
$ ansible-playbook -i hosts -t common server-sanity.yaml
```

## License

GPLv3
