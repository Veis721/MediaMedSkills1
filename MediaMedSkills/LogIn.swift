//
//  LogIn.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 01.03.2023.
//

import SwiftUI

struct LogIn: View {
    @Binding var screen:String
    @State var email = ""
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image("Emojies")
                Text("Добро пожаловать!   s ")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 20))
                }
             
                 Text("Войдите, чтобы пользоваться функциями\n приложения")
                    .foregroundColor(.black)
                    .padding(.top,20)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 15))
            }
            .padding(.top,40)
            VStack{
                Spacer()
                HStack{
                    Text("Вход по E-mail")
                        .padding(.leading,20)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                    Spacer()
                        }
                TextField("Email", text: $viewModel.email)
                    .foregroundColor(.black)
                            .padding(.leading,30)
                            .background(RoundedRectangle(cornerRadius: 8)
                                .frame(width: UIScreen.main.bounds.width/1.1, height: 40)
                                .foregroundColor(Color(.gray))
                                .opacity(0.2))
                if (viewModel.email == "") {
                    Text("Далее")
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: 55)
                            .foregroundColor(.blue)
                            .opacity(0.2))
                        .padding(.top,50)
                }
                else {
                    Button {
                        viewModel.getLogin {
                            screen = "RegIn"
                        } error: {
                            
                        }

                    } label: {
                        Text("Далее")
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 8)
                                .frame(width: UIScreen.main.bounds.width/1.1, height: 55)
                                .foregroundColor(.blue))
                            .padding(.top,50)
                    }
                }
                Spacer()
            }
                }
        Spacer()
            VStack{
                Text("Или войдите с помощью")
                    .foregroundColor(.gray)
                    .padding(.bottom,25)
                Button {
                    //ggg
                } label: {
                    Text("Войти с Яндекс")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .background(RoundedRectangle(cornerRadius: 8)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: 55)
                            .foregroundColor(.black)
                            .opacity(0.04))
                }
            }
            .padding(.bottom,45)
        }
    }

