//
//  ContentView.swift
//  TwentyFour
//
//  Created by 越智修司 on 2020/06/28.
//  Copyright © 2020 ponpoko.tv. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            ArcShape(0.0, 360.0).fill(Color.init(white: 0.9))
            ArcShape(0.0, 180.0).fill(Color(white:0.5))
            //SectorShape(start:30, end:60, width:50).fill(Color.red)
            TimeSlot(start: 0, end: 30, clockWise: false)
                .stroke(style:StrokeStyle(lineWidth: 40, lineCap: .butt)).foregroundColor(Color.green)
            //Scale().stroke(style:StrokeStyle(lineWidth: 5, lineCap: .butt)).foregroundColor(Color.red)
            ScaleView()
            HandView(date:Date())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
