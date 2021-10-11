//
//  ContentView.swift
//  Practice
//
//  Created by Abhilasha Chumbalkar on 08/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var deg = 90

    @State private var selected : Bool = false
    var body: some View {
        VStack {
            HStack {
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
            }
            HStack {
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
            }
            HStack {
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
            }
            HStack {
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
            }
            HStack {
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
                VView(selected: selected)
            }
        }
        .clipShape(Circle())
        .rotationEffect(Angle(degrees: selected ? 90 : 270))
        .animation(Animation.easeIn(duration: 0.7).repeatForever(autoreverses: true))
        .onTapGesture {
            selected.toggle()
        }
    }
}

struct VView: View {

    var selected : Bool
    
    var body: some View {
        VStack {
            HStack {
                RView(selected: selected)
                RView(selected: selected)
                RView(selected: selected)
            }
            HStack {
                RView(selected: selected)
                RView(selected: selected)
                RView(selected: selected)
            }
            HStack {
                RView(selected: selected)
                RView(selected: selected)
                RView(selected: selected)
            }
        }
        
        
    }
}

struct RView: View {
    @State private var color : Color = Color.red
    @State private var width : CGFloat = 10
    @State private var degree: Double = 90
    @State private var cornerRadius : CGFloat = 0
    var selected : Bool
    
    var body: some View {
                Rectangle()
                    .foregroundColor(selected ? Color.random : .red)
                    .frame(width: selected ? width * 2.0 : width/2.0, height: selected ? width * 2.0 : width/2.0, alignment: .center)
                    .cornerRadius((selected ? self.width : 0))
                    .animation(Animation.easeIn(duration: 0.7).repeatForever(autoreverses: true))
                    .rotationEffect(Angle(degrees: selected ? degree : degree * 2))
        
    }
}

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}

