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
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            Text("내가 남긴 기록들 : \(cnt)")
                .font(.custom("BMJUAOTF", size:25))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            ScrollView (){
                
                
                
                ForEach (0..<images.count, id: \.self) {
                    i in
                    VStack{
                        HStack(spacing:0){
                            //그림 들어갈곳
                            // 옵셔널 바인딩
                            if let image = images[i]{
                                image
                                    .resizable()
                                    .scaledToFit()
//                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .background(Color.black)
                                
                            }
                            else {
                                Rectangle()
                            }
                            
                            VStack(alignment: .leading){
                                //제목, 글 들어갈 곳
                                VStack(){
                                    Text("\(titles[i])")
                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .background(Color.red)
                                        .font(.custom("BMJUAOTF", size:25))
                                }.frame(width: 200)
                                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
//                                    .background(Color.yellow)
                                Spacer()
                                    .frame(height: 15)
                                VStack{
                                    Text("\(details[i])")
                                        .frame(maxWidth: 180, alignment: .leading)
//                                        .background(Color.green)
                                        .font(.custom("BMJUAOTF", size:18))
                                }.frame(width: 200)
//                                    .background(Color.yellow)
                                
                                
                                Spacer()
                                
                            }
                            .frame(width: 200, height: 200, alignment: .leading)
                            .border(Color.gray)
                            
                        }

                    }.frame(width: 400, height: 200)
                        .border(Color.gray)
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
