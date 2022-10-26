//
//  keragaman1.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI
import AVKit

struct keragaman1: View {
    
    @State private var currentPage = 0
    @Binding var showkeragaman1: Bool
    let dance = ["Ulee Balang",
                     "Bundo Kanduang",
                     "Ulos",
                     "Aesan Gede",
                     "Teluk Belanga",
                     "Melayu Jambi",
                     "Tulang Bawang",
                      "Upak Nyamu",
                      "Kustin",
                     "Lipa Saqbe Mandar",
                     "Nggembe",
                    "Kinawo",
                     "Ewer",
                     "Bagajah Gamuling Baular Lulut",
                     "Biliu  & Makuta",
                     "Ulee Balang",
                     
           
        ]
  
    var body: some View {
      
           
            VStack {
                       Text("Traditional clothes\(currentPage+1)頁")
                        .padding(.top,30)
                        .font(.system(size: 20))
                
                
                       TabView(selection: $currentPage) {
                        
                        ForEach(1..<dance.count) { item in
                            VStack{
                            Text(dance[item])
                                .font(.system(size: 18))
                                .bold()
                                .foregroundColor(red6)
                               Image(dance[item])
                                   .resizable()
                                .frame(width: 400, height: 500)
                            }
                                   
                           }
                       }
                       .tabViewStyle(PageTabViewStyle())
                       .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            
    }
    }
}
struct keragaman1_Previews: PreviewProvider {
    static var previews: some View {
        keragaman1(showkeragaman1: .constant(true))
    }
}
