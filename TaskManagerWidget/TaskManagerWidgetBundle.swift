//
//  TaskManagerWidgetBundle.swift
//  TaskManagerWidget
//
//  Created by M_2195552 on 2023-05-30.
//

import WidgetKit
import SwiftUI

@main
struct TaskManagerWidgetBundle: WidgetBundle {
    var body: some Widget {
        TaskManagerWidget()
        TaskManagerWidgetLiveActivity()
    }
}
