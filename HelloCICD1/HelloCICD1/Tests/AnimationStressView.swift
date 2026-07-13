//
//  AnimationStressView.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//


import SwiftUI

struct AnimationStressView: View {

    @State private var boxes: [UUID] = []

    var body: some View {

        ScrollView {

            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 6)) {

                ForEach(boxes, id: \.self) { _ in

                    Rectangle()
                        .fill(.blue)
                        .frame(width: 40,
                               height: 40)
                }
            }
        }
        .toolbar {

            Button("Add 1000") {

                for _ in 0..<1000 {
                    boxes.append(UUID())
                }
            }
        }
    }
}