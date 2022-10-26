//
//  keragaman2.swift
//  Ebook
//
//  Created by User12 on 2022/10/25.
//

import SwiftUI
import AVKit
struct keragaman2: View {
    let videoplayer1 = AVPlayer(url: Bundle.main.url(forResource: "Gamelan", withExtension: "mp4")!)
    
    let videoplayer2 = AVPlayer(url: Bundle.main.url(forResource: "indonesia", withExtension: "mp4")!)
    
    let videoplayer3 = AVPlayer(url: Bundle.main.url(forResource: "LAGU NUSANTARA", withExtension: "mp4")!)
    
    @Binding var showkeragaman2: Bool
    var body: some View {
        ScrollView {
        VideoPlayer(player: videoplayer1, videoOverlay: {
            VStack(alignment: .leading) { // 2
                Text("Gamelan")
                   .bold()
                    .font(Font.title2)
                    .padding(.all, 10)
                    .foregroundColor(red6)
                Spacer()
            }
        })
        .frame(width: 380, height: 300)
        .onAppear() {
            videoplayer1.play()
            self.videoplayer1.pause()
        }
        .onDisappear {
            videoplayer1.pause()}
        
       
        VideoPlayer(player: videoplayer3, videoOverlay: {
            VStack(alignment: .leading) { // 2
                Text("Indonesia Traditional Modern Mix Music")
                   .bold()
                    .font(Font.title2)
                    .padding(.all, 10)
                    .foregroundColor(red6)
                Spacer()
            }
        })
        .frame(width: 380, height: 300)
        .onAppear() {
            videoplayer3.play()
            self.videoplayer3.pause()
        }
        .onDisappear {
            videoplayer1.pause()}
        
        VideoPlayer(player: videoplayer2, videoOverlay: {
            VStack(alignment: .leading) {
                Text("indonesia music")
                   .bold()
                    .font(Font.title2)
                    .padding(.all, 10)
                    .foregroundColor(red6)
                Spacer()
            }
        })
        .frame(width: 380, height: 300)
        .onAppear() {
            videoplayer2.play()
            self.videoplayer2.pause()
        }
        .onDisappear {
            videoplayer1.pause()}
    }
}
}

struct keragaman2_Previews: PreviewProvider {
    static var previews: some View {
        keragaman2(showkeragaman2: .constant(true))
    }
}
