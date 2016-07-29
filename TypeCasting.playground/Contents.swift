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