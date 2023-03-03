//
//  ViewModel.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 02.03.2023.
//

import Foundation
import Alamofire
class ViewModel:ObservableObject{
    @Published var email = "name@domenname.ru"
    @Published var passsword = "qwerty"
    @Published var code = "qwerty"
    @Published var login = "Jonh"
    @Published var error = ""
    @Published var error1 = ""
    @Published var token = ""
    @Published var phone1 = ""
    @Published var messages = ""
    @Published var version:[String] = []
    @Published var Disheds:[Dishes] = []
    @Published var search1 = ""
 func getLogin(success:@escaping () -> Void,error:@escaping () -> Void) {
 error1 = ""
 token = ""
     if (email == ""){
         error()
         error1 = "Введите значение"
         return()
     }
  let emailReglax = "[a-z0-9]+@[a-z0-9]+\\.[a-z]{1,3}"
    let emailPregar = NSPredicate(format: "SELF MATCHES %@" , emailReglax)
     var isInvalidEmail = emailPregar.evaluate(with: email)
    if (!isInvalidEmail){
    error1 = "invalid email"
    error()
    return()
   }
    var headers = HTTPHeaders()
     headers.add(name: "email", value: "\(email)")
    AF.request("https://medic.madskill.ru/api/sendCode", method: .post, headers: headers)
         .responseDecodable(of:Email.self){res in
             debugPrint(res)
             self.messages = res.value?.messages ?? ""
             success()
      success()
  }
         .responseString{res in
             self.error1 = res.value ?? ""
             error()
             
         }
 }
    func getRegister(success:@escaping () -> Void,error:@escaping () -> Void){
        let RegisterStruct = Register(email: email, password: passsword, login: login)
        error1 = ""
        token = ""
        if (email == "" || passsword == "" || login == "" || phone1 == ""){
            error()
            error1 = "Введите значение"
            return()
        }
        let emailReglax = "[a-z0-9]+@[a-z0-9]+\\.[a-z]{1,3}"
          let emailPregar = NSPredicate(format: "SELF MATCHES %@" , emailReglax)
           var isInvalidEmail = emailPregar.evaluate(with: email)
          if (!isInvalidEmail){
          error1 = "invalid email"
          error()
          return()
         }
        AF.request("https://food.madskill.ru/auth/register", method: .post, parameters: RegisterStruct, encoder: JSONParameterEncoder.default)
            .responseDecodable(of:TokenType.self){res in
                debugPrint(res)
                success()
                
            }
    }
    func getVersion(success:@escaping () -> Void){
        AF.request("https://food.madskill.ru/dishes/version", method: .get)
            .responseDecodable(of:Version.self){res in
            debugPrint(res)
                self.version = res.value?.version ?? []
                success()
                
            }
    }
    func getDishes(success:@escaping () -> Void){
        version.forEach { vers in
            AF.request("https://food.madskill.ru/dishes?version=\(vers)", method: .get)
                .responseDecodable(of:[Dishes].self){res in
                    self.Disheds += res.value ?? []
                    success()
                }
        }
    }
}
struct Login:Codable{
    let email:String
    let password:String
}
struct TokenType:Codable {let token:Int}
struct Register:Codable{
    let email:String
    let password:String
    let login:String
}
struct Dishes:Codable {
    let dishId:String
    let category:String
    let nameDish:String
    let price:String
    let icon:String
    let version:String
}
struct Version:Codable {
    let version:[String]
}
struct Email:Codable {
    let messages:String
}

