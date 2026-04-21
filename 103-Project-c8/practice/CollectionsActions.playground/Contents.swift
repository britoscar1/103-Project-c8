import UIKit

print("""
COLLECTIONS:
1. Array -> Ordered, allows duplicates
2. Set -> Unordered, no duplicates
3. Dictionary -> Unordered, key-value pairs.
""")


// 1. CREATE OR INITIALIZE

var fruitsArray: [String] = ["Banana", "Apple", "Orange"]
var fruitsSet: Set<String> = ["Banana", "Apple", "Orange"]
var fruitsDictionary: [String:String] = [
    "Banana" : "Yellow",
    "Apple" : "Red",
    "Orange" : "Orange"
]

print("\n---CREATE---")
print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary", fruitsDictionary)

//2. ADD ELEMENTS

// Array -> append or insert
fruitsArray.append("Mango")

// Set -> Insert
fruitsSet.insert("Mango")

//Dictionary -> assing  new key-value
fruitsDictionary["Mango"] = "Yellow"

print("\n---ADD---")
print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary", fruitsDictionary)

// 3. DELETE ELEMENTS

// Array -> remove by position
fruitsArray.remove(at: 0)

// Set -> remove by element name
fruitsSet.remove("Banana")

// Dictionary -> remove by key
fruitsDictionary.removeValue(forKey: "Banana")

print("\n---DELETE---")
print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary", fruitsDictionary)


// 4. Search for an element
print("\n---SEARCH---")
print("Array contains Apple? \(fruitsArray.contains("Apple"))")
print("Set contains Appple \(fruitsSet.contains("Apple"))")
print("Dictionary contains Apple? \(fruitsDictionary.keys.contains("Apple"))")


// 5. LOOP/TRAVEL COLLECTION
print("\n---LOOP---")

print("\nArray\n")
for fruit in fruitsArray{
    print(fruit)
}
print("\nSet\n")

for fruits in fruitsSet{
    print(fruits)
}

print("\nDictionary\n")

for (fruit,color)  in fruitsDictionary{
    print("\(fruit)")
}

//6. SORTING ELEMENTS
print("---SORT---")
print("Array sorted ascending", fruitsArray.sorted(by: <))
print("Set sorted ascending: ", fruitsSet.sorted(by: <))

let sortedByKey = fruitsDictionary.sorted{ $0.key < $1.key}
let sortedByValue = fruitsDictionary.sorted{ $0.value < $1.value }

print("Sorted by key: ", sortedByKey)
print("Sorted by value: ", sortedByValue)


 
