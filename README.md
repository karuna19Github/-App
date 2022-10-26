電子書 App

我做一個電子書 App介紹印尼國家

使用 TabView 製作下面有 tab bar 的分頁。

![layar](https://user-images.githubusercontent.com/102145197/198087621-81546f38-d378-4da9-a894-bf22f32b3da1.png)

使用 NavigationStack(NavigationView) & NavigationLink 切換頁面 & 傳資料到下一頁，navigation bar 上要顯示標題。
       NavigationLink(
            destination: video() ,
            label: {
                Image(systemName: "play.rectangle")
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 50)
        })
利用 page 實現分頁瀏覽。
  VStack {
                       Text("Traditional clothes\(currentPage+1)頁")
                        .padding(.top,30)
                        .font(.system(size: 20))
                
                
                       TabView(selection: $currentPage) {
                        
                        ForEach(1..<dance.count) { item in
                            VStack{
                            Text(dance[item])
                                .font(.system(size: 18))
                                .bold()
                               Image(dance[item])
                                   .resizable()
                                .frame(width: 400, height: 500)
                            }
                                   
                           }
                       }
                       .tabViewStyle(PageTabViewStyle())
                       .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            
    }
使用到酷炫動畫。
https://user-images.githubusercontent.com/102145197/197998296-3148833b-cc68-4160-b9dc-3ba2be9b52ce.mov


利用 transition 設定元件出現的動畫效果。
  
                        Link("Wikipedia ",
                             destination: URL(string: "https://zh.wikipedia.org/wiki/%E5%8D%B0%E5%BA%A6%E5%B0%BC%E8%A5%BF%E4%BA%9A")!)
                            .font(.system(size: 16))
                            .foregroundColor(.blue)
                        
支援 dark mode & light mode。
![black](https://user-images.githubusercontent.com/102145197/198086152-4b95b9e5-38ea-4b64-8a0c-f64e33a0bb8f.png)

使用到以下連結的方法調整元件位置。
VStack(alignment: .leading) {
                Text("indonesia music")
                   .bold()
                    .font(Font.title2)
                    .padding(.all, 10)
                    .foregroundColor(red6)
                Spacer()
            }
使用格子狀排列的 LazyVGrid 實現照片牆。

let columns = Array(repeating: GridItem(), count: 3)
                ScrollView {
                    
                    LazyVGrid(columns: columns) {
                        ForEach(Mountains.indices, id: \.self) { item in
                            MountainsView(Mountain: Mountains[item], number: item + 1)
                        }
                    }.padding(.top, 20)
                }
使用 VideoPlayer 播放影片
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
設定 App Icon & 名稱。
  Image(systemName: "globe")
                            .foregroundColor(.blue)
                        

