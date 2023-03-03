//
//  LaunchScreens.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 01.03.2023.
//

import SwiftUI


struct LaunchScreens: View {
    @State var Asss = false
    @Binding var screen:String
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Button {
                        screen = "LogIn"

                    } label: {
                        VStack{
                            if (Asss == false) {
                                Text("Пропустить")
                                    .frame(width: 120, height: 20)
                                    .foregroundColor(.blue)
                            } else {
                                Text("Завершить")
                                    .frame(width: 120, height: 20)
                                    .foregroundColor(.blue)
                            }
                            Spacer()
                        }
                    
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        VStack{
                            Image("shapes")
                                .frame(width: 168, height: 164)
                            Spacer()
                        }
                    }


                }
            }
            TabView{
                VStack{
                    VStack{
                    Text("Анализы")
                        .foregroundColor(.green)
                        .font(.system(size: 15))
                        Spacer()
                    Text("Экспресс сбор и получение проб")
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                        Spacer()
                        HStack{
                  
                            Button {
                                
    
                            } label: {
                                Image("Ellipse-act")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                               
                            }
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                            }
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                            }
                            
                    }
                        Spacer()
                    }
                    Spacer()
                    VStack{
                        Image("Illustration")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width/1.2, height: 360)
                    }
                    .onAppear {
                        Asss = false
                    }
                }
                VStack{
                    VStack{
                    Text("Уведомления")
                        .foregroundColor(.green)
                        .font(.system(size: 15))
                        Spacer()
                    Text("Вы быстро узнаете о результатах")
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                        Spacer()
                        HStack{
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                            }
                            Button {
                                
                            } label: {
                                Image("Ellipse-act")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    .frame(width: 15, height:15 )
                            }
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                   
                                    .frame(width: 15, height:15 )
                            }
                            
                        }
                        Spacer()
                    }
                    Spacer()
                    VStack{
                        Image("Illustration2")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width, height: 360)
                    }
                    .onAppear {
                        Asss = false
                    }
                }
                VStack{
                    VStack{
                    Text("Мониторинг")
                        .foregroundColor(.green)
                        .font(.system(size: 15))
        
                        Spacer()
                    Text("Наши врачи всегда наблюдают\n за вашими показателями здоровья")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 10))
                        Spacer()
                        HStack{
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                            }
                            Button {
                                
                            } label: {
                                Image("Ellipse")
                                    .resizable()
                                    .frame(width: 15, height:15 )
                            }
                            Button {
                        
                            } label: {
                                Image("Ellipse-act")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    .frame(width: 15, height:15 )
                            }
                            
                        }
                        Spacer()
                    }
                    Spacer()
                    VStack{
                        Image("Illustration3")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width, height: 360)
                    }
                    .onAppear {
                        Asss = true
                    }
                }
            
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.6)
        }
    }
}

