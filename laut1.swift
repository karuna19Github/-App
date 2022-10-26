//
//  laut1.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI
import AVKit

struct laut1: View {
    @Binding var showlaut1: Bool
    let videoplayer2 = AVPlayer(url: Bundle.main.url(forResource: "Tulamben & Lembongan", withExtension: "mp4")!)
    
    var body: some View {
        Text("Lembongan")
            .fontWeight(.light)
            .font(.system(size: 20))
            .padding(.bottom, 20)
            .foregroundColor(red2)
      
        VideoPlayer(player: videoplayer2, videoOverlay: {
            VStack(alignment: .leading) { // 2
              
                Text("Beautiful marine life Lembongan ")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .foregroundColor(red6)
                
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
        
        Text("  Nusa Lembongan is one of three islands approximately 30 minutes by speedboat from Sanur harbour in Bali. Most of the diving actually takes place around the larger island of Nusa Penida, famous for sightings of the southern mola at Crystal Bay and the resident population of reef manta at feeding and cleaning stations along the southern coastline. The islands are prone to large swell and big currents, although by and large they are fairly easy to manage – even for novices – through good diving practice and sound dive centre planning. Although the islands can be dived on a day trip from Bali, it’s much better to make the journey to Lembongan to take advantage of the earlier access to the dive sites. Aside from the manta and occasional visits from other large pelagic, there is plenty of macro for the keen-eyed photographer, it’s just not always easy to stay in the same place long enough to photograph them!")
            .font(.system(size: 14))
            .foregroundColor(red6)
            .padding(.leading, 10)
            .padding(.trailing, 10)
         
    }
}

struct laut1_Previews: PreviewProvider {
    static var previews: some View {
        laut1(showlaut1: .constant(true))
    }
}
