//
//  ContentView.swift
//  FancyControl
//
//  Created by LiYong on 21.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var textColor = Color.blue
    @State var isShowing = false
    @State var curColor  = Color.red
    
    let colors = [Color.blue, Color.red, Color.green, Color.yellow]
    
    var body: some View {
        
        EmptyView()
            .animation(.easeInOut(duration: 0.3))
            .frame(width: self.isShowing ? 80 : 100, height: self.isShowing ? 80 : 100)
            .background(textColor)
            .cornerRadius(self.isShowing ? 40 : 50)
            .onTapGesture {
                self.isShowing.toggle()
        }
        .overlay(
            ZStack {
                ForEach(0 ... 3, id: \.self) { index in
                    self.createCircle(index:Double(index),color: self.colors[index]).onTapGesture {
                        self.textColor = self.colors[index]
                        self.isShowing.toggle()
                    }
                }
            }
            .opacity(self.isShowing ? 1 : 0)
            .rotationEffect(.degrees(self.isShowing ? 0 : 180))
            .animation(.easeInOut(duration: 0.3))
        )
    }
    
    func createCircle(index:Double,color:Color) -> some View{
        let from:CGFloat = CGFloat(index * 0.25)
        let to:CGFloat = CGFloat((index+1) * 0.25)
        
        let circle = Circle().trim(from:from ,to: self.isShowing ? to : CGFloat(index * 0.25))
            .stroke(color, lineWidth: 40)
            .animation(.easeInOut(duration: 0.3))
            .frame(width: 200, height: 200)
        
        return circle
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
