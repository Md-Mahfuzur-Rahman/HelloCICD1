//
//  NetworkTest.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-12.
//


import Foundation

class NetworkTest {

    func download() {

        let url = URL(string:
            "https://jsonplaceholder.typicode.com/posts")!

        URLSession.shared.dataTask(with: url) { _,_,_ in

        }.resume()
    }
}