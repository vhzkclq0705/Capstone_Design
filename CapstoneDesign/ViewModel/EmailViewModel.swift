//
//  EmailViewModel.swift
//  CapstoneDesign
//
//  Created by 권오준 on 2022/05/21.
//

import Foundation

class EmailViewModel {
    static let shared = EmailViewModel()
    
    var emails = [Email]()
    
    var countOfEmails: Int {
        return emails.count
    }
}
