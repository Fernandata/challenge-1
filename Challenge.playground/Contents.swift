import UIKit
import Foundation

struct User {
    let name: String
    let dob: String
    let dni: Int
    let nob: Int
    let email: String
    let sex: String
}

let users: [User] = [
    User(name: "CARLOS JOSÉ ROBLES GOMES", dob: "06/08/1995", dni: 78451245, nob: 2, email: "carlos.roblesg@hotmail.com", sex: "M"),
    User(name: "MIGUEL ANGEL QUISPE OTERO", dob: "28/12/1995", dni: 79451654, nob: 0, email: "miguel.anguel@gmail.com", sex: "M"),
    User(name: "KARLA ALEXANDRA FLORES ROSAS", dob: "15/02/1997", dni: 77485812, nob: 1, email: "karla.alexandra@hotmail.com", sex: "F"),
    User(name: "NICOLAS QUISPE ZEBALLOS VEGA", dob: "08/10/1990", dni: 71748552, nob: 1, email: "nicolas123@gmail.com", sex: "F"),
    User(name: "PEDRO ANDRE PICASSO BETANCUR", dob: "17/05/1994", dni: 74823157, nob: 2, email: "pedroandrepicasso@gmail.com", sex: "M"),
    User(name: "FABIOLA MARIA PALACIO VEGA", dob: "02/02/1992", dni: 76758254, nob: 0, email: " fabi@hotmail.com", sex: "F")
]


//Obtener dos listas más, una para hombres y otra mara mujeres e imprimir la cantidad de personas que hay en cada lista
var men = [User]()
for user in users {
    if user.sex == "M"{
        men.append(user)
    }
}

var menCount = men.count
print(menCount)

var women = [User]()
for user in users {
    if user.sex == "F" {
        women.append(user)
    }
}
var womenCount = women.count
print(womenCount)

//Obtener una lista de todas las personas que tienen más de dos hermanos
var numOfBrothers = users.filter{$0.nob >= 2}
print(numOfBrothers)

//Imprimir cada persona con este formato “Luis Inga M.” Solo primer nombre, apellido paterno completo y solo la inicial del apellido materno más un punto. *Y EN CAPITALIZE* (primera letra de cada palabra en mayúscula y todo lo demás en minúscula)
var names = [String]()
for user in users {
    names.append(user.name)
}

for name in names {
    let fullNameArr = name.components(separatedBy: " ")
    let name = fullNameArr[0].lowercased().capitalized
    let lastName = fullNameArr[2].lowercased().capitalized
    let lastName2 = fullNameArr[3].prefix(1)
    print("\(name) \(lastName) \(lastName2)")
}

//Crear usuarios a todas las personas y guardar en la lista
var emailUser = [String]()

for user in users {
    emailUser.append(user.email)
}

var emailUsers = [String]()
for eUser in emailUser {
    var delimeter = "@"
    var token = eUser.components(separatedBy: delimeter)
    emailUsers.append(token[0])
}

print(emailUsers)

