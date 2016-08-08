// -------------------------------------------------------------------------------
// Defining a Class Hierarchy for Type Casting
// -------------------------------------------------------------------------------

class Animal {
    var name: String
    init(name:String) {
        self.name = name
    }
}

class Dog: Animal {
    var weight: Int
    init(name:String, weight: Int) {
        self.weight = weight
        super.init(name: name)
    }
}

class Cat: Animal {
    
}

let pets = [
    Dog(name: "Blue", weight: 100),
    Cat(name: "Tyler"),
    Dog(name: "Belle", weight: 80),
    Cat(name: "Tabby")
]

// -------------------------------------------------------------------------------
// Checking Type
// -------------------------------------------------------------------------------

pets[0] is Dog
pets[1] is Dog

// -------------------------------------------------------------------------------
// Downcasting
// -------------------------------------------------------------------------------

let dog = pets[0] as! Dog
print(dog.weight)

if let dog = pets[2] as? Dog {
    print(dog.weight)
}

// Convert (up the hierarchy)
let animal = Dog(name: "Chien", weight: 100) as Animal

// Downcast (forced)
let chien = animal as! Dog

// Downcast (conditional)
let hund = animal as? Dog

// -------------------------------------------------------------------------------
// Type Casting for AnyObject and Any
// -------------------------------------------------------------------------------

// AnyObject

let objects: [AnyObject] = [
    Animal(name:"Tiger"),
    Animal(name:"Leopard")
]

// Downcast (forced)
let forcedAnimals = objects as! [Animal]

// Downcast (conditional)
let conditionalAnimals = objects as? [Animal]

// Convert (up the hierarchy)
let converted = forcedAnimals as [AnyObject]

// Any

let anys: [Any] = [
    "A",
    Animal(name: "Tiger")
]

for any in anys {
    switch any {
    case let someString as String:
        print("some string: \(someString)")
    case let someAnimal as Animal:
        print("some animal: \(someAnimal)")
    default:
        print("none of the above")
    }
}






