//
//  keragaman3.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI

struct keragaman3: View {
    let books = [
            Book(isbn: "https://www.youtube.com/watch?v=_dVJq8cAcpY", name: "Saman Dance"),
            Book(isbn: "https://www.youtube.com/watch?v=GUkd-Pxe1z4", name: "Tor -tor dance"),
        Book(isbn: "https://www.youtube.com/watch?v=hTQpaBxu4zk", name: "Serimpi Dance"),
        Book(isbn: "https://www.youtube.com/watch?v=-dORkpaQNss&t=1s", name: "Kecak Dance"),
        Book(isbn: "https://www.youtube.com/watch?v=OKky3rdSFV4", name: "Barong dance"),
        Book(isbn: "https://www.youtube.com/watch?v=dQiYe4ndcWk", name: "Piring Dance"),
        
        Book(isbn: "https://www.youtube.com/watch?v=8Tn85mzRy6Q", name: "Reog Ponorogo dance"),
        Book(isbn: "https://www.youtube.com/watch?v=3aEWmmbaCKU", name: "Jaipong dance"),
        Book(isbn: "https://www.youtube.com/watch?v=r93o8G3zEbc", name: "Pendet dance"),
        Book(isbn: "https://www.youtube.com/watch?v=mfe3TLrS6q8", name: "Leleng dance"),
        
        ]
    @Binding var showkeragaman3: Bool
    @State private var currentPage = 0
    var body: some View {
        VStack{
        Text("Traditional Indonesian Dance")
            .font(.system(size: 20))
            .padding(.top,45)
        List {
                   ForEach(books) { book in
                    VStack{
                       
                        Link((book.name),
                             destination: URL(string: (book.isbn))!)
                            .font(.system(size: 16))
                            .foregroundColor(.blue)
                       
                    }
                   }
               }
    }
      
    }
}
struct Book: Identifiable {
    
    var id: String {
        return isbn

    }
    
    let isbn: String
    let name: String
}

struct keragaman3_Previews: PreviewProvider {
    static var previews: some View {
        keragaman3(showkeragaman3: .constant(true))
    }
}
