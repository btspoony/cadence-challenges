# 🚩 Hello World - Mission 1

## 📹 Video Walkthrough

Want a video walkthrough? Check out Jacob Tucker's walkthrough [here](https://www.youtube.com/watch?v=4HiXSGES8_o)

## 📦 Checkpoint 0: Install

Required:

- [Git](https://git-scm.com/downloads)
- [Node](https://nodejs.org/dist/latest-v16.x/) (🧨 Use Node v16 or a previous version as v17 may cause errors 🧨). You know you have installed it if you type `node -v` in your terminal and it prints a version.
- [Flow CLI](https://docs.onflow.org/flow-cli/install/) (🧨 Make sure to install the correct link for your system 🧨). You know you have installed it if you type `flow version` in your terminal and it prints a version.

```sh
git clone https://github.com/emerald-dao/0-hello-world.git
```

> in a terminal window, 📱 install the dependencies start your frontend:

```sh
cd 0-hello-world
npm install
npm run dev
```

> in a second terminal window, start your 👷‍ local emulator:

```bash
cd 0-hello-world
flow emulator start -v
```

_Note: the `-v` flag means to print transaction and script output to your local emulator_

> in a third terminal window, 💾 deploy your contract and 💸 start your local wallet:

```bash
cd 0-hello-world
flow project deploy
flow dev-wallet
```

> You can `flow project deploy --update` to deploy a new contract any time.

📱 Open <http://localhost:3000> to see the app

## 👛 Checkpoint 1: Wallets

We'll be using **the local Flow dev wallet**.

> Click the "Log In" button and notice a window appears with different accounts to select, each with their own Flow Token balance. Select the first account to log in to it.

## 📘 Checkpoint 2: Reading the Greeting

> 👀 Click the `Get Greeting` button to see your greeting:

![get greeting](https://i.imgur.com/PsK32ap.png)

## ✏️ Checkpoint 3: Changing the Greeting

> ✏️ Change the greeting! Type a new greeting into the input and click the `Change Greeting` button. You should see a transaction pop up:

![transaction popup](https://i.imgur.com/XByQNZ3.png)

> 👀 Click "APPROVE" and then click the `Get Greeting` button again. You should now see your new greeting:

![new greeting](https://i.imgur.com/cOW1PXB.png)

**📔 Ready to deploy to a public testnet?!?**
