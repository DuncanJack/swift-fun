// -------------------------------------------------------------------------------
// Optional Chaining as an Alternative to Forced Unwrapping
// -------------------------------------------------------------------------------

class Room {
    var table: Table?
}

class Table {
    var numberOfLegs = 4
}

let room = Room()
room.table?.numberOfLegs == 4

room.table = Table()
room.table?.numberOfLegs == 4
print(room.table)

// -------------------------------------------------------------------------------
// Defining Model Classes for Optional Chaining
// -------------------------------------------------------------------------------