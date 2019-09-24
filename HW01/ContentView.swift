//
//  ContentView.swift
//  HW01
//
//  Created by User06 on 2019/9/24.
//  Copyright © 2019 User06. All rights reserved.
//

import SwiftUI

struct ContentView: View {
var body: some View {
    ZStack{
        //頭
        Path{ (path) in
            path.move (to: CGPoint(x:60, y:330))
            path.addQuadCurve(to:CGPoint(x:360, y:330), control:CGPoint(x:210, y:50))
            path.addQuadCurve(to:CGPoint(x:300, y:400), control:CGPoint(x:420, y:420))
            path.addQuadCurve(to:CGPoint(x:120, y:400), control:CGPoint(x:210, y:390))
            path.addQuadCurve(to:CGPoint(x:60, y:330), control:CGPoint(x:0, y:420))
        }
        .fill(Color(red: 0.9882, green: 0.647, blue: 0.2274))
        
        //陰影
        Path(ellipseIn: CGRect(x: 75, y: 330, width: 280, height: 80))
            .fill(Color(red: 0.4313, green: 0.2862, blue: 0.1137))
        
        //身體
        Path{ (path) in
            path.move(to: CGPoint(x:130, y:360))
            path.addQuadCurve(to:CGPoint(x:120, y:550), control:CGPoint(x:20, y:530))
            path.addQuadCurve(to:CGPoint(x:300, y:550), control:CGPoint(x:210, y:570))
            path.addQuadCurve(to:CGPoint(x:310, y:360), control:CGPoint(x:420, y:530))
            path.addQuadCurve(to:CGPoint(x:129, y:360), control:CGPoint(x:210, y:340))
        }
        .fill(Color(red: 1.0, green: 0.9176, blue: 0.8196))
        
        //眼睛
        Group{
            Path(ellipseIn: CGRect(x: 150, y: 400, width: 27, height: 27))
            .fill(Color(red: 0.4313, green: 0.2862, blue: 0.1137))
            Path(ellipseIn: CGRect(x: 265, y: 400, width: 27, height: 27))
            .fill(Color(red: 0.4313, green: 0.2862, blue: 0.1137))
        }
        //嘴巴
        Path{(path) in
            path.move(to:CGPoint(x:190, y:445))
            path.addQuadCurve(to:CGPoint(x:220, y:450), control:CGPoint(x:180, y:480))
            path.addQuadCurve(to:CGPoint(x:250, y:445), control:CGPoint(x:260, y:480))
        }
        .stroke(Color(red: 0.4313, green: 0.2862, blue: 0.1137), lineWidth:CGFloat(6))
        
        //腮紅
        Group{
            Path(ellipseIn: CGRect(x: 100, y: 440, width: 45, height: 22))
            .fill(Color(red: 0.9686, green: 0.6392, blue: 0.6))
            Path(ellipseIn: CGRect(x: 295, y: 440, width: 45, height: 22))
            .fill(Color(red: 0.9686, green: 0.6392, blue: 0.6))
        }
        //斑點
        Group{
            Path(ellipseIn: CGRect(x: 250, y: 250, width: 70, height: 70))
            .fill(Color(red: 1.0, green: 0.7803, blue: 0.2196))
            Path{(path) in
                path.move(to:CGPoint(x:250, y:200))
                path.addQuadCurve(to:CGPoint(x:170, y:200), control:CGPoint(x:200, y:230))
                path.addQuadCurve(to:CGPoint(x:250, y:200), control:CGPoint(x:200, y:178))
            }
            .fill(Color(red: 1.0, green: 0.7803, blue: 0.2196))
            Path{(path) in
                path.move(to:CGPoint(x:120, y:340))
                path.addQuadCurve(to:CGPoint(x:220, y:330), control:CGPoint(x:180, y:240))
                path.addQuadCurve(to:CGPoint(x:120, y:340), control:CGPoint(x:180, y:329))
            }
            .fill(Color(red: 1.0, green: 0.7803, blue: 0.2196))
            Path{(path) in
                path.move(to:CGPoint(x:140, y:220))
                path.addQuadCurve(to:CGPoint(x:90, y:280), control:CGPoint(x:190, y:290))
                path.addQuadCurve(to:CGPoint(x:140, y:224), control:CGPoint(x:147, y:205))
            }
            .fill(Color(red: 1.0, green: 0.7803, blue: 0.2196))
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
