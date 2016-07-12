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
// Resolving Strong Reference Cycles Between Class Instances
// -------------------------------------------------------------------------------

// Weak References

class Man {
    var woman: Woman?
    deinit {
        print("man.deinit")
    }
}

class Woman {
    weak var man: Man?  // weak, now unowned, because a man may or may not have a woman
    deinit {
        print("woman.deinit")
    }
}

var man:Man? = Man()
var woman: Woman? = Woman()
man?.woman = woman
woman?.man = man

man = nil
woman = nil


// Unowned Reference

class Parent {
    var child: Child?
    deinit { print("parent.deinit") }
}

class Child {
    unowned let parent: Parent  // unowned, not weak, because a child always has a parent
    init(parent: Parent) {
        self.parent = parent
    }
    deinit { print("child.deinit") }
}

var parent: Parent?
var child: Child?

parent = Parent()
child = Child(parent:parent!)
parent?.child = child

parent = nil
child = nil

// Unowned References and Implicitly Unwrapped Optional Properties

class Employer {
    let name: String
    var employee: Employee! // So Employer is fully initialized as soon as name is set, and self can be passed to Employee.
    init(name: String, employeeName: String){
        self.name = name
        self.employee = Employee(name: employeeName, employer: self)
    }
}

class Employee {
    let name: String
    unowned let employer: Employer
    init(name: String, employer: Employer) {
        self.name = name
        self.employer = employer
    }
}

var employer = Employer(name: "E", employeeName: "Phil")
print("\(employer.name)'s employee is called \(employer.employee.name)")

// -------------------------------------------------------------------------------
// Strong Reference Cycles for Closures
// -------------------------------------------------------------------------------

class Calculator {
    var prefix: String?
    lazy var calculate: (a:Int, b:Int) -> String = {
        return ("\(self.prefix!) \($0 + $1)")
    }
    init(prefix:String){
        self.prefix = prefix
    }
    deinit{
        print("Calculator.deinit")
    }
}

// A strong reference cycle exists between the instance and the closure (also an instance)
var calculator: Calculator? = Calculator(prefix:"Addition: ")
print(calculator!.calculate(a: 1,b: 2))
calculator = nil

// -------------------------------------------------------------------------------
// Resolving Strong Reference Cycles for Closures
// -------------------------------------------------------------------------------

// Weak and Unowned References

class MyCalculator {
    var prefix: String?
    lazy var calculate: (a:Int, b:Int) -> String = {
        // Capture self as an unowned reference rather than a strong reference
        [unowned self] in
        return ("\(self.prefix!) \($0 + $1)")
    }
    init(prefix:String){
        self.prefix = prefix
    }
    deinit{
        print("Calculator.deinit")
    }
}

// A strong reference cycle exists between the instance and the closure (also an instance)
var myCalculator: MyCalculator? = MyCalculator(prefix:"Addition: ")
print(myCalculator!.calculate(a: 1,b: 2))
myCalculator = nil





















