//
//  RegIn.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 02.03.2023.
//

import SwiftUI
import Alamofire
import CITPincode
struct RegIn: View {
    @State var kod = ""
    @State var maxLength = 4
    @State var code:String = ""
    @State var timeRemaining = 10
   let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @Binding var screen:String
    var body: some View {
        VStack{
            VStack{
                Text("Введите код из E-mail")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                HStack{
                    TextField("", text: $kod)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: 55, height: 55)
                        )
                        .frame(width: 55, height: 55)
                    TextField("", text: $kod)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: 55, height: 55)
                        )
                        .frame(width: 55, height: 55)
                    
                    TextField("", text: $kod)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: 55, height: 55)
                        )
                        .frame(width: 55, height: 55)
                    
                    TextField("", text: $kod)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: 55, height: 55)
                        )
                        .frame(width: 55, height: 55)
                    
                    
                }
                if (timeRemaining == 0 ){
                    Button {
                        
                    } label: {
                        Text("Отправить код")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.blue)
                    }
                }
                else {
                    Text("Отправить код повторно можно \n будет через  \(timeRemaining) секунд")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }
   
            VStack{
                
            }
        }
        .onReceive(timer) { _ in
                       if timeRemaining > 0 {
                           timeRemaining -= 1
                       }
                   }
    }
}
}

