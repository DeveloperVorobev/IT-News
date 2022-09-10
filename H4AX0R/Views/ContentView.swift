//
//  ContentView.swift
//  H4AX0R
//
//  Created by Владислав Воробьев on 04.07.2022.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack {
                    Text("\(post.points)")
                    Text(post.title)
                }
            } .listStyle(.plain)
                .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
