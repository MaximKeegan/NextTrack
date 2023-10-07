//
//  ContentView.swift
//  NextTrack
//
//  Created by Maxim Keegan on 06.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isClicked : Bool = true
    var body: some View {
        VStack {
            Button () {
                withAnimation(Animation.interpolatingSpring(Spring(duration: 0.4))) {
                    isClicked = false
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    isClicked = true
                }

            } label: {
                ZStack{
                    Text("▶").font(.system(size: 50))
                        .scaleEffect(isClicked ? 0 : 1)
                        .offset(x: 0, y: 0)
                        .foregroundStyle(.blue.opacity( isClicked ? 0 : 1))
                    
                    Text("▶").font(.system(size: 50))
                        .offset(x: isClicked ? 0 : 20, y: 0)
                        .foregroundStyle(.blue.gradient)
                    
                    Text("▶").font(.system(size: 50))
                        .scaleEffect(isClicked ? 1 : 0)
                        .offset(x: isClicked ? 20 : 40, y: 0)
                        
                        .foregroundStyle(.blue.opacity( isClicked ? 1 : 0))
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
