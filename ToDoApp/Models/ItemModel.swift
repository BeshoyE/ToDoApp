//
//  ItemModel.swift
//  ToDoApp
//
//  Created by Beshoy Eskarous on 8/19/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
