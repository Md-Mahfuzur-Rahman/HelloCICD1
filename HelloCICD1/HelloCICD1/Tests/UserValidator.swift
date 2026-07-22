//
//  UserValidator.swift
//  HelloCICD1
//
//  Created by Mahfuz on 2026-07-21.
//


import Foundation

struct UserValidator {

    func isValidEmail(_ email: String) -> Bool {
        email.contains("@") && email.contains(".")
    }

    func isValidPassword(_ password: String) -> Bool {
        password.count >= 8
    }
}
