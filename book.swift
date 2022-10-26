//
//  book.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct book: View {
    @Binding var showbook: Bool
    @State private var showtop = false
    @State private var showhome = false
    @State private var showgunung = false
    @State private var showlaut = false
    @State private var showmakanan = false
    @State private var showkeragaman = false
    var body: some View {
        VStack{
        Text("All About Indonesia ")
            .foregroundColor(red2)
                 .fontWeight(.bold)
                 .font(.system(size: 35))
                 .padding(.top,5)
                 .padding(.bottom,10)
            
            List{
                Button (action: {showlaut = true}, label:
                        { Text("Best places to dive in Indonesia ")
                            .foregroundColor(red6)
                            
                        }).sheet(isPresented: $showlaut) {
                             laut(showlaut: .constant(true))}
                
                Button (action: {showgunung = true}, label:
                            {Text("Mountains in Indonesia")
                                .foregroundColor(red6)
                                
                            }).sheet(isPresented: $showgunung) {
                                gunung(showgunung: .constant(true))}
                Button (action: {showkeragaman = true}, label:
                            {Text("unity in diversity in indonesia")
                                .foregroundColor(red6)
                                
                            }).sheet(isPresented: $showkeragaman) {
                                keragaman(showkeragaman: .constant(true))}
                Button (action: {showmakanan = true}, label:
                            {Text("Indonesian Foods")
                                .foregroundColor(red6)
                                
                            }).sheet(isPresented: $showmakanan) {
                               makanan(showmakanan: .constant(true))}
                
               
        }
        }
    }
}

struct book_Previews: PreviewProvider {
    static var previews: some View {
        book(showbook: .constant(true))
    }
}
