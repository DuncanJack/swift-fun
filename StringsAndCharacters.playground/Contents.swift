import Foundation

// -------------------------------------------------------------------------------
// String Literals
// -------------------------------------------------------------------------------

let myStringLiteral = "My String Literal"

// -------------------------------------------------------------------------------
// Initializing an Empty String
// -------------------------------------------------------------------------------

if String().isEmpty {
    print("empty")
}

// -------------------------------------------------------------------------------
// String Mutability
// -------------------------------------------------------------------------------

let constantString = "Constant"
var variableString = constantString
variableString += " but not really"

// -------------------------------------------------------------------------------
// Strings Are Value Types
// -------------------------------------------------------------------------------

// -------------------------------------------------------------------------------
// Working with Characters
// -------------------------------------------------------------------------------

let aCharacter: Character = "A"
let bCharacter = Character("B")
let aString = String(aCharacter)
let someCharacters = [aCharacter, bCharacter]

for character in someCharacters {
    print(character)
}

print(String(someCharacters))

// -------------------------------------------------------------------------------
// Concatenating Strings and Characters
// -------------------------------------------------------------------------------

let string1 = "hello"
let string2 = " there"
let welcome = string1 + string2

var bienvenue = "wilkommen"
let exclamationMark: Character = "!"
bienvenue.append(exclamationMark)

// -------------------------------------------------------------------------------
// String Interpolation
// -------------------------------------------------------------------------------

print("\(2+2)")

// -------------------------------------------------------------------------------
// Unicode
// -------------------------------------------------------------------------------

// Special Characters in String Literals

let special1 = "a\tb\tc"

// Extended Grapheme Clusters

let eAcute = "\u{e9}"
let combinedEAcute = "\u{65}\u{301}"

// -------------------------------------------------------------------------------
// Counting Characters
// -------------------------------------------------------------------------------

let special1Count = special1.characters.count
let eAcuteCount = eAcute.characters.count
let combinedEAcuteCount = combinedEAcute.characters.count

let e = "\u{65}"
let eCount = e.characters.count

let combiningGrave = "\u{300}"
let combiningGraveCount = combiningGrave.characters.count

let combinedEGrave = e + combiningGrave
let combinedEGraveCount = combinedEGrave.characters.count
let numberOf16BitCodeUnits = NSString(string: combinedEGrave).length

let grave = "\u{60}"
let graveCount = grave.characters.count

let ePlusGrave = e + grave
let ePlusGraveCount = ePlusGrave.characters.count

let usFlag = "\u{1F1FA}\u{1F1F8}"
let usFlagCharacterCount = usFlag.characters.count
for character in usFlag.characters{
    print(character)
}

let nsString = NSString(string: usFlag)
let usFlagNumberOf16BitCodeUnits = nsString.length
for c in 0..<usFlagNumberOf16BitCodeUnits {
    print(nsString.character(at: c))
}

// -------------------------------------------------------------------------------
// Accessing and Modifying a String
// -------------------------------------------------------------------------------

// String Indices

let word = "abc"

let a = word[word.startIndex]
let b = word[word.index(after: word.startIndex)]
let c = word[word.index(before: word.endIndex)]

for index in word.characters.indices {
    print(word[index], terminator:"")
}

for character in word.characters {
    print(character, terminator:"")
}

// Inerting and Removing

var abcde = "abcde"
abcde.remove(at: abcde.index(abcde.startIndex, offsetBy: 3))
abcde.insert("d", at:abcde.index(abcde.startIndex, offsetBy: 3))
abcde.removeSubrange(abcde.startIndex...abcde.index(abcde.startIndex, offsetBy: 2))

// -------------------------------------------------------------------------------
// Comparing Strings
// -------------------------------------------------------------------------------

// String and Character Equality
var first = "first"
var second = first
first == second

first.append("?")
first == second

// Prefix and Suffix Equality

"abc".hasPrefix("a")
"abc".hasSuffix("c")

// -------------------------------------------------------------------------------
// Unicode Representations of Strings
// -------------------------------------------------------------------------------

let dogString = "Dog!!🐶"

print("\nutf8")
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator:"")
}

print("\nutf16")
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator:"")
}

print("\nunicodeScalars")
for scalar in dogString.unicodeScalars {
    print("\(scalar) ", terminator:"")
}

print("\nunicodeScalars.value")
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator:"")
}








