//
//  ContentView.swift
//  NextSongApp
//
//  Created by Nikolay Pochekuev on 06.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying: Bool = true
    let combinedTransition = AnyTransition(.scale(0).combined(with: .opacity))

    var body: some View {
        Button {
            isPlaying.toggle()
            withAnimation(.bouncy(duration: 0.6)) {
                isPlaying.toggle()
            }
        } label: {
            HStack(spacing: 4) {
                if isPlaying {
                    Image (systemName: "play.fill")
                        .font(.largeTitle)
                        .frame(width: 20)
                        .transition(combinedTransition)
                }
                Image (systemName: "play.fill")
                    .font(.largeTitle)
                    .frame(width: 20)
                if !isPlaying {
                    Image (systemName: "play.fill")
                        .font(.largeTitle)
                        .frame(width: 20)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
