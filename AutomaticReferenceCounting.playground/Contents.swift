// -------------------------------------------------------------------------------
// Automatic Reference Counting
// -------------------------------------------------------------------------------

class Person {
    init(){
        print("person.init")
    }
    deinit {
        print("person.deinit")
    }
}

var myPerson: Person? = Person()
var yourPerson = myPerson
myPerson = nil
print(yourPerson == nil)
yourPerson = nil