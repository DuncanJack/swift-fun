// -------------------------------------------------------------------------------
// Instance Methods
// -------------------------------------------------------------------------------

class Coffee {
    var count = 0
    func sip(){
        count += 1
    }
}

let coffee = Coffee()
coffee.sip()
coffee.sip()
print(coffee.count)

// The self Property

struct Syrup {
    let name:String
    func isSame(name:String) -> Bool {
        return self.name == name
    }
}

let syrup = Syrup(name: "vanilla")
if syrup.isSame(name: "caramel"){
    print("I've already had one!")
}

// Modifying Value Types from Within Instance Methods

struct Point {
    var x = 0
    mutating func change(){
        x += 1
    }
}
var point = Point()
point.change()

// Assigning to self Within a Mutating Method

struct Punto {
    var x:Int
    mutating func change() {
        self = Punto(x: 3)
    }
}
var punto = Punto(x:2)
punto.change()
print(punto)

enum Truck {
    case Chevrolet, Ford, GMC
    mutating func upgrade(){
        switch self {
        case Chevrolet:
            self = Ford
        case Ford:
            self = GMC
        case GMC:
            self = GMC
        }
    }
}

var truck = Truck.Chevrolet
truck.upgrade()
truck.upgrade()
print("My truck is a \(truck)")

// -------------------------------------------------------------------------------
// Type Methods
// -------------------------------------------------------------------------------

class SomeClass {
    class func someTypeMethod() {
        print("someTypeMethod can be overridden.")
    }
    static func anotherTypeMethod() {
        print("anotherTypeMethod cannot be overridden.")
    }
}

class MyClass : SomeClass {
    override static func someTypeMethod() {
        print("someTypeMethod has been overridden.")
    }
}

SomeClass.someTypeMethod()
SomeClass.anotherTypeMethod()

MyClass.someTypeMethod()

class Member {
    static var count = 0
    
    init(){
        Member.count += 1
    }
    
    static func resetMemberCount() {
        self.count = 0
    }
}

_ = Member()
_ = Member()
_ = Member()

print("Member.count: \(Member.count)")
Member.resetMemberCount()
print("Member.count: \(Member.count)")
















