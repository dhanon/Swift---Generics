import UIKit

//func exchange(inout a: Int, inout b: Int) {
//   let temp = a
//   a = b
//   b = temp
//}
//
//var numb1 = 100
//var numb2 = 200
//
//print("Before Swapping values are: \(numb1) and \(numb2)")
//exchange(&numb1, &numb2)
//print("After Swapping values are: \(numb1) and \(numb2)")


//Generic Functions
func exchange<T>(_ a: inout T, _ b: inout T) {
   let temp = a
   a = b
   b = temp
}

var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
exchange(&numb1, &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")

var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchange(&str1, &str2)
print("After Swapping String values are: \(str1) and \(str2)")


//Type Parameters

// Generic Types
struct TOS<T> {
   var items = [T]()
    
   mutating func push(item: T) {
      items.append(item)
   }
    
   mutating func pop() -> T? {
      return items.popLast()
   }
}

var tos = TOS<String>()
tos.push(item: "Swift 4")
print(tos.items)

tos.push(item: "Generics")
print(tos.items)

tos.push(item: "Type Parameters")
print(tos.items)

tos.push(item: "Naming Type Parameters")
print(tos.items)

if let deletetos = tos.pop() {
   print("Popped item: \(deletetos)")
} else {
   print("The stack is empty.")
}

//Generic Type and Extending a Generic Type
//struct TOS<T> {
//   var items = [T]()
//   mutating func push(item: T) {
//      items.append(item)
//   }
//
//   mutating func pop() -> T {
//      return items.removeLast()
//   }
//}
//
//var tos = TOS<String>()
//tos.push(item: "Swift 4")
//print(tos.items)
//
//tos.push(item: "Generics")
//print(tos.items)
//
//tos.push(item: "Type Parameters")
//print(tos.items)
//
//tos.push(item: "Naming Type Parameters")
//print(tos.items)
//
//extension TOS {
//   var first: T? {
//      return items.isEmpty ? nil : items[items.count - 1]
//   }
//}
//
//if let first = tos.first {
//   print("The top item on the stack is \(first).")
//}

//Type Constraints
// A generic function with a type constraint
func show<T: CustomStringConvertible>(item: T) {
   print(item.description)
}

let str = "Welcome Swift"
let number = 22

show(item: str)
show(item: number)


