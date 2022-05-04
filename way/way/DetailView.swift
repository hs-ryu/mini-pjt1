//
//  TestView.swift
//  way
//
//  Created by ryu hyunsun on 2022/05/02.
//

import SwiftUI

struct DetailView: View {
    @Binding var images: [Image?]
    @Binding var titles: [String]
    @Binding var details: [String]
    @Binding var cnt: Int
    @Binding var isClicked: [Bool]
    @Binding var dates: [String]
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            Text("내가 남긴 기록들 : \(cnt)")
                .font(.custom("BMJUAOTF", size:25))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            ScrollView (){
                
                
                
                ForEach ((0..<images.count).reversed(), id: \.self) {
                    i in
                    ZStack{
                        ZStack{
                            if let image = images[i]{
                                image
                                    .resizable()
                                    .scaledToFit()
                            }
                            else {
                                Image("nopicture").resizable().scaledToFit()
                            }
                            

                        }.frame(width: 400, height: 400)
                            .background(Color.black)
                            .onTapGesture(count: 1){
                                self.isClicked[i].toggle()
                            }
                            .opacity(isClicked[i] ? 0.2 : 1.0)

                        if isClicked[i] {
                            VStack(spacing: 0){
                                VStack{
                                    Text("\(titles[i])")
                                        .frame(width: 200, height: 50)
                                        .font(.custom("esamanru OTF Medium",size:25))
                                    Text("\(dates[i])")
                                        .font(.custom("esamanru OTF Light", size: 10))
                                }.frame(width: 400, height: 100, alignment:.bottom)
                                
                                VStack{
                                    Text("\(details[i])")
                                        .frame(height: 200)
                                        .font(.custom("esamanru OTF Light", size:15))
                                }.frame(width: 200, height: 300, alignment:.top)
                                
                                
                            }
                        }
                        
                    }.frame(width: 400, height: 400)
                    
                    
                }
                
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("내 기록")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}




//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(images: DetailView.images, titles: DetailView.titles, details: ["ii","hi"])
//    }
//}
