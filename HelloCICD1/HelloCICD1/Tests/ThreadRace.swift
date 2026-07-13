//
//  ThreadRace.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//
import Foundation
import SwiftUI

class ThreadRace {

    var counter = 0

    func start() {

        DispatchQueue.global().async {

            for _ in 0..<10000 {
                self.counter += 1
            }
        }

        DispatchQueue.global().async {

            for _ in 0..<10000 {
                self.counter += 1
            }
        }
    }
}
