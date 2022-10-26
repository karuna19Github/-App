//
//  video.swift
//  Ebook
//
//  Created by User12 on 2022/10/26.
//

import SwiftUI
import AVKit

struct video: View {
    let videoplayer2 = AVPlayer(url: Bundle.main.url(forResource: "Wakatobi", withExtension: "mp4")!)
    
    var body: some View {
        VideoPlayer(player: videoplayer2, videoOverlay: {
            VStack(alignment: .leading) { // 2
               
                Spacer()
            }
        })
        .scaledToFill()
        .onAppear() {
            videoplayer2.play()
            self.videoplayer2.play()
        }
        .onDisappear {
            videoplayer2.pause()}
            
    }
}

struct video_Previews: PreviewProvider {
    static var previews: some View {
        video()
    }
}
