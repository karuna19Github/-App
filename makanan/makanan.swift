//
//  makanan.swift
//  Ebook
//
//  Created by User12 on 2022/10/26.
//

import SwiftUI

struct makanan: View {
    @Binding var showmakanan: Bool
    @State private var showhome = false
    @State private var showmakanan1 = false
    @State private var showmakanan2 = false
    var body: some View {
       
        VStack(spacing:30){
        
        Text("Indonesian Foods ")
                 .foregroundColor(red2)
                 .fontWeight(.bold)
                 .font(.system(size: 40))
                 .padding(.top,5)
            .padding(.bottom,15)
        
           
            
            
            List{
            Button (action: {showmakanan1 = true}, label:
                        {HStack{
                            Image("sate")
                                .resizable()
                               .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("5 Popular Indonesian Foods")
                                .font(.system(size: 20))
                                .foregroundColor(red6)
                        }
                        }).sheet(isPresented: $showmakanan1) {makanan1(showmakanan1: .constant(true))}
            
            Button (action: {showmakanan2 = true}, label:
                        {HStack{
                            Image("rendang")
                                .resizable()
                               .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("5 Traditional Foods")
                                .font(.system(size: 20))
                                .foregroundColor(red6)
                        }
                        }).sheet(isPresented: $showmakanan2) {makanan2(showmakanan2: .constant(true))}
            
        }
            
        }
    }
}

struct makanan_Previews: PreviewProvider {
    static var previews: some View {
        makanan(showmakanan: .constant(true))
    }
}
