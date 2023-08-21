//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Beshoy Eskarous on 8/17/23.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    
    
    @StateObject var listViewModel: ListViewModel = ListViewModel() 
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
            .environmentObject(listViewModel)
          
        }
    }
}
