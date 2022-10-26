//
//  makanan1.swift
//  Ebook
//
//  Created by User12 on 2022/10/26.
//

import SwiftUI

struct makanan1: View {
    @Binding var showmakanan1: Bool
    let makanan = [
        food(isbn: "Martabak are savory light bites that originated from a Middle-Eastern recipe of the same name. It is basically a spicy omelet pancake stuffed with bits of vegetables and minced meat and can be bought from almost any street vendor in Indonesia after sunset. Palembang, with Martabak HAR, and Aceh, with Martabak Aceh, are two of the few regions in Indonesia that have given their own twist to Martabak. There is also another general variant of Martabak called Martabak Manis (other regions, such as Malang, call it ‘Kue Terang Bulan’), which is basically a large pancake stuffed with toppings like chocolate, cheese, and peanuts. It might look complicated, but it’s actually very easy to make and the ingredients are available at many shops near you.", name: "Martabak", foto :"martabak"),
        food(isbn: "The last traditional dish that is so easy to find in Indonesia is Sate Ayam, a grilled chicken skewer served with peanut sauce. It is believed that the word ‘Sate’ originated from Tamil ‘catai’, a regional variant of ‘tacai’ meaning ‘flesh’, which is the indication that the dish was initially developed by Javanese street vendors as an adaptation of Indian kebabs. In West Sumatra, there is a popular variant of Sate Ayam dish called Sate Padang, a grilled beef skewer served with a distinctive spicy Minang sauce.", name: "Sate Ayam",foto :"sate"),
        food(isbn: "Pempek or empek-empek is made of fish and tapioca. It is a Palembang specialty in South Sumatra. Pempek comes in a variety of shapes and sizes. The most popular one is called, kapal selam (submarine), contains an egg in the middle. Pempek is sprinkled with shrimp powder and served with cuka, a dark dipping sauce made from vinegar, chill and sugar.", name: "Pempek",foto :"pempek"),
        food(isbn: "Pepes is very similar to Thai aeb, but it’s the Indonesian version of an assortment of fish, meat or tofu, mixed with lots of healthy herbs and spices, wrapped in a banana leaf package, and either steamed or grilled.            Originally a Sundanese food from the Western part of Java, some of the most common versions of pepes include chicken, different types of fish, tofu, or mushrooms, mixed with shallots, garlic, chilies, turmeric, candlenut, and lemon basil. What I love so much is that the ingredients, since they are all wrapped in a banana leaf and cooked, all mesh together really well, but also the banana leaf gives an extra green essence to whatever is cooked inside.", name: "Pepes ",foto :"pepes"),
        food(isbn: "Not to be confused with the theatrical drama of the same name that re-enacts Javanese legends, this Ketoprak is made from vermicelli, tofu, packed rice cake and bean sprouts. It rounds out the quintet of pestle-and-mortar-based dishes that include gado-gado and pecel, and is a simple street dish that tastes mostly of peanuts and spice but is chockfull of carbohydrates.", name: "Ketoprak",foto :"ketoprak"),
        ]
    var body: some View {
        VStack{
        Text("5 Popular Indonesian Foods")
            .font(.system(size: 20))
            .foregroundColor(red2)
            
        List {
                   ForEach(makanan) { food in
                    VStack{
                        Text(food.name)
                            .fontWeight(.light)
                            .font(.system(size: 20))
                            .padding(.bottom, 20)
                            .foregroundColor(red6)
                        Image (food.foto)
                            .resizable()
                        .frame(width: 300, height: 180)
                        .padding(.bottom, 10)
                        Text(food.isbn)
                            .font(.system(size: 14))
                            .foregroundColor(red6)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .padding(.bottom, 30)
                    }
                   }
               }
    }
    }
}
struct food: Identifiable {
    
    var id: String {
        return isbn

    }
    
    let isbn: String
    let name: String
    let foto :String
}


struct makanan1_Previews: PreviewProvider {
    static var previews: some View {
        makanan1(showmakanan1: .constant(true))
    }
}
