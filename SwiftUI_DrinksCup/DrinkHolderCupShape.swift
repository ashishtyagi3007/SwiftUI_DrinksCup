//
//  DrinkHolderCupShape.swift
//  SwiftUI_DrinksCup
//
//  Created by Ashish Tyagi on 08/04/21.
//

import SwiftUI

struct DrinkHolderCupShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        let cX = rect.midX + 6
        let cY = rect.midY - 12
        
        
        var path = Path()
//
        path.move(to: CGPoint(x: cX - 60, y: cY - 84))
        path.addLine(to: CGPoint(x: cX - 48, y: cY + 94))
        
        path.addQuadCurve(to: CGPoint(x: cX - 33, y: cY + 100), control: CGPoint(x: cX - 45, y: cY + 100))
        path.addLine(to: CGPoint(x: cX, y: cY + 100))
//
        path.addQuadCurve(to: CGPoint(x: cX + 33, y: cY + 94), control: CGPoint(x: cX + 33, y: cY + 100))
       path.addLine(to: CGPoint(x: cX + 48, y: cY - 84))
        path.closeSubpath()
        
        return path
    }
    
}


struct DrinkHolderCupShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            DrinkHolderCupShape()
            .stroke(style: StrokeStyle(lineWidth: 4))
        }
    }
}
