// DELEGATION: you ask someone else to do the work for you

// when one object gives a task to another object and expects it to follow some rules

protocol DoChores {
    func doChores()
    
}

struct Parent{
    var delegate: DoChores? // type- not child? why?
    
}

struct Child: DoChores{ // child should act as a Delegate for parent
    func doChores(){
        print("CHILD: Cleaning is done")
    }
}

struct Maid: DoChores{
    func doChores() {
        print("MAID: Cleaning is done")
    }
}
var child = Child()
var maid = Maid()
var parent = Parent(delegate: child)

parent.delegate?.doChores()

parent = Parent(delegate: maid)

parent.delegate?.doChores()
