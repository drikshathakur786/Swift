//
//  Models.swift
//  L28_DataPassingProblem
//
//  Created by Driksha Thakur on 12/08/25.
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
