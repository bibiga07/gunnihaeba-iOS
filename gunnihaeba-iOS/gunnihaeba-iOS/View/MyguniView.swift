//
//  MyguniView.swift
//  gunnihaeba-iOS
//
//  Created by bibiga on 6/17/24.
//

import SwiftUI

struct MyguniView: View {
    @State var userName: String = "이승혁"
    var body: some View {
        Text("'\(userName)'님의 건의")
            .font(.system(size: 30, weight: .regular))
        Rectangle()
            .frame(width:298,height:73)
            .foregroundColor(Color.boxColor)
    }
}

#Preview {
    MyguniView()
}
