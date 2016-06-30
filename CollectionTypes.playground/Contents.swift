import Foundation

// -------------------------------------------------------------------------------
// Mutability of Collections
// -------------------------------------------------------------------------------

class Letter {
    var letter: String?
    init(_ aLetter:String){
        letter = aLetter
    }
}

let letters = [Letter("A"),Letter("B"),Letter("C")]
letters[1].letter = "b"

var strings = ["A","B","C"];
strings[1] = "b"


// -------------------------------------------------------------------------------
// Arrays
// -------------------------------------------------------------------------------

var odd = Array<Int>()
var even = [Int](arrayLiteral: 2,4)
even.append(6)
even += [8,10]
even.count
even.isEmpty
even.remove(at: 1)
even.insert(4, at: 1)
even[3...4] = [1,2]

for int in even {
    print(int)
}

for (index, value) in even.enumerated() {
    print("even[\(index)]: \(value)")
}

var myArray = NSMutableArray(array: [1,2,3])
myArray.add(4)

// -------------------------------------------------------------------------------
// Sets
// -------------------------------------------------------------------------------

var cities = Set<String>(["Los Angeles","San Francisco","Sacramento"])
cities.insert("Boston")
cities.insert("Boston")
cities.count
cities.isEmpty
cities.remove(at: cities.startIndex)

for city in cities {
    print(city)
}

for city in cities.sorted() {
    print(city)
}

// -------------------------------------------------------------------------------
// Performing Set Operations
// -------------------------------------------------------------------------------

// Fundamental Set Operations

let abc = Set(["a","b","c"])
let bcd = Set(["b","c","d"])

let union: [String] = abc.union(bcd).sorted()
let intersection: [String] = abc.intersection(bcd).sorted()
let subtracting: Set = abc.subtracting(bcd)
let difference: [String] = abc.symmetricDifference(bcd).sorted()

// Set Membership and Equality

let set1: Set = [1]
let set2: Set = [1,2]
let set3: Set = [1,2]
let set4: Set = [4]

set1.isSubset(of: set2)
set2.isSuperset(of: set1)
set3.isSuperset(of: set2)
set3.isStrictSuperset(of: set2)
set4.isDisjoint(with: set3)

var set: NSSet = NSSet(array: [1,2,3])
set.count

// -------------------------------------------------------------------------------
// Dictionaries
// -------------------------------------------------------------------------------

// Creating an Empty Dictionary

var emptyDictionary = [Double:String]()


// Creating a Dictionary with a Dictionary Literal

var coffees = ["espresso":"*","americano":"**"]

// Accessing and Modifying a Dictionary

coffees.count
coffees.isEmpty
coffees["flat white"] = "**"
coffees["flat white"] = "***"

if let oldValue = coffees.updateValue("**", forKey: "espresso") {
    print("The old value for espresso was \(oldValue)")
}

coffees["mocha"]

coffees["chai"] = "*"
coffees["chai"] = nil

print(coffees)

if let removedValue = coffees.removeValue(forKey: "flat white") {
    print("removedValue: \(removedValue)")
}

// Iterating Over a Dictionary

for (name, rating) in coffees {
    print("\(name) \(rating)")
}

[String](coffees.keys)
[String](coffees.values)

if var americano = coffees["americano"] {
    print("Would you like hot milk?")
}

var dictionary: NSDictionary = NSDictionary(dictionary: ["A":"a","B":"b"])
dictionary["A"]



















