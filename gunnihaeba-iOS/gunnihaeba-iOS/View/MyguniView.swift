//
//  MyguniView.swift
//  gunnihaeba-iOS
//
//  Created by bibiga on 6/17/24.
//

import SwiftUI

struct MyguniView: View {
    @State var userName: String = "이승혁"
    @State var title: String = "제목"
    var body: some View {
        Text("\"\(userName)\"님의 건의")
            .font(.system(size: 30, weight: .regular))
            .offset(x:-50)
            .padding(.top,50)
        
        ScrollView {
            Rectangle()
                .frame(width:298,height:73)
                .foregroundColor(Color.boxColor)
                .overlay(
                    HStack {
                        Text("\(title)")
                            .font(.system(size: 30, weight: .regular))
                            .padding(.trailing,50)
                        NavigationLink(destination: MyguniEditView()) {
                            Rectangle()
                                .frame(width:71,height:55)
                                .foregroundColor(.black)
                                .overlay(
                                    Text("수정")
                                        .font(.system(size: 30, weight: .regular))
                                        .foregroundColor(.white)
                                )
                        }
                        Rectangle()
                            .frame(width:71,height:55)
                            .foregroundColor(.black)
                            .overlay(
                                Text("삭제")
                                    .font(.system(size: 30, weight: .regular))
                                    .foregroundColor(.white)
                            )
                    }
                )
        }
        Image(systemName: "person")
            .resizable()
            .scaledToFit()
            .frame(width:80)
            .padding(30)
        Button {
            
        } label: {
            Rectangle()
                .frame(width:158,height:73)
                .foregroundColor(.boxColor)
                .overlay(
                    Text("로그아웃")
                        .font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                )
                .offset(x:100)
                .padding(.bottom,30)
        }
    }
}

#Preview {
    MyguniView()
}
