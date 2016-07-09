// -------------------------------------------------------------------------------
// Initialization
// -------------------------------------------------------------------------------

// Setting Initial Values for Stored Properties

class Man {
    var name: String = "default" {
        didSet{
            print("name: \(self.name)")
        }
    }
    
    init(){
        self.name = "init"
    }
}

let man = Man()
print("after initialization: \(man.name)")
man.name = "changed"

// Default Property Values

class Woman {
    var name = "Woman"
}

// -------------------------------------------------------------------------------
// Customizing Initialization
// -------------------------------------------------------------------------------

// Initialization Parameters

class Fruit {
    init(name: String){
        print(name)
    }
}
_ = Fruit(name: "apple")

// Parameter Names and Argument Labels

class Person {
    init(gender sex:String){
        
    }
}
Person(gender: "Male")

// Initializer Parameters Without Argument Labels

class Personne {
    init(_ sex:String){
        
    }
}
Personne("Homme")

// Optional Property Types

struct Widget {
    var label: String
    var value: Int?
    init(label:String){
        self.label = label
    }
}
var widget = Widget(label:"a widget")
widget.value = 2
print(widget.value!)

// Assigning Constant Properties During Initialization

class Letter {
    let name: String
    init(_ name:String){
        self.name = name
    }
}
let letter = Letter("el")

// -------------------------------------------------------------------------------
// Default Initializers
// -------------------------------------------------------------------------------

class ClassWithDefaults {
    var name: String?
}
_ = ClassWithDefaults()

class ClassWithoutDefaults {
    var name:String
    init(name:String){
        self.name = name
    }
}
_ = ClassWithoutDefaults(name:"a name")

// Memberwise Initializers for Structure Types

struct StructWithDefaults {
    var name:String?
}
_ = StructWithDefaults()

struct StructWithoutDefaults {
    var name:String
}
_ = StructWithoutDefaults(name: "un nom")

// -------------------------------------------------------------------------------
// Initializer Delegation for Value Types
// -------------------------------------------------------------------------------

struct Unit {
    var a:String?
    var b:String?
    var c:String?
    init(){
        self.a = "a"
    }
    init(b:String){
        self.init()
        self.b = b
    }
    init(c:String){
        self.init()
        self.c = "c"
    }
}
print(Unit())
print(Unit(b: "b"))
print(Unit(c: "c"))

// -------------------------------------------------------------------------------
// Class Inheritance and Initialization
// -------------------------------------------------------------------------------

// Initializer Inheritance and Overriding

class A {
    var stored = 0
    var computed: String {
        return "\(stored)"
    }
}
let a = A()
print("a.computed \(a.computed)")

class B: A {
    override init(){
        super.init()
        super.stored = 1
    }
}
let b = B()
print("b.computed \(b.computed)")

// Designated and Convenience Initializers in Action

class Alpha {
    var alphaProp: String
    init(alphaProp: String){
        self.alphaProp = alphaProp
    }
    convenience init() {
        self.init(alphaProp:"alphaProp")
    }
}
let designatedAlpha = Alpha(alphaProp: "alphaProp")
let convenientAlpha = Alpha()

class Beta: Alpha {
    var betaProp: String
    init(alphaProp:String, betaProp:String){
        self.betaProp = betaProp
        super.init(alphaProp:alphaProp)
    }
    convenience init() {
        self.init(alphaProp:"alphaProp", betaProp: "betaProp")
    }
}
let designatedBeta = Beta(alphaProp: "alphaProp", betaProp: "betaProp")
let convenientBeta = Beta()

class Gamma: Beta {
    var gammaProp: String
    init(alphaProp: String, betaProp: String, gammaProp: String){
        self.gammaProp = gammaProp
        super.init(alphaProp:alphaProp, betaProp:betaProp)
    }
    convenience init() {
        self.init(alphaProp: "alphaProp", betaProp: "betaProp", gammaProp: "gammaProp")
    }
}
let designatedGamma = Gamma(alphaProp: "alphaProp", betaProp: "betaProp", gammaProp: "gammaProp")
let convenientGamma = Gamma()

// -------------------------------------------------------------------------------
// Failable Initializers
// -------------------------------------------------------------------------------

struct Decision {
    init?(decision: String){
        if decision.isEmpty {
            return nil
        }
    }
}

_ = Decision(decision: "")
_ = Decision(decision:"Oui")

// Failable Initializers for Enumerations

enum Flavor {
    case raspberry, strawberry, chocolate
    init?(initial: String){
        switch initial {
        case "R":
            self = .raspberry
            case "S":
            self = .strawberry
        case "C":
            self = .chocolate
        default:
            return nil
        }
    }
}

for potentialFlavor in [Flavor(initial: "R"),Flavor(initial:"S"), Flavor(initial:"C"), Flavor(initial:"?")]{
    if let flavor = potentialFlavor {
        print(flavor)
    } else {
        print("not a flavor")
    }
}













