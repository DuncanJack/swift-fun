// -------------------------------------------------------------------------------
// ARC in Action
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


// -------------------------------------------------------------------------------
// Strong Reference Cycles Between Class Instances
// -------------------------------------------------------------------------------

class Man {
    var woman: Woman?
    deinit {
        print("man.deinit")
    }
}

class Woman {
    var man: Man?
    deinit {
        print("woman.deinit")
    }
}

var man:Man? = Man()
var woman: Woman? = Woman()
man?.woman = woman
woman?.man = man

// Need this line to break the strong reference cycle
man?.woman = nil

man = nil
woman = nil