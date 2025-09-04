// 6 aug, 2025

// PROTOCOLS are set of rules
//  you want whosoever adopt your method that should follow those rules

// what does a confirming protocol means - when u follow all the rules eg for customstringconvertible you add description u are confirming
// what does a adoptiong protocol means- whenever u write with colon you are adopting a protocol

// CustomStringConvertible - wherever we want to debug something it makes debugging easier
class  Shoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    var description: String{
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}
let myShoe = Shoe(color: "Black", size: 12, hasLaces:true)
print(myShoe)



// ----------------------------------------------------------------------------------

// practice

// struct without CustomStringConvertible
struct Book{
    let title: String
    let author: String
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}
let myBook = Book(title: "1975", author: "John")
print(myBook)


// struct with CustomStringConvertible
struct Book1: CustomStringConvertible{
    let title1: String
    let author1: String
    init(title1: String, author1: String){
        self.title1 = title1
        self.author1 = author1
    }
    var description: String{
        return "Book(title: \(title1), author: \(author1))"
    }
    
}
let myBook1 = Book1(title1: "1975", author1: "John")
print(myBook1)

// class without CustomStringConvertible
class Book2{
    let title2: String
    let author2: String
    init(title2: String, author2: String) {
        self.title2 = title2
        self.author2 = author2
    }
}
let myBook2 = Book2(title2: "1975", author2: "John")
print(myBook2)


// class with CustomStringConvertible
class Book3: CustomStringConvertible{
    let title3: String
    let author3: String
    init(title3: String, author3: String){
        self.title3 = title3
        self.author3 = author3
    }
    var description: String{
        return "Book(title: \(title3), author: \(author3))"
    }
    
}
let myBook3 = Book3(title3: "1975", author3: "John")
print(myBook1)



// --------------------------------------------------------------------------

// Equatable used when you want to compare two instances

//struct Employee{
//    let firstname: String
//    let lastname :String
//    let phoneNumber: String
//}
//let currentEmp = Employee1(firstname: "abc", lastname: "xyz", phoneNumber: "123")
//let selectedEmp = Employee2(firstname: "abc", lastname: "xyz", phoneNumber: "123")
//if currentEmp == selectedEmp{
//    return
//}

//
//struct Employee: Equatable{ // confirming a protocol : (colon) and name
//    let firstname: String
//    let lastname :String
//    let phoneNumber: String
//    
////    static func == (lhs: Employee, rhs: Employee) -> Bool{ // first instance = lhs, right instance = rhs
////        return true // compares everything
////    }
//    
//    // to compare first and last name
//    static func == (lhs: Employee, rhs: Employee) -> Bool{
//        return lhs.firstname == rhs.firstname && lhs.lastname == rhs.lastname // if this is not mentioned toh sbkuch compare krega
//    }
//    
//    
//    
//}

// equatable by default checks each and every property of both instances. thats why when u just confirm it without adding a static func it will not give any suggestion to add a static func
// used for filtering the array or unit test cases


// prac
//struct Books: Equatable{
//    let title: String
//    let author: String
//    init(title: String, author: String) {
//        self.title = title
//        self.author = author
//    }
//    static func == (lhs: Books, rhs: Books) -> Bool{
//        return true
//    }
//    
//}
//let myBooks1 = Books(title: "1975", author: "John")
//let myBooks2 = Books(title: "1975", author: "john")
//print(myBooks1 == myBooks2)
//
//if (myBooks1 == myBooks2){
//    print("same")
//} else{
//    print("not same")
//}

// what is the use of static word here? if we will not use this what will happen? why mention static before func?
//says func belongs to type struct not the instance


// kuch bhi compare krna hai usi ka opertor func k baad lgega
//static func <(lhs: Employee, rhs: Employee)-> Bool{
//    return lhs.lastname < rhs.lastname
//}

struct Employee: Equatable, Comparable { // equatable works with == in comparable we are comparing
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    static func == (lhs: Employee, rhs: Employee) -> Bool{
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
    }

    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

let employee1 = Employee(firstName: "Ben", lastName: "Stott",
jobTitle: "Front Desk", phoneNumber: "415-555-7767")
let employee2 = Employee(firstName: "Vera", lastName: "Carr",
jobTitle: "CEO", phoneNumber: "415-555-7768")
let employee3 = Employee(firstName: "Glenn", lastName: "Parker",
jobTitle: "Senior Manager", phoneNumber: "415-555-7769")
let employee4 = Employee(firstName: "Stella", lastName: "Lee",
jobTitle: "Accountant", phoneNumber: "415-555-7771")
let employee5 = Employee(firstName: "Daren", lastName: "Estrada",
jobTitle: "Sales Lead", phoneNumber: "415-555-7772")

let employees = [employee1, employee2, employee3, employee4, employee5]
let sortedEmployees = employees.sorted(by: <)
for employee in sortedEmployees{
    print(employee)
}




struct Books: Equatable{
    var title: String
    var author: String
    var review: Int
    
    static func < (lhs: Books, rhs: Books) -> Bool{
        return true
    }
    
}
let myBooks1 = Books(title: "1975", author: "John", review: 2)
let myBooks2 = Books(title: "1975", author: "john", review: 3)
let books = [myBooks1, myBooks2]
let sortedBooks = books.sorted(by: <)
for book in sortedBooks{
    print(book)
}
if (myBooks1 == myBooks2){
    print("same")
} else{
    print("not same")
}

//protocols as interfaces. implements



/*
 
PROBLEM STATEMENT: version tracker protocol challenge
 you are building a version tracker for a software product. a version number consists of a major and a minor int value nd should report
 - print a user friendly version string
 - comparing versions to determine which one is newer
 - sorting a collection of versions

*/

struct Version: CustomStringConvertible, Equatable, Comparable { // adopting protocol
    var major: Int
    var minor: Int
    
    var description: String { // confirming CustomStringConvertible protocol
        return "\(major) \(minor)"
    }
    
    static func == (lhs: Version, rhs: Version) -> Bool { // confirming Equatable protocol
        return lhs.major == rhs.major && lhs.minor == rhs.minor
    }
    
    static func < (lhs: Version, rhs: Version) -> Bool { // confirming Comparable protocol
        if lhs.major != rhs.major {
            return lhs.major < rhs.major
        } else {
            return lhs.minor < rhs.minor
        }
    }
    
}

let v1 = Version(major: 1, minor: 4)
let v2 = Version(major: 1, minor: 5)
print(v1 < v2)
print(v1 == v2)
print(v2.description)


