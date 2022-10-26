//
//  gunung.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct gunung: View {
    @Binding var showgunung: Bool
    @State private var showgunung1 = false
    @State private var showgunung2 = false
    @State private var showhome = false
    
    let Mountains = ["Agung",
                     "Arjuno",
                     "Batur",
                     "Bromo",
                     "Gede-Pangrango",
                     "Krakatoa",
                     "Lawu",
                     "Merapi",
                     "Merbabu",
                     "Puncak Jaya ",
                     "Raung",
                     "Rinjani",
                     "Semeru",
                     "Sinabung",
                     
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 50){
            
            VStack{
                Text("Mountains in Indonesia ")
                    .foregroundColor(red2)
                    .fontWeight(.bold)
                    .font(.system(size: 35))
                    .padding(.top,5)
                    .padding(.bottom,10)
                
                HStack{
                    
                    Image(systemName: "globe")
                        .foregroundColor(.blue)
                       
                Link("HELPING YOU CLIMB MOUNTAINS IN ASIA ",
                     destination: URL(string: "https://summits.com/asia/indonesia")!)
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    
                    Spacer()
                }
                
                Button (action: {showgunung2 = true}, label:
                            { Text("5 Best Mountains to Climb ")
                                .foregroundColor(red6)
                                
                            }).sheet(isPresented: $showgunung2) {                                gunung2(showgunung2: .constant(true))}
                
                
                
                let columns = Array(repeating: GridItem(), count: 3)
                ScrollView {
                    
                    LazyVGrid(columns: columns) {
                        ForEach(Mountains.indices, id: \.self) { item in
                            MountainsView(Mountain: Mountains[item], number: item + 1)
                        }
                    }.padding(.top, 20)
                }
                
                
            }
        }
    }
}
struct MountainsView: View {
    let Mountain: String
    let number: Int
    var body: some View {
        VStack {
            
            Image( Mountain )
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 150)
                .clipped()
            
            Text(Mountain)
                .font(.system(size: 14))
                .foregroundColor(red6)
            
        }
    }
}

struct gunung_Previews: PreviewProvider {
    static var previews: some View {
        gunung(showgunung: .constant(true))
    }
}
