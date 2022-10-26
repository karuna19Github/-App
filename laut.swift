//
//  laut.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct laut: View {
    @Binding var showlaut: Bool
    @State private var showhome = false
    @State private var showlaut1 = false
    @State private var showlaut2 = false
    @State private var showlaut3 = false
    
    var body: some View {
        VStack(spacing:30){
          
        Text("Best places to dive in Indonesia ")
                 .foregroundColor(red2)
                 .fontWeight(.bold)
                 .font(.system(size: 40))
                 .padding(.top,5)
            .padding(.bottom,15)
            
            HStack{
                
                Image(systemName: "globe")
                    .foregroundColor(.blue)
                   
            Link("best scuba diving spots in Indonesia ",
                 destination: URL(string: "https://www.bluewaterdivetravel.com/best-diving-in-indonesia")!)
                .font(.system(size: 16))
                .foregroundColor(.blue)
                
                Spacer()
            }
        }
      
        VStack{
            ScrollView {
                ZStack{
                    Rectangle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.black)
                        .frame(width: 305, height: 200)
            Button (action: {showlaut1 = true}, label:
                        { Image("lembongan1")
                            .resizable()
                           .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        }).sheet(isPresented: $showlaut1) { laut1(showlaut1: .constant(true))}
                }
                ZStack{
                    Rectangle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.black)
                        .frame(width: 305, height: 200)
                Button (action: {showlaut2 = true}, label:
                            { Image("raja ampat-1")
                                .resizable()
                               .frame(width: 300, height: 200, alignment: .center)
                                
                            }).sheet(isPresented: $showlaut2) {laut2(showlaut2: .constant(true))}
                }
                ZStack{
                    Rectangle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.black)
                        .frame(width: 305, height: 200)
                Button (action: {showlaut3 = true}, label:
                            {ZStack {
                                
                                Image("wakatobi-1")
                                .resizable()
                               .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               .overlay(Text("Wakatobi")
                                                .fontWeight(.light)
                                                .font(.system(size: 50))
                                                .padding(.bottom, 20)
                                                .offset(x: 30, y: 0))
                                    .foregroundColor(.white)
                            }
                            }).sheet(isPresented: $showlaut3) {laut3(showlaut3: .constant(true))}
                }
               
           
            }
   
    }
    }
}

struct laut_Previews: PreviewProvider {
    static var previews: some View {
        laut(showlaut: .constant(true))
    }
}
