//
//  ListViewModel.swift
//  ToDoApp
//
//  Created by Beshoy Eskarous on 8/20/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init () {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "this is the first title from model", isCompleted: false),
            ItemModel(title: "this is the second", isCompleted: true),
            ItemModel(title: "third", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
