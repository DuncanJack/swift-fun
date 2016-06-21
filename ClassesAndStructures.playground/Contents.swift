// -------------------------------------------------------------------------------
// Structures and Enumerations Are Value Types
// -------------------------------------------------------------------------------

struct Person {
    var age: Int
    var name: String?
}

var people = [Person(age: 20,name: "Bob")]
var bob = people[0]
bob.age = 40;
print(people[0].age)

enum Point {
    case N, S, E, W
}

var point = Point.N
var originalPoint = point
point = .S
print("originalPoint: \(originalPoint)")

// -------------------------------------------------------------------------------
// Classes Are Reference Types
// -------------------------------------------------------------------------------

class Member {
    var age: Int = 0
    var name: String?
    init(age:Int,name:String){
        self.age = age
        self.name = name
    }
}

var members = [Member(age: 20,name: "Bill")]
var bill = members[0]
bill.age = 40
print(members[0].age)

// -------------------------------------------------------------------------------
// Assignment and Copy Behavior for Strings, Arrays and Dictionaries
// -------------------------------------------------------------------------------

var s1 = "s1"
var s2 = s1
s1 = "s1Changed"
print("s1: \(s1)")
print("s2: \(s2)")

var a1 = [1,2,3]
var a2 = a1
a1.append(contentsOf: [4])
print(a1)
print(a2)

var d1 = ["a":"A"]
var d2 = d1
d1["a"] = "Changed"
print(d1)
print(d2)
