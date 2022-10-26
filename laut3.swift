//
//  laut3.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI


struct laut3: View {
    @Binding var showlaut3: Bool
    
    var body: some View {
        NavigationView {
            VStack{
        Text("Wakatobi")
            .font(.system(size: 20))
            .foregroundColor(red2)
                
        NavigationLink(
            destination: video() ,
            label: {
                Image(systemName: "play.rectangle")
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 50)
        })
        
        Text("  Wakatobi is an extremely isolated dive resort in the heart of the Tukangbesi archipelago off the southern tip of Sulawesi. You fly in on a light aircraft and can explore some of the most pristine reefs on the planet from the luxury of a purpose-built dive hotel. The house reef is a world-class dive in its own rights and there are nearly 40 other stunning sites to explore. This is an underwater photographer’s paradise with some of the most vibrant and biodiverse reefs on the planet. Dynamite fishing and other dubious practices had taken their toll over the years and the amount of large pelagic life might not compare with other areas but growing conservation awareness is improving that and the sheer quality and beauty of the reefs more than compensates.")
            .font(.system(size: 14))
            .foregroundColor(red6)
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding (.top,40)
    } .padding(.bottom,100)
        }
       
        
    }
}

struct laut3_Previews: PreviewProvider {
    static var previews: some View {
        laut3(showlaut3: .constant(true))
    }
}
