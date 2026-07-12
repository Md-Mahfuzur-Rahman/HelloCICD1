//
//  CPUStress.swift
//  PerformancePlaygroundApp
//
//  Created by Mahfuz on 2026-07-10.
//

import Foundation

class CPUStress {

    func calculatePrimeNumbers() {

        var primes: [Int] = []

        for number in 2...100000 {

            var prime = true

            for i in 2..<number {

                if number % i == 0 {

                    prime = false
                    break
                }
            }

            if prime {
                primes.append(number)
            }
        }

        print(primes.count)
    }
}
