//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import SwiftUI

struct ContentView: View {

    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    func generateRandomNumber() {
        leftDiceNumber = Int.random(in: 1...6)
        rightDiceNumber = Int.random(in: 1...6)
    }
    
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button(action: generateRandomNumber, label: {
                    Text("Roll").font(.system(size: 50)).fontWeight(.heavy).foregroundStyle(.white).padding(.horizontal)
                }).background(.red)
            }.padding(.vertical)
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
