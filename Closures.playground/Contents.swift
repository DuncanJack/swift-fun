// -------------------------------------------------------------------------------
// Closure Expressions
// -------------------------------------------------------------------------------

func write(_ closure:(Int,Int)->Int){
    print(closure(1,2))
}

// Closure Expression Syntax

write({(a:Int, b:Int) in
    return a + b
})

// Inferring Type From Context

write({a,b in
    return a + b
})

// Implicit Returns from Single-Expression Closures

write({a,b in a+b})

// Shorthand Argument Names

write({$0 + $1})

// Operator Functions

write(+)

// -------------------------------------------------------------------------------
// Trailing Closures
// -------------------------------------------------------------------------------

func calculate(_ closure:(Int,Int) -> Int){
    print(closure(1,1))
}

calculate({a,b in
    a+b
})

calculate(){a,b in
    a+b
}

calculate{a,b in
    a+b
}

// -------------------------------------------------------------------------------
// Capturing Values
// -------------------------------------------------------------------------------

func getClosure()-> () -> Void {
    var counter = 0
    return {
        print("counter: \(counter)")
        counter += 1
    }
}
var alpha = getClosure()
alpha()

// -------------------------------------------------------------------------------
// Closures Are Reference Types
// -------------------------------------------------------------------------------

var beta = alpha
beta()
beta()
beta()

alpha()

// -------------------------------------------------------------------------------
// Nonescaping Closures
// -------------------------------------------------------------------------------

var escapee: (() -> Void)!
func noescapeExample(_ a:()->Void, _ b: @noescape ()->Void){
    // This closure is not called until after this method returns ... it escapes.
    escapee = a
    // This closure is called before this method returns ... it does not escape.
    b();
}

class Closures {
    let message = "Closures"
    func go(){
        noescapeExample(
            // This closure escapes and must use self explicitly.
            { print(self.message) },
            // This closure does not escape and can use self implicitly.
            { print(message) }
        )
    }
}

Closures().go()
escapee()

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











