import UIKit
struct Book{
    var name: String
    var releaseYear: Int?
    //?= Optional
}
let nameOne = Book(name: "The Psicoanalist", releaseYear: 2003)
let nameTwo = Book(name: "The Psicoanalist II", releaseYear: 0)
let other = Book(name: "The bible", releaseYear: 0)
//print(nameOne.releaseYear)

if nameOne.releaseYear != nil{
    print(nameOne.releaseYear)
}
//Método de desenvolvimiento forzado, haya o no algo lo saca, si no lo hay se truena el programa

//let desenvuelta = nameOne.releaseYear!
//!= te juro que hay algo
//print(desenvuelta)

//Método de desenvolvimiento Guard Let
if let yesHayAlgo = nameOne.releaseYear {
print(yesHayAlgo)
} else{
    print("NO hay, NO existe")
}
func unwrapp() {
guard let eureca = nameOne.releaseYear else {
 return
}
    print("No hay, NO existe")
}
unwrapp()
/* para comprobar solo si hay o no:
 if let _ = nameOne.releaseYear {
} else{
}*/

