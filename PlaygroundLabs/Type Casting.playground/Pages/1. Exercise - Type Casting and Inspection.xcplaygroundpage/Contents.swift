/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
 let mixCollection : [Any] = [1.0, 2, "three", true, 4.5]
print(mixCollection)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 for element in mixCollection {
    if let intValue = element as? Int {
        print("The integer has a value of \(intValue)")
    } else if let doubleValue = element as? Double {
        print("The double has a value of \(doubleValue)")
    } else if let stringValue = element as? String {
        print("The string is \(stringValue)")
    } else if let boolValue = element as? Bool {
        if boolValue {
            print("The boolean is true")
        } else {
            print("The boolean is false")
        }
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 let mixDictionary : [String : Any] = ["pi" : 3.14, "answer" : 42, "name" : "Ajay", "isStudent" : true, "favoriteNumber" : 13]
for (key, value) in mixDictionary {
    print("\(key): \(value)")
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total : Double = 0
for (_, value) in mixDictionary {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if value is String {
        total += 1
    } else if let boolValue = value as? Bool {
        total += boolValue ? 2 : -3
    }
}
print(total)


/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
