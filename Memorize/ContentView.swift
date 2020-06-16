//
//  ContentView.swift
//  Memorize
//
//  Created by Rohit Saini on 15/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4){ index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

//MARK:- CardView
struct CardView:View{
    var isFaceUp:Bool
    var body: some View{
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth:3)
                Text("🇮🇳")
            }
            else{
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
