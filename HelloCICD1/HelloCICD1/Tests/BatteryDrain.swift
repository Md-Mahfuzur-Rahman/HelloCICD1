//
//  BatteryDrain.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//


import Foundation

class BatteryDrain {

    var timer: Timer?

    func start() {

        timer = Timer.scheduledTimer(withTimeInterval: 0.001,
                                     repeats: true) { _ in

            print(Date())
        }
    }
}