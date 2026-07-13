//
//  FileTest.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//


import Foundation

class FileTest {

    func writeLargeFile() {

        let url = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        )[0]
        .appendingPathComponent("large.txt")

        let text = String(repeating: "Hello\n",
                          count: 500000)

        try? text.write(to: url,
                        atomically: true,
                        encoding: .utf8)
    }
}