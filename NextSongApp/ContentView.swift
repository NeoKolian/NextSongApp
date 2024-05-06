//
//  ContentView.swift
//  NextSongApp
//
//  Created by Nikolay Pochekuev on 06.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    let combinedTransition = AnyTransition
        .slide
        .combined(with: .opacity)
    
    var body: some View {
        Button {
            withAnimation(.easeOut) {
                isPlaying.toggle()
            }
        } label: {
            if isPlaying {
                Image(systemName: "forward.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .transition(combinedTransition)
            } else {
                Image(systemName: "forward.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
