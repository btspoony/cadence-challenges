# How to create your own simple NFT contract on Flow testnet

## Prerequisites

Make sure you have created a deployer account on Flow testnet

Make sure your deployer account has Flow tokens

Make sure to have [Flow CLI](https://developers.flow.com/tools/flow-cli/install) installed

Mare sure to install Visual Studio Code

Make sure to have Cadence extension installed in Visual Studio Code

## Write your NFT smart contract

We are using Flow playground for writing the smart contract

In Flow playground, you can use the ExampleNFT contract on account `0x04`

https://play.flow.com/ff662c89-127e-4b93-a84d-97f2e4adb2ef?type=account&id=c537a46e-c093-41ce-a4e7-7304eb09e2fb&storage=none

### Step 1: Rename contract

Rename `ExampleNFT` to whatever you want

Use `CMD+F` or `CTRL+F` and type `ExampleNFT` to find all instances. Look out for case sensitivity.

### Step 2: Change NFT information

On line 101, 115, 131, 136-138, and 142 you will want to change the NFT information to fit your needs.

![NFT information](https://i.imgur.com/bQVeRKm.png)

### Step 3: Setup your cadence folder

-   Create a folder with whatever name you want

-   Create flow.json

Open your terminal or powershell and go to your newly created folder

Run the command `flow init` to initialize a flow.json

![flow.json](https://i.imgur.com/l3C0FCe.png)

-   Create a subfolder called `cadence` and inside that subfolder create another called `contracts`

-   Add your contracts from the Flow playground to your `contracts` folder

-   Make sure to change the import paths in each contract
    ![import paths](https://i.imgur.com/FQsjFeS.png)

If you have done the above correctly your setup should look like this

![flow setup](https://i.imgur.com/bqZvgcn.png)

### Step 4: Configure your flow.json

Replace the code in your flow.json with the following:

```json
{
	"contracts": {
		"ExampleNFT": "./cadence/contracts/ExampleNFT.cdc",

		"MetadataViews": {
			"source": "./cadence/contracts/MetadataViews.cdc",
			"aliases": {
				"mainnet": "0x1d7e57aa55817448",
				"testnet": "0x631e88ae7f1d7c20"
			}
		},
		"NonFungibleToken": {
			"source": "./cadence/contracts/NonFungibleToken.cdc",
			"aliases": {
				"testnet": "0x631e88ae7f1d7c20",
				"mainnet": "0x1d7e57aa55817448"
			}
		}
	},
	"networks": {
		"emulator": "127.0.0.1:3569",
		"mainnet": "access.mainnet.nodes.onflow.org:9000",
		"sandboxnet": "access.sandboxnet.nodes.onflow.org:9000",
		"testnet": "access.devnet.nodes.onflow.org:9000"
	},
	"accounts": {
		"emulator-account": {
			"address": "f8d6e0586b0a20c7",
			"key": "ce795966a578dedda983692db8c0cd03501305b0855e6ded0591cacac53ffc26"
		},
		"testnet-account": {
			"address": "ADD YOUR FLOW ADDRESS",
			"key": {
				"type": "hex",
				"index": 0,
				"signatureAlgorithm": "ECDSA_P256",
				"hashAlgorithm": "SHA3_256",
				"privateKey": "ADD YOUR PRIVATE KEY"
			}
		}
	},
	"deployments": {
		"emulator": {
			"emulator-account": [
				"MetadataViews",
				"NonFungibleToken",
				"ExampleNFT"
			]
		},
		"testnet": {
			"testnet-account": ["ExampleNFT"]
		}
	}
}
```

-   Replace "ADD YOUR FLOW ADDRESS" with your flow address
-   Replace "ADD YOUR PRIVATE KEY" with your private key
-   Replace "ExampleNFT" with the name you have chosen
    Note: Make sure not to upload your flow.json to github or anywhere online to keep your private key PRIVATE!

### Step 5: Deploy your contract

Go to the root folder that has the flow.json and run the command `flow project deploy --network=testnet`

TADA!!

You have now deployed your NFT contract
