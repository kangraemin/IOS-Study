//
//  ContentView.swift
//  MiCard
//
//  Created by 강래민 on 2021/03/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("ice_bear")
                    .resizable() // make resizable
                    .aspectRatio(contentMode: .fit) // ratio set
                    .frame(width: 150, height: 150, alignment: .center) // size
                    .clipShape(Circle()) // Make to circle
                    .overlay(Circle().stroke(Color.black, lineWidth: 5)) // overlay
                Text("Rams !")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
//                Text("+82 10-1234-5678")
//                    .foregroundColor(.black)
//                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
//                    .background(Color(.white))
//                    .cornerRadius(20)
                InfoView(text: "+82 10-1234-5678", imageName: "phone.fill")
                InfoView(text: "asdf@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
