//
//  makanan2.swift
//  Ebook
//
//  Created by User12 on 2022/10/26.
//

import SwiftUI

struct makanan2: View {
    @Binding var showmakanan2: Bool
    let makanan2 = [
        food2(isbn: "Rendang is a Minang dish originating from the Minangkabau region in West Sumatra, Indonesia. It has spread across Indonesian cuisine to the cuisines of neighbouring Southeast Asian countries such as Malaysia, Singapore, Brunei and the Philippines. Rendang is often described as a rich dish of meat — most commonly beef (rendang daging) — that has been slow cooked and braised in a coconut milk seasoned with a herb and spice mixture, until the liquids evaporate and the meat turns dark brown and tender, becoming caramelized and infused with rich flavours. ",name:"Rendang (Slow-Cooked Beef)", foto :"rendang"),
        food2(isbn: "Rawon is an Indonesian beef soup. Originating from East Java, rawon utilizes the black keluak nut as the main seasoning, which gives a dark color and nutty flavor to the soup. ",name:"Rawon", foto :"rawon"),
        food2(isbn: "Betutu is a Balinese dish of steamed or roasted chicken or duck (bebek) in rich bumbu betutu (betutu spice mix). This highly seasoned and spiced dish is a popular dish in Bali and Lombok, Indonesia. An even spicier version is available using extra-spicy sauce made from uncooked (raw) onion slices mixed with red chili peppers and coconut oil. ",name:"Betutu", foto :"Bebek Betutu"),
        food2(isbn: " Gudeg is a traditional Javanese dish that is made from unripe jackfruit and has been stewed for hours in a mixture of palm sugar and coconut milk.Gudeg is naturally a vegetarian meal. However, it is known to be served with egg or chicken and white rice.The meat of the jackfruit has stained a reddish-brown from teak leaves added to the traditional Indonesian spices. You will be able to find Gudeg in warungs throughout Indonesian cities.",name:"Gudeg", foto :"gudeg"),
        food2(isbn: "This delicious beef and coconut soup is fragrant and genuinely unforgettable. Soto is a term used to talk about different soups from across the archipelago of Indonesia. Soto Betawi originates in Jakarta. The milky soup dish has succulent chunks of beef and luscious servings of lime and lemongrass flavors. ",name:"Soto Betawi", foto :"betawi")
        ]
    var body: some View {
        VStack{
        Text("5 Popular Indonesian Foods")
            .font(.system(size: 20))
            .foregroundColor(red6)
          
        List {
                   ForEach(makanan2) { food2 in
                    VStack{
                        Text(food2.name)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                            .foregroundColor(red6)
                        Image (food2.foto)
                            .resizable()
                        .frame(width: 300, height: 180)
                        .padding(.bottom, 10)
                        Text(food2.isbn)
                            .font(.system(size: 14))
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .padding(.bottom, 30)
                            .foregroundColor(red6)
                    }
                   }
               }
    }
    }
}
struct food2: Identifiable {
    
    var id: String {
        return isbn

    }
    
    let isbn: String
    let name: String
    let foto :String
}
struct makanan2_Previews: PreviewProvider {
    static var previews: some View {
        makanan2(showmakanan2: .constant(true))
    }
}
