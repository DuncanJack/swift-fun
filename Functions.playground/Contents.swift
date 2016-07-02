// -------------------------------------------------------------------------------
// Defining and Calling Functions
// -------------------------------------------------------------------------------

func write(text:String){
    print(text)
}
write(text:"write")

// -------------------------------------------------------------------------------
// Function Parameters and Return Values
// -------------------------------------------------------------------------------

// Functions Without Parameters

func noParams(){
    print("noParams")
}
noParams()

// Functions With Multiple Parameters

func add(a:Int, b:Int) -> Int {
    return(a+b)
}
print(add(a:1,b:2))

// Functions Without Return Values

func void(){
    print("void")
}
void()

// Functions With Multiple Return Values

func multiple() -> (String, Int){
    return ("A", 1)
}
print(multiple())

// Optional Tuple Return Types

func optional(yesPlease:Bool) -> (Int,Int)? {
    return yesPlease ? (1,2) : nil
}
print(optional(yesPlease: true))
print(optional(yesPlease: false))


// -------------------------------------------------------------------------------
// Function Argument Labels and Parameter Names
// -------------------------------------------------------------------------------

// Specifying Arguments Labels

func labels(al0 pn0:Int, al1 pn1: Int){
    print("\(pn0) \(pn1)")
}
print(labels(al0: 0, al1: 1))

// Ommitting Argument Labels

func noLabels(_ pn0:Int, _ pn1: Int){
    print("\(pn0) \(pn1)")
}
print(noLabels(0, 1))

// Default Parameter Values

func withDefaults(p0:Int=0, p1:Int=1, p2:Int){
    print("\(p0) \(p1) \(p2)")
}
withDefaults(p2:2)
withDefaults(p0:3, p2: 2)
withDefaults(p0:1, p1:2, p2: 3)

// Variadic Parameters (max 1 per function)
func variadic(name:String, ints:Int...){
    print("ints.count: \(ints.count)")
}
variadic(name:"San Francisco", ints: 1)
variadic(name:"Los Angeles", ints: 1,2)
variadic(name:"San Jose", ints: 1,2,3)
variadic(name:"Sacramento", ints: 1,2,3,4)

// In-Out Parameters
func modify(p0: inout Int){
    p0=2
}
var a = 1
modify(p0: &a)
let b = a

// -------------------------------------------------------------------------------
// Function Types
// -------------------------------------------------------------------------------

func type0() {
    print("type0")
}
var myType0: () -> Void = type0

func type1(a:Int) -> String {
    return "\(a)"
}
var myType1: (Int) -> String = type1

// Using Function Types

myType0()
myType1(1)

// Function Types as Parameter Types
func myType2(int: Int, type1:(a:Int) ->String ) {
    type1(a: int)
}
myType2(int: 5, type1: myType1)

// Function Types as Return Types
func getType1() -> (a:Int) -> String {
    return type1
}
getType1()(a: 1)

// -------------------------------------------------------------------------------
// Nested Functions
// -------------------------------------------------------------------------------

func outer(){
    
    func inner(){
        print("inner")
    }
    
    inner()
}
outer()




