//
//  ContentView.swift
//  I Am Rich - Swift UI
//
//  Created by 강래민 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all) // Ignore safe area
            VStack {
                Text("I Am Rich")
                    .font(.system(size: 40)) // Set fonts
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
        ContentView()
    }
}
