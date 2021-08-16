import UIKit

//360
//Homework 3 Task 1
let north:(Double,Double)=(0,22.5)
let north_east:(Double,Double)=(22.5,67.5)
let east=count(a:north_east)
let southeast=count(a:east)
let south=count(a:southeast)
let south_west=count(a:south)
let west=count(a:south_west)
let north_west=count(a:west)
print(north)
print(north_east)
print(east)
print(southeast)
print(south)
print(south_west)
print(west)
print(north_west)
func count(a:(Double,Double))->(Double,Double){
    let alpha=a.0+45.0
    let beta=a.1+45.0
    let azik:(Double,Double)=(alpha,beta)
    return azik
}
//Homework 3 Task 2
func compassTurn(alpha:Double){
    if alpha > 1&&alpha<90{
         print("NorthEast,by clockwise ",alpha)
    }
    if alpha == 90{
         print("East ",alpha)
    }
    if alpha >= 90 && alpha < 180{
         print("SouthEast,by clockwise ",alpha)
    }
    if alpha == 180{
         print("South ",alpha)
    }
    if alpha > 180 && alpha < 270{
         print("SouthWest,by counter-clockwise ",alpha)
    }
    if alpha == 270{
         print("West ",alpha)
    }
    if alpha > 180 && alpha < 270{
         print("SouthWest,by counter-clockwise ",alpha)
    }
    if alpha >= 270 && alpha <= 360{
         print("NorthWest,by counter-clockwise ",alpha)
    }
}
compassTurn(alpha: 34)
//Homework 3 Task 3 and Task 5
struct CreditCard{
    var name:String
    var accountNumber=12134444.0
    var currentBalance:Double=23655.678866
    var ownedToBank=22334.122
    var transactions=12
    var creditLine:Double
    mutating func deletedProfile(info:String) {
        guard  info.elementsEqual(name) else {return}
        creditLine=0
        accountNumber=0
        if ownedToBank > currentBalance{
            print("You owned to Bank ",currentBalance-ownedToBank)
        }else{
            print("Bank owned to you ",currentBalance-ownedToBank)
        }
    }
   mutating func transTootherAccount(a:Double) -> Double {
        let aza=a / 100
        return a - aza
    }
    mutating func withDraw(a:Double) {
        guard a >= currentBalance else {return}
        let const=a/100*4
        print("Precent for the transaction is: ",a / const)
    }
    mutating func payForCard(a:Double) {
        print("Now you owned: ",ownedToBank-a)
    }
}
var myAccount=CreditCard(name: "Azamat", creditLine: 100000.0)
print(myAccount.transTootherAccount(a: 234))
print(myAccount.withDraw(a: 2356))
print(myAccount.payForCard(a: 17777))
print(myAccount.deletedProfile(info: "Azamat"))


//Homework 3 Task 4
class Bancaccount{
    var holderfulllname: String
    var creditLimit: Double = 2000
    init(holdername:String) {
        self.holderfulllname = holdername
    }
}

class MixedBancAccount: Bancaccount {
    var privatebalance:Double
    init() {
        privatebalance=13456.00
        super.init(holdername: "Azamat")
    }
    func withDraw(money:Double)->Double {
        var azik:Double
        if money > privatebalance{
            azik=privatebalance+super.creditLimit
        }else{
            azik=money
        }
        print("Left on your account: ",privatebalance-money)
        return azik
    }
}
let totallinfo = MixedBancAccount()
print(totallinfo.withDraw(money: 234))


