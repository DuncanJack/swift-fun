// -------------------------------------------------------------------------------
// Stored Properties
// -------------------------------------------------------------------------------

struct Record {
    init(){
        print("Record.init")
    }
}

struct Table {
    lazy var record = Record()
}

var table = Table()
var record = table.record

// -------------------------------------------------------------------------------
// Computed Properties
// -------------------------------------------------------------------------------

struct Name {
    var firstName: String
    var lastName: String
    var title: String
    var age: Int
    var shortName: String {
        print("shortName")
        return firstName + " " + lastName
    }
    var longName: String {
        get {
            print("longName")
            return title + " " + firstName + " " + lastName
        }
    }
}

var name = Name(firstName: "First", lastName: "Last", title: "Title", age: 40)
print(name.shortName)
print(name.longName)
name.firstName = "New"
print(name.longName)

// -------------------------------------------------------------------------------
// Property Observers
// -------------------------------------------------------------------------------

class Person {
    var age: Int = 0 {
        willSet {
            print("willSet")
        }
        didSet {
            print("didSet")
        }
    }
}

let person = Person()
person.age = 40

// -------------------------------------------------------------------------------
// Global and Local Variables
// -------------------------------------------------------------------------------

var myGlobalVariable: String = "" {
willSet{
    print("myGlobalVariable willSet")
}
didSet{
    print("myGlobalVariable didSet")
}
}

var myGlobalComputed: String{
get{
    return "myGlobalComputed" + myGlobalVariable
}
set{
    myGlobalVariable = newValue.uppercased()
}
}

myGlobalVariable = "Some Value"
myGlobalComputed = "test"
print(myGlobalVariable)

func test(age:Int){
    var isMember: Bool = false {
        willSet {
            print("willSet")
        }
        didSet {
            print("didSet")
        }
    }
    
    isMember = age > 18 ? true : false
    
    print(isMember)
}

test(age: 20)

// -------------------------------------------------------------------------------
// Type Properties
// -------------------------------------------------------------------------------

class Passenger {
    static var count = 0
    
    init(){
        Passenger.count += 1
    }
}

print(Passenger.count)
_ = Passenger()
print(Passenger.count)
_ = Passenger()
print(Passenger.count)














