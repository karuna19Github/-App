//
//  gunung2.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct gunung2: View {
    @Binding var showgunung2: Bool
    
    var body: some View {
        VStack{
            ScrollView {
                HStack (spacing: 3){
                    
                    Image("Agung")
                        .resizable()
                        .frame(width: 100, height: 150)
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mount Agung")
                            .foregroundColor(red6)
                        Text("  Mount Agung, also known as Gunung Agung, is an active volcano located on the island of Bali in the Indonesia island arc.")
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                    
                        ZStack{
                            Rectangle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.red)
                                .frame(width: 250, height: 50)
                            
                            Text(" Height       : 3,031m (9,944ft) ")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,40)
                                .padding(.top,10)
                            Text("#10 Highest in Southeast Asia ")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                        
                        }
                    }
                }
                HStack (spacing: 3){
                    
                    Image("Rinjani")
                        .resizable()
                        .frame(width: 100, height: 150)
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mount Rinjani")
                            .foregroundColor(red6)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                        Text("  Rinjani is the second highest volcano in Indonesia, second only to Mount Kerinci on Sumatra, and it dominates the landscape of the relatively small island of Lombok in the Indonesia.")
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        VStack{
                        ZStack{
                            Rectangle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.red)
                                .frame(width: 250, height: 80)
                            
                            Text(" Height       : 3,726m (12,224ft)")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,40)
                                .padding(.top,10)
                            Text("#1 Highest peak in Lombok")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,0)
                            Text("#2 Highest Volcano in Indonesia")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.top,25)
                        }
                        }
                    }
                }
                HStack (spacing: 3){
                    
                    Image("Kerinci").resizable()
                        .frame(width: 100, height: 150)
                        .padding(.leading, -3.0)
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mount Kerinci")
                            .foregroundColor(red6)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                        Text("  Kerinciis an active stratovolcano and the highest mountain in Sumatra, Indonesia.")
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        VStack{
                        ZStack{
                            Rectangle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.red)
                                .frame(width: 250, height: 90)
                            
                            Text(" Height       : 3,805m (12,483ft)")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,40)
                                .padding(.top,0)
                            Text("#14 Highest Peak in Indonesia")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,5)
                            Text("#12 Highest in South East Asia")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.top,20)
                            Text("#1 Highest Volcano in Indonesia")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.top,50)
                                .padding(.bottom,5)
                        }
                        }
                    }
                }
                
                HStack (spacing: 3){
                    
                    Image("Merbabu").resizable()
                        .frame(width: 100, height: 150)
                        .padding(.leading, -3.0)
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mount Merbabu")
                            .foregroundColor(red6)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                        Text("  Kerinciis an active stratovolcano and the highest mountain in Sumatra, Indonesia.")
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        VStack{
                        ZStack{
                            Rectangle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.red)
                                .frame(width: 250, height: 30)
                            
                            Text(" Height       :3,145m (10,318 ft)")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,0)
                                .padding(.top,0)
                           
                        }
                        }
                    }
                    
                }
                HStack (spacing: 3){
                    
                    Image("Bromo").resizable()
                        .frame(width: 100, height: 150)
                        .padding(.leading, -3.0)
                        .padding(.leading, 20)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mount Bromo")
                            .foregroundColor(red6)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                        Text("  Mount Bromo is an active volcano crater located in East Java, Indonesia.")
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        VStack{
                        ZStack{
                            Rectangle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.red)
                                .frame(width: 250, height: 90)
                            
                            Text(" Height       : 2,329m (7,641ft)")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,40)
                                .padding(.top,10)
                            Text("#1 Most Picturesque Sunrise ")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.bottom,0)
                            Text("In Indonesia")
                                .font(.system(size: 14))
                                .foregroundColor(red6)
                                .padding(.top,35)
                                .padding(.bottom,5)
                                .padding(.trailing, 100)
                           
                        }
                        }
                        
                    }
                    
                }
                
            }
    }
}
}

struct gunung2_Previews: PreviewProvider {
    static var previews: some View {
        gunung2(showgunung2: .constant(true))
    }
}
