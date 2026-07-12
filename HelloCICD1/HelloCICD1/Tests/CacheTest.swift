//
//  CacheTest.swift
//  PerformancePlaygroundApp
//
//  Created by Mahfuz on 2026-07-10.
//

import Foundation
import SwiftUI

@Observable
class CacheTest {

    var images: [Data] = []

    func store() {

        let data = Data(repeating: 0,
                        count: 5_000_000)

        images.append(data)

        print(images.count)
    }
}
