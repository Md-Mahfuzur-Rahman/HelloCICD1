//
//  ConcurrencyTest.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//


class ConcurrencyTest {

    func run() {

        Task {

            await withTaskGroup(of: Void.self) { group in

                for _ in 0..<50 {

                    group.addTask {

                        var sum = 0

                        for i in 0..<2_000_000 {
                            sum += i
                        }

                        print(sum)
                    }
                }
            }
        }
    }
}