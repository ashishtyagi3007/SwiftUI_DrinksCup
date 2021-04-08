//
//  ContentView.swift
//  SwiftUI_DrinksCup
//
//  Created by Ashish Tyagi on 08/04/21.
//

import SwiftUI

struct ContentView: View {
    var color = Color(hex: "155498")

    var body: some View {
        ZStack {
            DrinkHolderCupShape()
                .stroke(lineWidth: 3)
                .shadow(radius: 4)
            ZStack {
                color
            }
            .mask(DrinkHolderCupShape())
            CapView()
                .shadow(radius: 2)
        }
        .scaleEffect(1.25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.lightBlue
                .edgesIgnoringSafeArea(.all)
            ContentView()
        }
        
    }
}
