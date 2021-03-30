//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by 강래민 on 2021/03/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer() // Give space
                HStack {
                    DiceView(diceNumber: 1)
                    DiceView(diceNumber: 2)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal) // only horizontal padding
                })
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
