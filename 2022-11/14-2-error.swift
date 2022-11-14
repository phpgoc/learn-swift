enum vendError: Error {
  case outOfMoney(needed: Int)
  case wrongSelection
}

class VendingMachine {
  var inventory = [
    "Candy Bar": 12,
    "Chips": 10,
    "Pretzels": 7,
  ]
  var coinsDeposited = 0
  func vend(itemNamed name: String) throws {

    guard let count = inventory[name] else {
      throw vendError.wrongSelection
    }
    guard coinsDeposited >= count else {
      throw vendError.outOfMoney(needed: count - coinsDeposited)
    }
    coinsDeposited -= count

    print("Dispensing \(name)")
  }
  func buys(itemNamed name: String) {
    do {
      try vend(itemNamed: name)
    } catch vendError.wrongSelection {
      print("Invalid Selection")
    } catch vendError.outOfMoney(let coinsNeeded) {
      print("Not enough money, please insert an additional \(coinsNeeded) coins.")
    } catch {
      print("Unexpected error: \(error).")
    }
  }
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
vendingMachine.buys(itemNamed: "Chips")
vendingMachine.buys(itemNamed: "other")
vendingMachine.coinsDeposited += 10
vendingMachine.buys(itemNamed: "Chips")
do {
  try? vendingMachine.vend(itemNamed: "Abc")
}
