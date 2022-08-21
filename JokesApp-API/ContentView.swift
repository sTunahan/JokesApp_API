//
//  ContentView.swift
//  JokesApp-API
//
//  Created by Tunahan on 8/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    var body: some View {
        
        NavigationView {
            List(jokesVM.jokes) { variable in
                
                Text(variable.joke).fontWeight(.bold)
                
            }
            .navigationTitle((Text("Jokes")))
            .toolbar{
                Button( action: addJoke ){
                    Text("Get New Joke")
                }
            }
        }
        
        
    }
    
    func addJoke(){
        jokesVM.getJokes(requestNumber: 1) 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


