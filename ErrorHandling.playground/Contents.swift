// -------------------------------------------------------------------------------
// Representing and Throwing Errors
// -------------------------------------------------------------------------------

enum NotAvailablerror: ErrorProtocol {
    case busy
    case outOfOffice
}

// throw NotAvailablerror.busy

// -------------------------------------------------------------------------------
// Handling Errors
// -------------------------------------------------------------------------------

// Propogating Errors Using Throwing Functions

enum CalculatorError: ErrorProtocol {
    case Over10
    case SomethingElse
}

class Calculator {
    func add(a:Int, b:Int) throws -> Int {
        guard a + b <= 10 else {
            throw CalculatorError.Over10
        }
        guard a != 0 && b != 0 else {
            throw CalculatorError.SomethingElse
        }
        return a + b
    }
}

func add(a:Int, b:Int) throws -> Int {
    return try Calculator().add(a: a, b: b)
}

print(try add(a:4,b:5))

// Handling Errors Using Do-Catch

do {
    try add(a:6, b:6)
} catch CalculatorError.Over10 {
    print("The answer cannot be over 10.")
}

do {
    try add(a:0, b:6)
} catch {
    print(error)
}

// Converting Errors to Optional Values

let answer = try? add(a:2, b:2)
print(answer)

// Disabling Error Propogation

let result = try! (add(a:2,b:2))
print(result)