# Cadence Challenges

This is the repo to collect verifiable Cadence Quests.

## Template of a quest

The folder structure:

```txt
- quests
|- [questKey]
  |- README.md // The guide of current quest.
  |- verify.json // The configuare file about how to verify the quest.
  |- *.cdc // The verification scripts for this quest
```

Schema of `verify.json`  
It should be an array of verification steps.

```jsonc
[
  {
    "code": "URL of the verification scripts' code",
    "schema": [
      {
        "key": "the parameter for scripts",
        "type": "Address" // The input type, Address|String|UInt64|...
      }
    ],
    "tests": [ // All tests should be OK, then quest passed
      {
        "inputs": [
          {
            "value": "$0", // $0 means the first input parameter from client.
            "type": "Address"
          }
        ],
        "outputs": [
          {
            "expect": "return", // return or error, 
            "result": true // The result value of the execution for this test
          }
        ]
      },
      {
        "inputs": [
          {
            "value": "0x1", // the preset value for this test
            "type": "Address"
          }
        ],
        "outputs": [
          {
            "expect": "error" // error means some thing wrong when excuting this test
          }
        ]
      }
    ]
  }
]
```
