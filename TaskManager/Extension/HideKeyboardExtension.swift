//
//  HideKeyboardExtension.swift
//  TaskManager
//
//  Created by M_2195552 on 2023-05-30.
//

import SwiftUI

#if canImport(UIKit)
extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
#endif
