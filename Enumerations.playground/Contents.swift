// -------------------------------------------------------------------------------
// Matching Enumeration Values with a Switch Statement
// -------------------------------------------------------------------------------

enum City: Int {
    case aberdeen, glasgow, inverness
}

let location = City.glasgow

switch(location) {
case .aberdeen:
    print("East")
case .glasgow:
    print("West")
case .inverness:
    print("East")
}

// -------------------------------------------------------------------------------
// Associated Values
// -------------------------------------------------------------------------------

enum Pizza {
    case classic(String)
    case deepDish(String,String)
}

var pizza = Pizza.deepDish("Cheese", "Tomato")

switch pizza {
case .classic(let topping):
        print("Your topping is \(topping)")
case .deepDish(let topping0, let topping1):
    print("Your toppings are \(topping0) and \(topping1)")
}

// -------------------------------------------------------------------------------
// Raw Values
// -------------------------------------------------------------------------------

enum Size: Int {
    case s = 0
    case m = 1
    case l
}

print(Size.m)
print(Size.m.rawValue)
print(Size(rawValue: 2))

// -------------------------------------------------------------------------------
// Recursive Enumerations
// -------------------------------------------------------------------------------

