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