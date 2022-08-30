//
//  MainView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Feed")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            PlayerView()
                .tabItem{
                    Image(systemName: "music.note")
                    Text("Player")
                }
            VideoView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
            RecorderView()
                .tabItem{
                    Image(systemName: "mic.fill")
                    Text("Recorder")
                }
        }
    }
}


struct TitleModifier: ViewModifier {
    
    let font = Font.system(.largeTitle, design: .serif).weight(.heavy)
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(.accentColor)
    }
}

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.footnote, design: .serif))
            .foregroundColor(.gray).opacity(0.8)
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 11")
    }
}



