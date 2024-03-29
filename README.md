# Cadence Challenges

This is the repo to collect verifiable Cadence Quests.

## Template of a quest

The folder structure:

```txt
- quests
|- [questKey]
  |- README.md // The guide of current quest.
  |- quest.json // The configuare file about how to verify the quest.
  |- *.cdc // The verification scripts for this quest
```

On-chain information:

- `questKey`
- URL of quest `.json`

Off-chain information:

- Markdown contents of guide in `README.md`
- Verification parameters and description in `quest.json`
- Cadence verification scripts which were defined URLs in `quest.json`

The schema of `quest.json`  

```jsonc
{
  "guide": "URL of the guide markdown", // Optional
  "steps": [
    // It should be an array of verification steps.
    // Onchain verification schema
    {
      "title": "The title of current quest step",
      "description": "The description of current quest step",
      "external": "(Optional) URL of the external information", // external url for this step
      "type": "onchain",
      "code": "URL of the verification scripts' code",
      "schema": [
        {
          "key": "parameter key",
          "label": "parameter display label",
          "type": "Address" // The input type, Address|String|UInt64|...
        }
      ],
      "test": { // All tests should be OK, then quest passed
        "network": "testnet",
        "expect": "return", // return or error; 'error' means some thing wrong when excuting this test
        "result": true // The result value of the execution for this test
      }
    },
    // Simple Quiz schema
    {
      "title": "The title of current quest step",
      "description": "The description of current quest step",
      "external": "(Optional) URL of the external information", // external url for this step
      "type": "quiz",
      "quiz": [
        {
          "type": "radio", // radio | checkbox
          "question": "Quiz question",
          "image": "(Optional) Quiz image",
          "options": [
            {
              "key": "A",
              "description": "Quiz option's description"
            }
          ],
          "answer": "A" // Answer of checkbox should be joined by ','
        }
      ]
    },
    // Github contribution verification schema
    {
      "title": "The title of current quest step",
      "description": "The description of current quest step",
      "external": "(Optional) URL of the external information", // external url for this step
      "type": "github",
      "repos": [ // to verify if you contribute to these repos
        "owner/repo"
      ]
    }
  ]
}
```
