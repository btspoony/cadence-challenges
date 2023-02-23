# How to create a deployer account on Flow testnet

The first step of building on Flow.

## Prepare: Install

Required:

- [Flow CLI](https://developers.flow.com/tools/flow-cli/install) (🧨 Make sure to install the correct link for your system 🧨). You know you have installed it if you type `flow version` in your terminal and it prints a version.

## Initialize configuration

You need to initialize flow configuration file before creating a new account.

```bash
> flow init
```

![Flow init](https://i.imgur.com/gI3Nuaj.png)

## Create your account

> Get more information on [Create Accounts](https://developers.flow.com/tools/flow-cli/create-accounts)

Create the account in interactive mode.

```bash
flow accounts create
```

![Create account](https://i.imgur.com/bKU6lur.png)

## View your account on Flow View Source

Going to <https://f.dnz.dev/>, pasting in your account address from above, and searching it.

![View Account](https://i.imgur.com/TGYHQ5k.png)

> Note: you can view the public keys of your account by the url `https://f.dnz.dev/{yourAddress}/keys`

## Get funds from faucet

👛 Get funds by going to <https://testnet-faucet.onflow.org/fund-account>, pasting in your account address from above, and clicking `FUND YOUR ACCOUNT`:

![get funds on the website](https://i.imgur.com/Ka0mpWN.png)
