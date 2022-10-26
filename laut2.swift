//
//  laut2.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI
import AVKit

struct laut2: View {
    @Binding var showlaut2: Bool
    
    let videoplayer2 = AVPlayer(url: Bundle.main.url(forResource: "Raja Ampat", withExtension: "mp4")!)
    
    var body: some View {
        Text("Raja Ampat")
            .fontWeight(.light)
            .font(.system(size: 20))
            .padding(.bottom, 20)
            .foregroundColor(red2)
        
        
    VideoPlayer(player: videoplayer2, videoOverlay: {
        VStack(alignment: .leading) { // 2
           
            Spacer()
        }
    })
    .frame(width : 380, height: 300)
    .onAppear() {
        videoplayer2.play()
        self.videoplayer2.play()
    }
    .onDisappear {
        videoplayer2.pause()}
        
        Text("  Raja Ampat – ‘the four kings’ is an archipelago of more than 1,500 small islands of which Misool, Salawati, Batanta and Waigeo are the largest. According to some marine biologists, Raja Ampat may be the most biodiverse marine habitat in the world with over 1,500 species of fish and 550 types of coral – around 75 per cent of all known species. From sharks and mantas, dugongs and leatherback turtles to the minuscule pygmy seahorse and fish in some of the largest schools found in the oceans, Raja Ampat has to be top of the list for diving in Indonesia – if not the world.")
            .font(.system(size: 14))
            .foregroundColor(red6)
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
}

struct laut2_Previews: PreviewProvider {
    static var previews: some View {
        laut2(showlaut2: .constant(true))
    }
}
