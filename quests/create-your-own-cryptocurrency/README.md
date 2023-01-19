# How to create your own cryptocurrency/token on Flow testnet

## Prerequisites

- Make sure you have created a deployer account on Flow testnet
- Make sure your deployer account has Flow tokens
- Make sure to have [Flow CLI](https://developers.flow.com/tools/flow-cli/install) installed
- Mare sure to install Visual Studio Code
- Make sure to have Cadence extension installed in Visual Studio Code

## Write your fungible token (FT) smart contract

We are using Flow playground for writing the smart contract

In Flow playground, you can use the ExampleToken contract on account `0x05`

<https://play.flow.com/1f6d0e44-f487-4eb9-9780-3f3c026cbcf8?type=account&id=7d8c6c4b-8ce8-4d21-9272-8872aa82262e&storage=none>

### Step 1: Rename contract

Rename `ExampleToken` to whatever you want

Use `CMD+F` or `CTRL+F` and type `ExampleToken` to find all instances. Look out for case sensitivity.

Line 5, 7, 82, 91, 95, 106, 138-146, 200, 205, 228, 237-240, 255

### Step 2: Change FT information

On line 121 and 127-133 you will want to change the fungible token information to fit your needs.

![fungible token information](https://i.imgur.com/hG8y3hV.png)

### Step 3: Setup your cadence folder

Create a folder with whatever name you want

- Create a subfolder called `cadence` and inside that subfolder create another called `contracts`
- Add your contracts from the Flow playground to your `contracts` folder
- Make sure to change the import paths in each contract  
  ![import paths](https://i.imgur.com/GIMiXZQ.png)
- Create flow.json

Open your terminal or powershell and go to your newly created folder

Run the command `flow init` to initialize a flow.json

![flow.json](https://i.imgur.com/ws0YjvK.png)

If you have done the above correctly your setup should look like this

![flow setup](https://i.imgur.com/V1qqR2C.png)

### Step 4: Configure your flow.json

Replace the code in your flow.json with the following:

```json
{
	"contracts": {
		"ExampleToken": "./cadence/contracts/ExampleToken.cdc",

		"FungibleToken": {
			"source": "./cadence/contracts/FungibleToken.cdc",
			"aliases": {
				"testnet": "0x9a0766d93b6608b7",
				"mainnet": "0xf233dcee88fe0abe"
			}
		},
		"FungibleTokenMetadataViews": {
			"source": "./cadence/contracts/FungibleTokenMetadataViews.cdc",
			"aliases": {
				"testnet": "0x9a0766d93b6608b7",
				"mainnet": "0xf233dcee88fe0abe"
			}
		},
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
				"FungibleToken",
				"MetadataViews",
				"NonFungibleToken",
				"FungibleTokenMetadataViews",
				"ExampleToken"
			]
		},
		"testnet": {
			"testnet-account": ["ExampleToken"]
		}
	}
}
```

- Replace "ADD YOUR FLOW ADDRESS" with your flow address
- Replace "ADD YOUR PRIVATE KEY" with your private key
- Replace "ExampleToken" with the name you have chosen  
  Note: Make sure not to upload your flow.json to github or anywhere online to keep your private key PRIVATE!

### Step 5: Deploy your contract

Go to the root folder that has the flow.json and run the command `flow project deploy --network=testnet`

TADA!!

You have now deployed your fungible token contract
