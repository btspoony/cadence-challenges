# 🚩 Hello World - Mission 2

## 📹 Video Walkthrough

Want a video walkthrough? Check out Jacob Tucker's walkthrough [here](https://www.youtube.com/watch?v=4HiXSGES8_o)

## 💾 Checkpoint 4: Deploy it to testnet

In the previous quest, you should have already obtained a testnet address.

> ⛽️ Add your new testnet account to your `flow.json` by modifying the following lines of code. Paste your address you copied above to where it says "YOUR GENERATED ADDRESS", and paste your private key where it says "YOUR PRIVATE KEY".

```json
"accounts": {
  "emulator-account": {
    "address": "f8d6e0586b0a20c7",
    "key": "5112883de06b9576af62b9aafa7ead685fb7fb46c495039b1a83649d61bff97c"
  },
  "testnet-account": {
    "address": "YOUR GENERATED ADDRESS",
    "key": {
      "type": "hex",
      "index": 0,
      "signatureAlgorithm": "ECDSA_P256",
      "hashAlgorithm": "SHA3_256",
      "privateKey": "YOUR PRIVATE KEY"
    }
  }
},
"deployments": {
  "emulator": {
    "emulator-account": [
      "HelloWorld"
    ]
  },
  "testnet": {
    "testnet-account": [
      "HelloWorld"
    ]
  }
}
```

> 🚀 Deploy your HelloWorld smart contract:

```sh
flow project deploy --network=testnet
```

![deploy contract to testnet]("https://i.imgur.com/GBFs2Uz.png")

> Lastly, configure your .env file to point to Flow TestNet so we can interact with your new contract.

In your .env file, change the following:

1. `NEXT_PUBLIC_CONTRACT_ADDRESS` to your generated testnet address
2. `NEXT_PUBLIC_ACCESS_NODE` to `https://rest-testnet.onflow.org`
3. `NEXT_PUBLIC_WALLET` to `https://fcl-discovery.onflow.org/testnet/authn`

You can now terminate all your terminals since we no longer need to run our own local blockchain or wallet. Everything lives on testnet!

> Run `npm run dev` to start your application in a terminal, and have a blast with your DApp!

## 📝 Make Edits

🔏 You can also check out your smart contract `HelloWorld.cdc` in `flow/cadence/HelloWorld.cdc`.

💼 Take a quick look at how your contract get deployed in `flow.json`.

📝 If you want to make frontend edits, open `index.js` in `pages/index.js`.

## ⚔️ Side Quests

> 💬 Meet other builders working on this challenge and get help in the [💎 Emerald City Discord](https://discord.gg/emeraldcity)!
> 👉 Problems, questions, comments on the stack? Post them to the [💎 Emerald City Discord](https://discord.gg/emeraldcity).
