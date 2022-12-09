# How to create a deployer account on Flow testnet

The first step of building on Flow.

## Prepare: Install

Required:

- [NodeJS](https://nodejs.org/dist/latest-v16.x/) Use Node v16. You know you have installed it if you type `node -v` in your terminal and it prints a version.
- [Flow CLI](https://developers.flow.com/tools/flow-cli/install) You know you have installed it if you type `flow version` in your terminal and it prints a version.

## Create your account

> Make sure to save your public key and private key somewhere, you will need them in future.

🔐 Generate a **deployer address** by typing `flow keys generate --network=testnet` into a terminal.

![generate key pair](https://i.imgur.com/HbF4C73.png)

👛 Create your **deployer account** by going to <https://testnet-faucet.onflow.org/>, pasting in your public key from above, and clicking `CREATE ACCOUNT`:

<img src="https://i.imgur.com/73OjT3K.png" alt="configure testnet account on the website" width=80% />

After it finishes, click `COPY ADDRESS` and make sure to save that address somewhere.  
You will need it!
