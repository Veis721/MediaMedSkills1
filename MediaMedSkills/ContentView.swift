//
//  ContentView.swift
//  MediaMedSkills
//
//  Created by bnkwsr1 on 01.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var screen = "LogIn"
    var body: some View {
        VStack{
            if (screen == "LaunchScreen") {
                LaunchScreen(screen:$screen)
            } else if (screen == "LaunchScreens"){
                LaunchScreens(screen:$screen)
            }
            else if (screen == "LogIn"){
                LogIn(screen:$screen)
            }     else if (screen == "RegIn"){
                RegIn(screen:$screen)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
