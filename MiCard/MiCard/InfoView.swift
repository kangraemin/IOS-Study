//
//  InfoView.swift
//  MiCard
//
//  Created by 강래민 on 2021/03/30.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(.white))
            .frame(height: 50) // 아무것도 없으면, parent와 같음 !
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text).foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello !", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
