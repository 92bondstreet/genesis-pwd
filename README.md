# genesis-pwd

> Automagic installation of password manager

## Installation

**Note:** Root only

```sh
❯ wget --no-check-certificate https://raw.githubusercontent.com/92bondstreet/genesis-pwd/master/genesis-pwd.sh
❯ chmod +x ./genesis-pwd.sh
❯ sh genesis-pwd.sh
```

## Usage

### write a password for a given username

```sh
❯ secret

  Username: login-example

  Generate password? (y/n, default: y) n

  Enter password for "login-example": ******

  Enter password to unlock pwd.sh.safe: **********

Done
```


### read all

```sh
❯ illuminati

  Enter password to unlock pwd.sh.safe: ************

*<bjg5B5S9$i58g login-example
```

## pwd.sh

[pwd.sh](https://github.com/drduh/pwd.sh) is a script to manage passwords in an encrypted file using gpg.
