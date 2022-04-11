//
//  ContentView.swift
//  MoveSenseiData
//
//  Created by Jon Menna on 11.4.2022.
//

import SwiftUI


struct ContentView: View {
    

    var body: some View {
        var movesenseAcceleration: MovesenseAcceleration = load("testDataSensei.json")

        VStack {
            Text ("Movesense 206: ")
            Text("X: \(movesenseAcceleration.data[1].acc.arrayAcc[0].x)")
                .padding()
            Text("Y: \(movesenseAcceleration.data[1].acc.arrayAcc[0].y)")
                .padding()
            Text("Z: \(movesenseAcceleration.data[1].acc.arrayAcc[0].z)")
                .padding()
            Text ("Movesense 185: ")
            Text("X: \(movesenseAcceleration.data[1].acc.arrayAcc[0].x)")
                .padding()
            Text("Y: \(movesenseAcceleration.data[1].acc.arrayAcc[0].y)")
                .padding()
            Text("Z: \(movesenseAcceleration.data[1].acc.arrayAcc[0].z)")
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
