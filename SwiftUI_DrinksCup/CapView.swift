//
//  CapView.swift
//  SwiftUI_DrinksCup
//
//  Created by Ashish Tyagi on 08/04/21.
//

import SwiftUI

struct CapView: View {
    
    // MARK:- variables
    let cXPos: CGFloat = 6
    let cYPos: CGFloat = -43
    
        // MARK:- views
    var body: some View {
        ZStack {
            GeometryReader { geo in
                let cX = geo.size.width / 2 + cXPos
                let cY = geo.size.height / 2 + cYPos
                                
                Path({path in
                    path.move(to: CGPoint(x: cX + 48, y: cY - 42))
                    path.addLine(to: CGPoint(x: cX + 60, y: cY - 42))
                    path.addLine(to: CGPoint(x: cX + 58, y: cY - 56))
                    path.addLine(to: CGPoint(x: cX - 72, y: cY - 56))
                    path.addLine(to: CGPoint(x: cX - 76, y: cY - 42))
                    path.closeSubpath()
                })
                .foregroundColor(Color(hex: "fafafa"))
                
    
                Path({path in
                    path.move(to: CGPoint(x: cX - 64, y: cY - 56))
                    path.addLine(to: CGPoint(x: cX - 62, y: cY - 70))
                    path.addLine(to: CGPoint(x: cX + 46, y: cY - 70))
                    path.addLine(to: CGPoint(x: cX + 48, y: cY - 56))
                })
                .foregroundColor(Color(hex: "fafafa"))

                Path({path in
                    path.move(to: CGPoint(x: cX + 6, y: cY - 70))
                    path.addLine(to:    CGPoint(x: cX + 10, y: cY - 96))
                    path.addLine(to: CGPoint(x: cX + 28, y: cY - 103))
                    path.addLine(to: CGPoint(x: cX + 30, y: cY - 97))
                    path.addLine(to: CGPoint(x: cX + 16, y: cY - 92))
                    path.addLine(to: CGPoint(x: cX + 13, y: cY - 70))
                })
                .foregroundColor(Color(hex: "fafafa"))
            }
        }
    }
}

struct CapView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(hex: "")
                .edgesIgnoringSafeArea(.all)
            CapView()
            
        }
    }
}
