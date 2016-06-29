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
















