//
//  ContentView.swift
//  Task
//
//  Created by Naveen Singh on 21/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PolicyView()
                .tabItem {
                    Label("Policy", systemImage:"book")
                }
            Text("Demographics")
                .tabItem {
                    Label("Claims", systemImage:"ticket")
                }
            Text("Demographics")
                .tabItem {
                    Label("Profile", systemImage:"person")
                }
        }
    }
}

#Preview {
    ContentView()
}
