// -------------------------------------------------------------------------------
// Assignment Operator
// -------------------------------------------------------------------------------

let ten = 10
let (x,y) = (1,"S")

// -------------------------------------------------------------------------------
// Arithmetic Operators
// -------------------------------------------------------------------------------

1+1
1-1
1/1
1*1

// Remainder Operator

9 % 4
9 % -4
-9 % 4
-9 % -4

// Unary Minus Operator

let three = 3
let minusThree = -three
let plusThree = -minusThree

// Unary Plus Operator

let minusSix = -6
let alsoMinusSix = +minusSix

// -------------------------------------------------------------------------------
// Compound Assignment Operators
// -------------------------------------------------------------------------------

var a = 1
a += 2
a -= 1
a *= 2
a /= 2

// -------------------------------------------------------------------------------
// Comparison Operators
// -------------------------------------------------------------------------------

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "apple")
(4, "dog") == (4, "dog")

// -------------------------------------------------------------------------------
// Ternary Conditional Operator
// -------------------------------------------------------------------------------

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// -------------------------------------------------------------------------------
// Nil-Coalescing Operator
// -------------------------------------------------------------------------------

let name = nil ?? "nom"

// -------------------------------------------------------------------------------
// Range Operators
// -------------------------------------------------------------------------------

// Closed Range Operator

for i in 1...4 {
    print(i)
}


// Half-Open Range Operator

for i in 1..<5 {
    print(i)
}

// -------------------------------------------------------------------------------
// Logical Operators
// -------------------------------------------------------------------------------

print (!true)
print(true && true)
print(true && false || true)
print(true && (false || true))

