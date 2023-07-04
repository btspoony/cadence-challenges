
pub fun main(
    acct: Address,
): Bool {
  let account = getAccount(acct)
  var valid = false

  let contractNames = account.contracts.names
  let contractAmount = contractNames.length
  var i = 0
  while i < contractAmount {
    let contractName = contractNames[i]
    if contractName == "HelloWorld" {
      valid = true
      break
    }
    i = i + 1
  }
  return valid
}