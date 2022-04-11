//
//  ContentView.swift
//  MoveSenseiData
//
//  Created by Jon Menna on 11.4.2022.
//

import SwiftUI


struct ContentView: View {
    
    /*
    var movesenseAcceleration206: MovesenseAcceleration = load("testDataSensei206.json")
    var movesenseAcceleration185: MovesenseAcceleration = load("testDataSensei185.json")
    
    let sensor1 = 186
    let sensor2 = 205
     */
    
    
    func totalAcceleration (sensorNumber: Int) -> Double {
        let moveSensei: MovesenseAcceleration = load("testDataSensei\(sensorNumber).json")
        var sum = 0.0
        for i in 1...moveSensei.data.count {
            let x = moveSensei.data[i - 1].acc.arrayAcc[0].x
            let z = moveSensei.data[i - 1].acc.arrayAcc[0].z
            let y = moveSensei.data[i - 1].acc.arrayAcc[0].y
            
            let sqrtXZ = sqrt(x*x + z*z)
            let accXYZ = sqrt(y*y + sqrtXZ)
            sum += accXYZ
        }
        return sum / Double(moveSensei.data.count)
    }
    
    
    func averageX (sensorNumber: Int) -> Double {
        let moveSensei: MovesenseAcceleration = load("testDataSensei\(sensorNumber).json")
        var sum = 0.0
        for i in 1...moveSensei.data.count {
            sum += abs(moveSensei.data[i - 1].acc.arrayAcc[0].x)
        }
        return sum / Double(moveSensei.data.count)
    }
    

    
    func averageY (sensorNumber: Int) -> Double {
        let moveSensei: MovesenseAcceleration = load("testDataSensei\(sensorNumber).json")
        var sum = 0.0
        for i in 1...moveSensei.data.count {
            sum += abs(moveSensei.data[i - 1].acc.arrayAcc[0].y)
        }
        return sum / Double(moveSensei.data.count)
    }
    
    
    func averageZ (sensorNumber: Int) -> Double {
        let moveSensei: MovesenseAcceleration = load("testDataSensei\(sensorNumber).json")
        var sum = 0.0
        for i in 1...moveSensei.data.count {
            sum += abs(moveSensei.data[i - 1].acc.arrayAcc[0].z)
        }
        return sum / Double(moveSensei.data.count)
    }
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Measurement 1: ")
                    .padding()
                Text("Movesense 206: ")
                Text("Total acceleration: \(totalAcceleration(sensorNumber: 2061))")
                    .padding()
               
                Text("Movesense 185: ")
                Text("Total acceleration: \(totalAcceleration(sensorNumber: 1851))")
                    .padding()
               
            }
            Spacer()
            VStack {
                Text("Measurement 2: ")
                    .padding()
                Text("Movesense 206: ")
                Text("Total acceleration: \(totalAcceleration(sensorNumber: 2062))")
                    .padding()
    
                Text("Movesense 185: ")
                Text("Total acceleration: \(totalAcceleration(sensorNumber: 1852))")
                    .padding()
            }
        }
    }
}

