// -------------------------------------------------------------------------------
// Optional Chaining as an Alternative to Forced Unwrapping
// -------------------------------------------------------------------------------

class Room {
    var table: Table?
}

class Table {
    var numberOfLegs = 4
}

let room = Room()
room.table?.numberOfLegs == 4

room.table = Table()
room.table?.numberOfLegs == 4
print(room.table)

// -------------------------------------------------------------------------------
// Defining Model Classes for Optional Chaining
// -------------------------------------------------------------------------------

class A {
    var name = "a"
    var b: B?
    init() {
        print("a.init")
    }
}

class B {
    var name = "b"
    var c: C?
    init() {
        print("b.init")
    }
    
}

class C {
    var name = "c"
    init() {
        print("c.init")
    }
    func f() {
    }
}

// -------------------------------------------------------------------------------
// Accessing Properties Through Optional Chaining
// -------------------------------------------------------------------------------

let c = C()
let b = B()
let a = A()

a.b?.c?.name = "changed"
print(a.b?.c?.name)

a.b = b
b.c = c

print((a.b?.c?.name)!)
a.b?.c?.name = "different name"
print((a.b?.c?.name)!)

// Attempting to set a property with optional chaining returns Void?
// Compare against nil to see if the property was set.

(a.b?.c?.name = "and again") == nil

// -------------------------------------------------------------------------------
// Calling Methods Through Optional Chaining
// -------------------------------------------------------------------------------

// Calling a Void method with optional chaining returns Void?
// Compare against nil to see if the mthod was called.

a.b?.c?.f() == nil

// -------------------------------------------------------------------------------
// Accessing Subscripts Through Optional Chaining
// -------------------------------------------------------------------------------

class D {
    var codes: [String]?
    subscript(i: Int) -> String? {
        get {
            return codes?[0]
        }
        set {
            codes?[i] = newValue!
        }
    }
    init(codes:[String]?) {
        self.codes = codes
    }
}

var d: D? = D(codes:["A","B","C"])
d?[0] = "A*"
print(d?[0])

// Accessing Subscripts of Optional Type

var countries = ["A":[1,2,3],"B":[4,5,6]]
countries["A"]?[0] = 10
countries["B"]?[1] = 50
countries["C"]?[0] = 40
print(countries)
countries["C"] = [7,8,9]
print(countries["C"]!)

// -------------------------------------------------------------------------------
// Linking Multiple Levels of Chaining
// -------------------------------------------------------------------------------

var families = [
    "smith":["bob":["height":200,"weight":200],"anne":["height":160,"weight":160]]
]
families["smith"]?["anne"]?["weight"]!

families["smith"]?["anne"]?["weight"] = 140
families["smith"]?["anne"]?["weight"]!

// -------------------------------------------------------------------------------
// Chaining on Methods with Optional Return Values
// -------------------------------------------------------------------------------

class E {
    var f: F?
    init() {
    }
    init(f:F) {
        self.f = f
    }
}

class F {
    func echo(s: String?) -> String? {
        return s
    }
}

var e = E()
if let s = e.f?.echo(s: nil)?.hasPrefix("S") {
    print("Starts with S")
} else {
    print("Does not start with S")
}







