//
//  CreateContentView.swift
//  way
//
//  Created by ryu hyunsun on 2022/04/28.
//

import SwiftUI

struct CreateContentView: View {
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
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
    
    @State var isTitle: Bool = false
    
    
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
                Spacer()
                Button(action: {
                    withAnimation{
                        self.showImagePicker.toggle()
                    }
                }) {
                    if image == nil {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.78, green: 0.89, blue: 0.55), lineWidth: 8)
                            VStack{
                                Image("imageselect")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }.frame(width: 80, height: 80)
                                
                        }
                        .frame(width: 300, height: 300)
                        //                        RoundedRectangle(cornerRadius: 10)
                        //                            .fill(Color.white)
                        //                            .frame(width: 300, height: 300)
                        //                            .border(Color.blue, width: 4)
                        
                        //                        Rectangle()
                        //                            .fill(Color.white)
                        //                            .frame(width: 300, height: 300)
                        //                            .cornerRadius(10)
                    }
                    else {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.78, green: 0.89, blue: 0.55), lineWidth: 8)
                            image?
                                .resizable()
//                                .frame(width: 300, height: 300)
                                .cornerRadius(10)
                        }.frame(width: 300, height: 300)
                    }
                }
                Spacer().frame(height: 50)
                VStack (alignment: .leading) {
                    
                    Text("?????? ????????????????")
                        .font(.custom("BMJUAOTF", size:18))
                    
                    TextEditor(text: $title)
                        .padding()
                        .font(.custom("BMJUAOTF", size:15))
                        .foregroundColor(Color.black)
                        .background(Color(red: 0.78, green: 0.89, blue: 0.55))
                        .lineSpacing(5)
//                        .disableAutocorrection(true)
                        .frame(minWidth: 0, maxWidth: 300, minHeight: 0,  maxHeight: 60)
                        .border(Color(red: 0.78, green: 0.89, blue: 0.55), width: 5)
                        .cornerRadius(10)
                }.frame(width: 300, alignment: .trailing)
                    
                
                VStack (alignment: .leading) {
                    Text("????????? ??????????????????.")
                        .font(.custom("BMJUAOTF", size:18))
                    TextEditor(text: $content)
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.custom("BMJUAOTF", size:15))
                        .background(Color(red: 0.78, green: 0.89, blue: 0.55))
                        .lineSpacing(5)
//                        .disableAutocorrection(true)
                        .frame(minWidth: 0, maxWidth: 300, minHeight: 0,  maxHeight: 150)
                        .border(Color(red: 0.78, green: 0.89, blue: 0.55), width: 5)
                        .cornerRadius(10)
                }.frame(width: 300, alignment: .trailing)
                Spacer()
                
                
                
                
            }
            VStack {
                Spacer()
                Button(action: {
                    //                   ?????? ????????? ?????? ?????? ????????? ?????? ??????.
                    if title == "" {
                        self.isTitle = true
                    }
                    else {
                        for i in 0..<120 {
                            if boxList.box_list[i].left_lon < userLongitude && boxList.box_list[i].right_lon > userLongitude && boxList.box_list[i].top_lat >  userLatitude && boxList.box_list[i].bottom_lat < userLatitude {
                                boxList.box_list[i].cnt += 1
                                print("??????")
                                print("\(boxList.box_list[i].index)")
                                print("\(boxList.box_list[i].cnt)")
                                if boxList.box_list[i].cnt == 1 {
                                    total.regionCnt += 1
                                }
    //                            boxList.box_list[i].region_contents_picture.append(image)
                                boxList.box_list[i].region_contents_picture.append(image)
                                boxList.box_list[i].region_contents_title.append(title)
                                boxList.box_list[i].region_contents_detail.append(content)
                                boxList.box_list[i].isClicked.append(false)
                                
                                // ?????? ?????? ????????????. dateFormat??? ?????? ?????? ????????? ??????.
                                let formatter = DateFormatter()
                                formatter.dateFormat = "yyyy.MM.dd"
                                let current_date_string = formatter.string(from: Date())
                                
                                boxList.box_list[i].dates.append(current_date_string)
                                
                                print(boxList.box_list[i])
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

                }
                ){
                    Image("registerbutton")
                        .shadow(color: Color.black, radius: 4, x: 3, y: 3)
                }
                
            }
            .alert("????????? ????????? ?????????!", isPresented: $isTitle){}
            
            
        }
        
        .navigationTitle("?????????")
        .navigationBarTitleDisplayMode(.inline)
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
