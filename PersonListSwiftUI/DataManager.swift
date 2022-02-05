//
//  DataManager.swift
//  PersonListSwiftUI
//
//  Created by Pavel Tsyganov on 04.02.2022.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    let names = ["Jacob", "Michael", "Olivia", "Ryan", "William",
                 "Isabella", "Grace", "Nathan", "Anna", "Christian"]
    let lastNames = ["Smith", "Jones", "Taylor", "Watson", "Brown",
                     "Davies", "Evans", "Wilson", "White", "Green"]
    let phones = ["3379980", "2674591", "3351855", "2674320", "3344895",
                  "2674832","3379948", "2674741", "3379977", "2674444"]
    let emails = ["pbir@ssau.ru", "teplotex@sau.ru", "acad@ssau.ru",
                  "vbodg@ssau.ru", "museum@gmail.com", "Career@ssau.ru",
                  "nsk@gmail.com", "mdk@icloud.com", "whiterabbit@gmail.com",
                  "rud@ssau.com"]
}
