// Verify account address exists
pub fun main(
    acct: Address,
    pubKey: String,
): Bool {
    let keys = getAccount(acct).keys
    var valid = false
    let len = 10
    var i = 0
    while i < len {
        if let key = keys.get(keyIndex: i) {
            let pubKeyToCheck = String.encodeHex(key.publicKey.publicKey)
            if pubKeyToCheck == pubKey {
                valid = true
                break
            }
        } else {
            break
        }
        i = i + 1
    }
    return valid
}
 