// -------------------------------------------------------------------------------
// Subscript Syntax
// -------------------------------------------------------------------------------

struct Converter {
    subscript(index:Int) -> String{
        switch index{
        case -Int.max ... -1:
            return "don't know"
        case 0:
            return "none"
        case 1:
            return "one"
        default:
            return "many"
        }
    }
}
let converter = Converter()
print(converter[-1])
print(converter[0])
print(converter[1])
print(converter[2])

// -------------------------------------------------------------------------------
// Subscript Usage
// -------------------------------------------------------------------------------

var results = [1:"Andrew",2:"Bert",3:"Chris"]
if let winner = results[2] {
    print("the winner is: \(winner)")
}