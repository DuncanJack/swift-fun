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


















