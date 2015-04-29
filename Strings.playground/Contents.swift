//: Playground - noun: a place where people can play

//import UIKit // Required to use NSString

// Initializing an Empty String
var emptyString1 = ""           // assign an empty string literal
var emptyString2 = String()     // initializer syntax

// Notably, these are equal
if emptyString1 == emptyString2 {
    println("They're equal! \n")
} else {
    println("Nope")
}

// Initializing with Values
let myName = "Joaquin"
println(myName)

// Strings are just a collection of characters
for character in "Dog!🐶" {
    println(character)
}

// WORKING WITH STRINGS
// Concatenation
var firstString = "Hello"
var secondString = "World"
var message = "\n" + firstString + " " + secondString + "! \n"
println(message)


// Appending
var message1 = "Hello "
message1 += "there"                      // Addition assignment operator
println(message1)
var exclamationMark: Character = "!"
message1.append(exclamationMark)         // append() method
println(message1)

// String Interpolation
var length = 7
var width = 5
println("The rectangle has a length of \(length) and a width of \(width), giving it an area of \(length * width).")

println("\n")

// Special Characters in String Literals
println("\0 Null came first")               // Null Character
println("\\ backslash")                     // Backslash
println("\t this is tabbed")                // Horizontal tab
println("carriage return \r")               //
println("\n line feed before")              // Line feed
println("\"")                               // Double Quote
println("\'")                               // Single Quote

// Unicode Scalars
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

// Extended Grapheme Clusters
// The letter é is represented as a single Swift Character value that represents an extended grapheme cluster. In the first case, the cluster contains a single scalar; in the second case, it is a cluster of two scalars:
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by ́

// Counting "Perceived" Characters
var word = "cafe"
println("The number of characters in the word \(word) is \(count(word))")
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
println("The number of characters in the word \(word) is \(count(word))")

println("\n")

// COMPARISONS (Character Equality, Prefix Equality, Suffix Equality)

// Character equality == (or inequality !=)
//  Two String values (or two Character values) are considered equal if their extended grapheme clusters are canonically equivalent. Extended grapheme clusters are canonically equivalent if they have the same linguistic meaning AND appearance, even if they are composed from different Unicode scalars behind the scenes.

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    println("These two strings are considered equal")
}
        // Notably, there are extended grapheme clusters that have the same appearance, but do NOT have the same linguisting meaning, so they are not considered canonically equivalent

println("\n")

// Prefix Equality using the hasPrefix(_:) method
let romeoAndJuliet = [
"Act 1 Scene 1: Verona, A public place",
"Act 1 Scene 2: Capulet's mansion",
"Act 2 Scene 1: Outside Capulet's mansion",
"Act 2 Scene 2: Capulet's orchard"]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        ++act1SceneCount
    }
}
println("There are \(act1SceneCount) scenes in Act 1 \n")

// Suffix Equality using the hasSuffix(_:) method
var capuletsMansion = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++capuletsMansion
    }
}
println("There are \(capuletsMansion) scenes in Capulet's Mansion \n")



// STRING MUTABILITY
var variableString = "Horse"        // mutable
variableString += " and carriage"

let constantString = "People"       // constant
//constantString += "can change"      // compile error

// Case conversion
var stringToConvert = "Let it be beautiful"
stringToConvert = stringToConvert.uppercaseString
stringToConvert = stringToConvert.lowercaseString

// ACCESSING and MODIFICATION

// String Indexes
let greeting = "Hello Friends"
println("The string starts at index \(greeting.startIndex)")
println("The string ends at index \(greeting.endIndex)")

// Use Subscript syntax to access a character at a specific index
greeting[greeting.startIndex]                   // The 1st character
let index = advance(greeting.startIndex, 6)
greeting[index]


// Attempting to access an index outside of a string’s range will trigger a runtime error.
//greeting.endIndex.successor()                   // Runtime error

// Inserting a Character at a Specified Index
var welcome = "Hello"
welcome.insert("!", atIndex: welcome.endIndex)  // insert method

// Splice to insert another string at a specified index
welcome.splice(" friends", atIndex: welcome.endIndex.predecessor()) // splice

// Remove a Character at a Specified Index
welcome.removeAtIndex(welcome.endIndex.predecessor())
println(welcome)






