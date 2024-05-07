//
//  ContentView.swift
//  NextSongApp
//
//  Created by Nikolay Pochekuev on 06.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false

    var body: some View {
        Button {
            isPlaying.toggle()
            withAnimation(.easeInOut(duration: 0.3)) {
                isPlaying.toggle()
            }
        } label: {
            ZStack {
                HStack(spacing: 6) {
                    if isPlaying {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .frame(width: 18)
                            .scaleEffect(isPlaying ? 1 : 0)
                    }
                    Image (systemName: "play.fill")
                        .font(.largeTitle)
                        .frame(width: 18)
                    if !isPlaying {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .frame(width: 18)
                            .scaleEffect(isPlaying ? 0 : 1)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
