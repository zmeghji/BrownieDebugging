from brownie import accounts, MyContract

def test_addSix():
    myContract = accounts[0].deploy(MyContract)
    initialTotal = myContract.total()
    assert initialTotal == 0

    tx = myContract.addSix()
    print(tx.events)
    assert myContract.total() == 6