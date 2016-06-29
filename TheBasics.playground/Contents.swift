// -------------------------------------------------------------------------------
// Constants and Variables
// -------------------------------------------------------------------------------

let myConst = 1
var myVar = 2

// -------------------------------------------------------------------------------
// Comments
// -------------------------------------------------------------------------------

/* Outer Comment
 
 /* Inner Comment */
 
 // Another Comment
 
 */

// -------------------------------------------------------------------------------
// Semicolons
// -------------------------------------------------------------------------------

let cat = "🐱"; print(cat)

// -------------------------------------------------------------------------------
// Integers
// -------------------------------------------------------------------------------

print("UInt8: \(UInt8.min) \(UInt8.max)")
print("UInt16: \(UInt16.min) \(UInt16.max)")
print("UInt32: \(UInt32.min) \(UInt32.max)")
print("UInt64: \(UInt64.min) \(UInt64.max)")

print("Int8: \(Int8.min) \(Int8.max)")
print("Int16: \(Int16.min) \(Int16.max)")
print("Int32: \(Int32.min) \(Int32.max)")
print("Int64: \(Int64.min) \(Int64.max)")

print("UInt: \(UInt.min) \(UInt.max)")

print("Int: \(Int.min) \(Int.max)")

var myInt = Int(2.1)

// -------------------------------------------------------------------------------
// Floating-Point Numbers
// -------------------------------------------------------------------------------

var myDouble:Double;
var myFloat:Float;

myDouble = 2
myDouble = Double(2)

// -------------------------------------------------------------------------------
// Numeric Literals
// -------------------------------------------------------------------------------

var a = 100.00
a = 1.00e2
a = 1e2

var b = 0.01
b = 1.00e-2
b = 1e-2

var hexadecimalDouble = 0x10.8p0
var sum = 1.0 + hexadecimalDouble

// -------------------------------------------------------------------------------
// Numeric Type Conversion
// -------------------------------------------------------------------------------

print(Double(1) + 1.1)
print(Int(1.25) + 2)

// -------------------------------------------------------------------------------
// Type Aliases
// -------------------------------------------------------------------------------

enum Sex {
    case Male, Female, Unknown
}

typealias Gender = Sex

let gender = Gender.Male

// -------------------------------------------------------------------------------
// Booleans
// -------------------------------------------------------------------------------

let member = false

// -------------------------------------------------------------------------------
// Tuples
// -------------------------------------------------------------------------------

let tuple1 = (1,"A")
print(tuple1.0)
print(tuple1.1)

let (first,_) = tuple1
print(first)

let (_,second) = tuple1
print(second)

let tuple2 = (a:1,b:"Two")
print(tuple2.0)
print(tuple2.1)
print(tuple2.a)
print(tuple2.b)

// -------------------------------------------------------------------------------
// Optionals
// -------------------------------------------------------------------------------

var optionalInt: Int?
print(optionalInt)
optionalInt = 1
print(optionalInt)
print(optionalInt!)

if let int = optionalInt {
    print(int)
}

var implicitInt: Int! = 2
print(implicitInt)












