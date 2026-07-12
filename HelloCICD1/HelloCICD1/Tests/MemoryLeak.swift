//
//  MemoryLeak.swift
//  PerformancePlaygroundApp
//
//  Created by Mahfuz on 2026-07-10.
//

import Foundation

class Person {

    var apartment: Apartment?
}

class Apartment {

    var owner: Person?
}

class MemoryLeak {

    private var leaks: [Person] = []

    func createLeak() {

        let p = Person()
        let a = Apartment()

        p.apartment = a
        a.owner = p

        leaks.append(p)

        print("Leak Created")
    }
}
