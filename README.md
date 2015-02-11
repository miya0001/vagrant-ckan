# Vagrant environment for CKAN 2.3b

## Getting started

```
$ git clone git@github.com:miya0001/vagrant-ckan.git
$ cd vagrant-ckan
$ vagrant up
```

Then visit [http://192.168.55.10/](http://192.168.55.10/).

## Creating a sysadmin user

You have to use CKAN’s command line interface to create your first sysadmin user.

SSH into the instance with the user ‘ubuntu’.

```
ssh -i /path/to/my-key-pair.pem ubuntu@${public_hostname}
```

CKAN commands are executed using the paster command on the server that CKAN is installed on. Before running the paster commands below, you need to make sure that your virtualenv is activated and that you're in your ckan source directory.

```
. /usr/lib/ckan/default/bin/activate
cd /usr/lib/ckan/default/src/ckan
```

You have to create your first CKAN sysadmin user from the command line. For example, to create a user called seanh and make him a sysadmin:

```
paster sysadmin add seanh -c /etc/ckan/default/production.ini
```

http://docs.ckan.org/en/ckan-2.2/getting-started.html#create-admin-user

## Customizing look and feel

Some simple customizations to customize the ‘look and feel’ of your CKAN site are available via the UI, at `http://<my-ckan-url>/ckan-admin/config/`.

![CKAN Config Panel](https://www.evernote.com/shard/s21/sh/b4245a4f-a769-433e-8235-d05ee0156c0d/e731f862589c40101fd6d72f46704f2f/deep/0/Administration---CKAN.png)

http://docs.ckan.org/en/ckan-2.2/sysadmin-guide.html

## Install an Email Server

Install an email server to enable CKAN’s email features (such as sending traceback emails to sysadmins when crashes occur, or sending new activity email notifications to users). For example, to install the Postfix email server, do:

```
sudo apt-get install postfix
```

When asked to choose a Postfix configuration, choose `Internet Site` and press return.

## More information

[Welcome to CKAN’s Documentation](http://docs.ckan.org/en/ckan-2.2/)
