//
//  ContentView.swift
//  Sample Project
//
//  Created by Dishant Nagpal on 17/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            Text("Home")
                .tabItem{
                    Image(systemName: "house")
                        Text("Home")
                }
            Text("Saved")
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Saved")
                }
            Text("Notification")
                .tabItem{
                    Image(systemName: "bell.fill")
                    Text("Notification")
                }
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            CartView()
                .tabItem{
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone 13 Pro Max")
    }
}



