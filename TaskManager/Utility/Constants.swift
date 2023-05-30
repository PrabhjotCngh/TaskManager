//
//  Constants.swift
//  TaskManager
//
//  Created by M_2195552 on 2023-05-30.
//

import SwiftUI

//MARK: - Formatter
let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

//MARK: - UI
var backgroundGradient: LinearGradient {
  return LinearGradient(gradient: Gradient(colors: [.pink, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

//MARK: - UX
let feedback = UINotificationFeedbackGenerator()
