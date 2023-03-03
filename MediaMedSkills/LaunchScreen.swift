//
//  LaunchScreen.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 01.03.2023.
//

import SwiftUI

struct LaunchScreen: View {
    @Binding var screen:String
    var body: some View {
        VStack{
            Image("Zastv")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+20)
        }

        
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    screen = "LaunchScreens"
                }
            }
    }
}

