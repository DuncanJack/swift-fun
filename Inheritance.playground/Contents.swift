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
    var description = "Being"
    var weight:Int? {
        didSet {
            print("Human weight was \(oldValue ?? 0) and is \(weight ?? 0)")
        }
        willSet {
            print("Human weight will be changed from \(weight ?? 0) to \(newValue ?? 0)")
        }
    }
    func speak() {
        print("speak")
    }
}

let human = Human()
human.breathe()
human.speak()
human.weight = 200

// -------------------------------------------------------------------------------
// Overriding
// -------------------------------------------------------------------------------

// Overriding Methods

class Male : Human {
    override var description:String {
        get {
            return "Male.description.get"
        }
        set {
            print("Male.description.set")
        }
    }
    override var weight: Int? {
        didSet {
            print("Human weight was \(oldValue ?? 0) and is \(weight ?? 0)")
        }
        willSet {
            print("Human weight will be changed from \(weight ?? 0) to \(newValue ?? 0)")
        }
    }
    override func speak() {
        print("male speak")
    }
}

let male = Male()
male.breathe()
male.speak()

// Overriding Properties

male.weight = 190
print(male.weight)
print(male.description)

// Overriding property observers

class WeightWatcher : Human {
    override var weight: Int? {
        didSet {
            print("WeightWatcher weight was \(oldValue ?? 0) and is \(weight ?? 0)")
        }
        willSet {
            print("WeightWatcher weight will be changed from \(weight ?? 0) to \(newValue ?? 0)")
        }
    }
}

let weightWatcher = WeightWatcher()
weightWatcher.weight = 195

// -------------------------------------------------------------------------------
// Preventing Overrides
// -------------------------------------------------------------------------------

final class Ultimate : Human {
    override init() {
        print("I cannot be overridden")
    }
}

Ultimate()




