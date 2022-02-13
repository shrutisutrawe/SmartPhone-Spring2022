import Cocoa

var str = "Hello, playground"
str = "Shruti"

print(str)

let intVal : Int = 5
let doubleVal : Double = 6.0
let strs : String = "Hello I am a String"
let boolValue = true


// Multiple variables at the same time + optional
var x,y,z  : Int?

var optionalVal : Int?

//Fun Stuff
let bee = "🐝"

print(bee)

print("Hello \(str)")

print("Int Maximum value = \(UInt.max)")
print("Int max value =\(Int.max)")
print()

let tupleValue = (404,"Not Found")
print(tupleValue.0)
print(tupleValue.1)
print()

let (id,status) = (200,"OK!!")
print(id)
print(status)
print()

let tripleValue = (234, "abcd", true)
print(tripleValue)
print(tripleValue.0)
print(tripleValue.1)
print(tripleValue.2)
print()

//optionals

var strName : String?
//strName = "Optional Value is initialized"
//print(strName)
print()

strName = "Shruti"
//one way of handling optional
if strName != nil{
    print(strName)
}

//another way of handling optional, no force unwrapping (!)
//let ensures no nil value

if let name = strName {
    print(name)
}

func sampleFunctionForGuard(strName : String?){
    //print the string
    
    guard  let name = strName else {return}
    print()
    print(name)
}
sampleFunctionForGuard(strName: "Shruti Sutrawe")





