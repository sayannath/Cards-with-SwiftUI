//
//  courseModel.swift
//  stackApps
//
//  Created by Sayan Nath on 12/05/20.
//  Copyright © 2020 Sayan Nath. All rights reserved.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var courseName: String
    var coursePrice: String
    var courseImage: String
    var courseColor: Color
}
