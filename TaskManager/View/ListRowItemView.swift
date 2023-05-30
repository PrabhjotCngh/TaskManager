//
//  ListRowItemView.swift
//  TaskManager
//
//  Created by M_2195552 on 2023-05-30.
//

import SwiftUI

struct ListRowItemView: View {
    //MARK: - Properties
    @State private var isAnimating: Bool = false
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    //MARK: - Body
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? .pink : .primary)
                .padding(.vertical, 12)
                .animation(.default, value: isAnimating)
        } //: Toggle
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                isAnimating = true
                try? self.viewContext.save()
            }
        })
    }
}
