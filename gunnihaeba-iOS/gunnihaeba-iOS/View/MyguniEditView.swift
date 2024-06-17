//
//  MyguniEditView.swift
//  gunnihaeba-iOS
//
//  Created by bibiga on 6/17/24.
//

import SwiftUI

struct MyguniEditView: View {
    @Binding var title: String
    @State var contents: String = "내용"
    var body: some View {
        NavigationView {
            VStack(spacing:19) {
                Rectangle()
                    .frame(width:298, height: 73)
                    .foregroundColor(.boxColor)
                    .overlay(
                        Text("\(title)")
                            .font(.system(size: 30, weight: .regular))
                            .offset(x:-100)
                    )
                Rectangle()
                    .frame(width:298, height: 313)
                    .foregroundColor(.boxColor)
                    .overlay(
                        Text("\(contents)")
                            .font(.system(size: 25, weight: .regular))
                            .offset(x:-105,y:-120)
                    )
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width:115, height: 55)
                        .foregroundColor(.boxColor)
                        .overlay(
                            Text("수정")
                                .font(.system(size: 30, weight: .regular))
                                .foregroundColor(.black)
                        )
                        .offset(x:91)
                }
            }
        }
    }
}

#Preview {
    MyguniEditView(title: .constant("제목"))
}
