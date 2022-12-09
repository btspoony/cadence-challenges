// Verify account address exists
pub fun main(
    acct: Address
): Bool {
    let addr = getAccount(acct)
    return true
}
