// -------------------------------------------------------------------------------
// Defining a Base Class
// -------------------------------------------------------------------------------

class Being {
    func breathe() {
        print("breathe")
    }
}

let being = Being()
being.breathe()

// -------------------------------------------------------------------------------
// Subclassing
// -------------------------------------------------------------------------------

class Human : Being {
    func speak() {
        print("speak")
    }
}

let human = Human()
human.breathe()
human.speak()

// -------------------------------------------------------------------------------
// Overriding
// -------------------------------------------------------------------------------

// Overriding Methods

class Male : Human {
    override func speak() {
        print("male speak")
    }
}

let male = Male()
male.breathe()
male.speak()