//
//  DataDelegate.swift
//  DelegateDataPassingPrac
//
//  Created by Driksha Thakur on 13/08/25.
//


import Foundation

protocol EventData {
    func passData(
        title: String,
        date: String,
        location: String,
        count: String
    )
}
