// -------------------------------------------------------------------------------
// Deinitializers in Action
// -------------------------------------------------------------------------------

class Garage {
    private static var isCarInGarage = false
    static func driveOut(){
        isCarInGarage = false
        print("The car is not in the garage")
    }
    static func driveIn(){
        isCarInGarage = true
        print("The car is in the garage")
    }
}

class Car {
    init() {
        Garage.driveIn()
    }
    deinit{
        Garage.driveOut()
    }
}

var car: Car? = Car()
car = nil