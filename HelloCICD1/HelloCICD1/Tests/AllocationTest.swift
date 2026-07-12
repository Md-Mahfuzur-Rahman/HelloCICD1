//
//  AllocationTest.swift
//  PerformancePlaygroundApp
//
//  Created by Mahfuz on 2026-07-10.
//

class AllocationTest {

    var arrays: [[Int]] = []

    func allocate() {

        for _ in 0..<300 {

            arrays.append(
                Array(repeating: 1,
                      count: 100000)
            )
        }

        print(arrays.count)
    }
}
