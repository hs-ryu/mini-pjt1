//
//  CreateContentView.swift
//  way
//
//  Created by ryu hyunsun on 2022/04/28.
//

import SwiftUI

struct CreateContentView: View {
    @Environment(\.presentationMode) var presentationMode

    @EnvironmentObject var boxList: BoxViewModel
    @EnvironmentObject var total: TotalCntViewModel
    
    @State var showImagePicker: Bool = false
    @State var check: Bool = false
    @State var image: Image?
    
    @State var title: String = ""
    @State var content: String = ""
    
//    var formatter_time = DateFormatter().dateFormat("HH:mm")
//    var current_time_string = formatter_time.string(from: Date())

    
    @StateObject var locationManager = LocationManager()
    var userLatitude: Double {
        return locationManager.lastLocation?.coordinate.latitude ?? 0
    }
    
    var userLongitude: Double {
        return locationManager.lastLocation?.coordinate.longitude ?? 0
    }
    
    var body: some View {
        ZStack {
            VStack{
                Button(action: {
                    withAnimation{
                        self.showImagePicker.toggle()
                    }
                }) {
                    if image == nil {
                        Rectangle()
                            .frame(width: 300, height: 300)
                    }
                    else {
                        image?.resizable().frame(width: 300, height: 300)
                            
                    }
                }
                
                Text("지금 어디신가요?")
                TextEditor(text: $title)
                    .padding()
                    .foregroundColor(Color.black)
                    .lineSpacing(5)
                    .frame(minWidth: 0, maxWidth: 300, minHeight: 0,  maxHeight: 50)
                    .border(Color.black, width: 3)
                Text("지금을 표현해주세요.")
                TextEditor(text: $content)
                    .padding()
                    .foregroundColor(Color.black)
                    .lineSpacing(5)
                    .frame(minWidth: 0, maxWidth: 300, minHeight: 0,  maxHeight: 150)
                    .border(Color.black, width: 3)
                Spacer()
                
                
                
                
            }
            VStack {
                Spacer()
                Button(action: {
//                   위치 정보로 메인 색깔 바꾸는 로직 작성.
                    
                    for i in 0..<120 {
                        if boxList.box_list[i].left_lon < userLongitude && boxList.box_list[i].right_lon > userLongitude && boxList.box_list[i].top_lat >  userLatitude && boxList.box_list[i].bottom_lat < userLatitude {
                            boxList.box_list[i].cnt += 1
                            print("성공")
                            print("\(boxList.box_list[i].index)")
                            print("\(boxList.box_list[i].cnt)")
                            if boxList.box_list[i].cnt == 1 {
                                total.regionCnt += 1
                            }
                            
                            break
                        }
                    }
                    
                    
//                    ForEach (boxList.box_list, id: \.index) {
//                        box in
//                        if box.left_lon < userLongitude && box.right_lon > userLongitude && box.top_lat > userLatitude && box.bottom_lat < userLatitude {
//                            box.self.cnt += 1
//
//                        }
//                    }
                    
            
                    
                    
                    total.total += 1
                    
                    total.meanValue = total.total / total.regionCnt
                    var cnt = 1.0
                    for i in 0 ..< 4 {
                        total.step[i] = total.meanValue * (cnt/4)
                        cnt += 1
                    }
                    print(total.step)
                    
                    
                    self.presentationMode.wrappedValue.dismiss()
                }
                ) {
                    Image("registerbutton")
                }
            }

            
        }
       
        .sheet(isPresented: $showImagePicker) {
            OpenGallary(isShown: $showImagePicker, image: $image)
        }
    }
}

struct CreateContentView_Previews: PreviewProvider {
    static var previews: some View {
        CreateContentView()
    }
}
