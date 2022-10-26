//
//  keragaman.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct keragaman: View {
    @Binding var showkeragaman: Bool
    
    @State private var showkeragaman1 = false
    @State private var showkeragaman2 = false
    @State private var showkeragaman3 = false
    @State private var showhome = false
    var body: some View {
    
        Text("Unity in Diversity ")
            .foregroundColor(red2)
            .fontWeight(.bold)
            .font(.system(size: 40))
            .padding(.top,5)
            .padding(.bottom,15)
        
        
        List{
            Button (action: {showkeragaman1 = true}, label:
                        {HStack{
                            Image("pakaian")
                                .resizable()
                                .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Traditional clothes")
                                .font(.system(size: 20))
                                .foregroundColor(red6)
                        }
                        }).sheet(isPresented: $showkeragaman1) {keragaman1(showkeragaman1: .constant(true))}
            Button (action: {showkeragaman2 = true}, label:
                        {HStack{
                            Image("3")
                                .resizable()
                                .frame(width: 200, height: 150, alignment: .center)
                            Text("Music of Indones")
                                .font(.system(size: 20))
                                .foregroundColor(red6)
                        }
                        }).sheet(isPresented: $showkeragaman2) {keragaman2(showkeragaman2: .constant(true))}
            Button (action: {showkeragaman3 = true}, label:
                        {HStack{
                            Image("2")
                                .resizable()
                                .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Traditional Indonesian Dance")
                                .font(.system(size: 20))
                                .foregroundColor(red6)
                        }
                        }).sheet(isPresented: $showkeragaman3) {keragaman3(showkeragaman3: .constant(true))}
            
            
            
            
        }
    }
}
struct keragaman_Previews: PreviewProvider {
    static var previews: some View {
        keragaman(showkeragaman: .constant(true))
    }
}
