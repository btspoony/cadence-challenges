# How to create a deployer account on Flow testnet

The first step of building on Flow.

## Prepare: Install

Required:

- [Flow CLI](https://developers.flow.com/tools/flow-cli/install) (🧨 Make sure to install the correct link for your system 🧨). You know you have installed it if you type `flow version` in your terminal and it prints a version.

## Create your account

> Make sure to save your public key and private key somewhere, you will need them in future.

🔐 Generate a **deployer address** by typing `flow keys generate --network=testnet` into a terminal.

![generate key pair](https://i.imgur.com/HbF4C73.png)

👛 Create your **deployer account** by going to <https://testnet-faucet.onflow.org/>, pasting in your public key from above, and clicking `CREATE ACCOUNT`:

![configure testnet account on the website](https://i.imgur.com/73OjT3K.png)

After it finishes, click `COPY ADDRESS` and make sure to save that address somewhere.  
You will need it!
