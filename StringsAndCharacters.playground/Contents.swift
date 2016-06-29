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