//
//  MainView.swift
//  way
//
//  Created by ryu hyunsun on 2022/04/27.
//

import SwiftUI


func checkTotalCnt (totalCnt: Int) -> Bool {
    if totalCnt == 0 {
        return false
    }
    return true
}

// published, environment 써야할듯.
struct MainView: View {
    
    @StateObject var boxList = BoxViewModel()
    @StateObject var total = TotalCntViewModel()
    @State var showDetails = false
    var northKorea = NorthKorea()
    var body: some View {
        NavigationView {
            VStack (spacing:0){
//                Text("\(total.total)")
                ZStack{
                    AngularGradient(gradient: Gradient(colors: [Color(red: 193/255, green: 234/255, blue: 249/255), Color.blue]),
                                                    center: .topLeading,
                                    angle: .degrees(180 + 45)).ignoresSafeArea()
//                    Color(red: 193/255, green: 234/255, blue: 249/255).ignoresSafeArea()
                    VStack (spacing:0){
//                        북한
                        VStack(spacing:0) {
                            HStack(spacing: 0){
                                ForEach (102..<116) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                        }
                        
                        VStack(spacing:0) {
                            HStack(spacing: 0){
                                ForEach (90..<102) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            
                            HStack(spacing: 0){
                                ForEach (0..<10) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (10..<20) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (20..<30) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (30..<40) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (40..<50) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (50..<60) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (60..<70) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (70..<80) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (80..<90) {
                                    i in
                                    Rectangle()
                                        .fill(northKorea.North_box_list[i].isBorder ?
                                              Color(red: 0.93, green: 0.93, blue: 0.94)
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(northKorea.North_box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                        }
                        
                        
                        
                        
                        
                        VStack(spacing:0){
                            HStack(spacing: 0){
                                ForEach (0..<10) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)

                                        

                                    
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (10..<20) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (20..<30) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (30..<40) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (40..<50) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (50..<60) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (60..<70) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (70..<80) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (80..<90) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (90..<100) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                        }
                        VStack(spacing:0) {
                            HStack(spacing: 0){
                                ForEach (100..<110) {
                                    i in
                                    Rectangle()
                                        .fill(boxList.box_list[i].isBorder ?
                                              (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                        (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                            Color(red: 0.93, green: 0.93, blue: 0.94)
                                                        )
                                                    )
                                                )
                                              )
                                              : Color.clear
                                                )
                                        .frame(width: 30, height: 30)
                                        .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                }
                            }
                            HStack(spacing: 0){
                                ForEach (110..<120) {
                                    i in
                                    if (boxList.box_list[i].cnt != 0) {
                                        NavigationLink(destination: DetailView(s: self.$boxList.box_list[i].index)) {
                                            Rectangle()
                                            // 자 생각해보자. 하나도 커밋 없을때는 ? 그레이색히야 (boxList.box_list[i].cnt == 0)
                                            // 근데, 그 지역에서 올린적이 있다? 카운트가 달라질거고, 평균이랑 비교하는 로직 작성.
                                                .fill(boxList.box_list[i].isBorder ?
                                                      (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                        (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                            (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                                (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                                    Color(red: 0.93, green: 0.93, blue: 0.94)
                                                                )
                                                            )
                                                        )
                                                      )
                                                      // 없는 지역이라면? clear
                                                      : Color.clear
                                                        )
                                                .frame(width: 30, height: 30)
                                                .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                        }
                                    }
                                    else {
                                        Rectangle()
                                        // 자 생각해보자. 하나도 커밋 없을때는 ? 그레이색히야 (boxList.box_list[i].cnt == 0)
                                        // 근데, 그 지역에서 올린적이 있다? 카운트가 달라질거고, 평균이랑 비교하는 로직 작성.
                                            .fill(boxList.box_list[i].isBorder ?
                                                  (Double(boxList.box_list[i].cnt) > total.step[2] ? Color(red: 0.10, green: 0.38, blue: 0.15) :
                                                    (Double(boxList.box_list[i].cnt) > total.step[1] ? Color(red: 0.15, green: 0.60, blue: 0.24) :
                                                        (Double(boxList.box_list[i].cnt) > total.step[0] ? Color(red: 0.48, green: 0.78, blue: 0.44) :
                                                            (Double(boxList.box_list[i].cnt) > 0.0 ? Color(red: 0.78, green: 0.89, blue: 0.55) :
                                                                Color(red: 0.93, green: 0.93, blue: 0.94)
                                                            )
                                                        )
                                                    )
                                                  )
                                                  // 없는 지역이라면? clear
                                                  : Color.clear
                                                    )
                                            .frame(width: 30, height: 30)
                                            .border(boxList.box_list[i].isBorder ? Color.gray : Color.clear)
                                    }
                                }
                                
                            }
                            Spacer().frame(height: 150)
                            
                        }
                        
                    }
                    
                    
                    VStack {
                        Spacer().frame(height: 700)

                        NavigationLink(destination: CreateContentView()){
                            Image("createbutton")
                                .shadow(color: Color.black, radius: 4, x: 3, y: 3)
                        }
                        
                    }
                    
                    
                }
                
            }
            
        }
        
        .environmentObject(boxList)
        .environmentObject(total)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


//            HStack(spacing: 0){
//                ForEach (boxList.box_list, id: \.index) {
//                  box in
//                    Rectangle()
//                        .fill(box.color)
//                        .frame(width: 30, height: 30)
//                        .border(Color.gray)
//                }
//            }
