//: Playground - Example of Type Infernce from
// INtroduction to Swift from WWDC 2014
// https://developer.apple.com/videos/wwdc/2014/
import UIKit

//explicit type declarations
let languageName: String = "Swift"
var SwiftVersion: Double = 1.3
let yearIntroduced: Int = 2014
let isFaster: Bool = true

//use alt-click on a variable name to see what type it is

//Using Type Inference in Swift
let languageName2 = "Swift"   //String
var SwiftVersion2 = 1.3       //Double
let yearIntroduced2 = 2014    //Int
let isFasterToWrite = true    //Bool


enum intEnumType: Int {
    case Apple
    case Pear
}

//what types are these variables:
var myExplicitType: intEnumType = intEnumType (rawValue: 1)! //Pear
var simpleVar = 1  //this is an int and wont work with intEnumType



//USAGE
func fruitSelectedSwitchMethod_v2(fruitOption: intEnumType) {
    
    var fruitName_V2: String = ""
}

//fruitSelectedSwitchMethod_v2(simpleVar)