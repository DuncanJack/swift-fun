// -------------------------------------------------------------------------------
// For-In Loops
// -------------------------------------------------------------------------------

for i in 1...3 {
    print(i)
}

for i in 1..<3 {
    print(i)
}

let name = "Swift"
for character in name.characters {
    print(character)
}

// -------------------------------------------------------------------------------
// While Loops
// -------------------------------------------------------------------------------

// While

var counter = 0
while counter < 10 {
    print(counter, terminator: "")
    counter += 1
}

// Repeat-While

counter = 0
repeat {
    print(counter, terminator: "")
    counter += 1
} while counter < 10

// -------------------------------------------------------------------------------
// Conditional Statements
// -------------------------------------------------------------------------------

// If

var int = 1
if int == 2 {
    print("int is 2")
} else if int == 3 {
    print("int is 3")
} else {
    print("none of the above")
}

// Switch

var switchVar = 2

switch switchVar {
case 0:
    print ("none")
case 1:
    print("one")
default:
    print("many")
}

// Switch - No Implicit Fallthrough

switch switchVar {
case 1,2:
    print("Either 1 or 2")
default:
    print("Neither")
}

// Switch - Interval Matching

var size = 8
switch size {
case 1...6:
    print("M")
case 7...10:
    print("L")
case 11...14:
    print("XL")
default:
    print("other")
}

// Switch - Tuples

let pizza = ("cheese","deep",14)
switch pizza {
case (_,_,10):
    print("small pizza")
case ("cheese",_,_):
    print("cheese pizza")
default:
    print("other")
}

// Switch - Value Bindings

var notes = ("A","B","C")
switch notes {
case (let first,"B","C"):
    print(first)
case (let first,let second,"C"):
    print("\(first) \(second)")
default:
    print("other")
}

// Switch - Where

let code = (2,2)

switch code {
case let(a,b) where a < b:
    print("\(a) < \(b)")
case let(a,b) where a > b:
    print("\(a) > \(b)")
case let(a,b):
    print("\(a) == \(b)")
}

// Switch - Compound Cases

let figs = (5,5)
switch figs {
case (0, let coord), (let coord,0):
    print("\(coord) points along a boundary")
case let (x,y):
    print("(\(x),\(y)) is not one of the target cases")
}





