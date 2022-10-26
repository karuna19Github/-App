//
//  ContentView.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
           
            
        TabView {
            home( showhome: .constant(true))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
            book( showbook: .constant(true))
                .tabItem {
                    Image(systemName: "text.book.closed")
                    Text("Book")
                }
           
            
            top( showtop: .constant(true))
                .tabItem {
                    Image(systemName: "hand.thumbsup")
                    Text("Top 3")
                }
                
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        ContentView()
            .environment(\.colorScheme, .dark)
        }
        
    }
}
