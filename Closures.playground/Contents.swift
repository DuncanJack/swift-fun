// -------------------------------------------------------------------------------
// Closure Expressions
// -------------------------------------------------------------------------------

// The Sorted Method

// Closure Expression Syntax

// Inferring Type From Context

// Implicit Returns from Single-Expression Closures

// Shorthand Argument Names

// Operator Functions

// -------------------------------------------------------------------------------
// Trailing Closures
// -------------------------------------------------------------------------------


// -------------------------------------------------------------------------------
// Capturing Values
// -------------------------------------------------------------------------------


// -------------------------------------------------------------------------------
// Closures Are Reference Types
// -------------------------------------------------------------------------------



// -------------------------------------------------------------------------------
// Nonescaping Closures
// -------------------------------------------------------------------------------



// -------------------------------------------------------------------------------
// Autoclosures
// -------------------------------------------------------------------------------


// Call serve with a closure.


// Call serve as if it takes a string.


// Escaping autoclosure


// -------------------------------------------------------------------------------
// Examples
// -------------------------------------------------------------------------------

// () -> Void

func execute(closure:() -> Void){
    closure()
}

var closure0 = {
    print(0)
}
execute(closure: closure0)

// (Int) -> Void

func execute(closure:(Int) -> Void){
    closure(1)
}

var closure1 = {(a:Int) in
    print(a)
}
execute(closure: closure1)

// (Int,Int) -> Void

func execute(closure:(Int,Int) -> Void) {
    closure(2,2)
}

var closure2 = {(a:Int, b:Int) in
    print(a)
    print(b)
}
execute(closure: closure2)

// (Int,Int) -> Int
func execute(closure:(Int, Int) -> Int) {
        closure(3,3)
}

let closure3 = {(a:Int, b:Int) -> Int in
    print(a)
    print(b)
    return a + b
}
execute(closure: closure3)











