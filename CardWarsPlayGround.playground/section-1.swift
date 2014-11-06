// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    
    var name = "Holder Name"
    
    init(){
        println("I am a God")
    }
    
    func Walk (){
        println("I'm Walking")
    }

}


var p1 = Person()
p1.name = "Bruce"
p1.Walk()

class PeoplePerson : Person{
    
    override init(){
        super.init()
        println("I am a talking god")
    }
    
    func Converse(){
        println("picking up chicks")
    }
    
    override func Walk(){
        println("peeps don't need walking")
    }
    
    
}

var p2 = PeoplePerson()
p2.name = "Slomann"
p2.Walk()
p2.Converse()



