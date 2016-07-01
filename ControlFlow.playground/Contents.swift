// -------------------------------------------------------------------------------
// For-In Loops
// -------------------------------------------------------------------------------

for i in 1...3 {
    print(i)
}

for i in 1..<3 {
    print(i)
}

let name = "Swift"
for character in name.characters {
    print(character)
}

// -------------------------------------------------------------------------------
// While Loops
// -------------------------------------------------------------------------------

// While

var counter = 0
while counter < 10 {
    print(counter, terminator: "")
    counter += 1
}

// Repeat-While

counter = 0
repeat {
    print(counter, terminator: "")
    counter += 1
} while counter < 10