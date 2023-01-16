//
//  weatherModel.swift
//  Clima
//
//  Created by DONIYORBEK IBROKHIMOV on 15/01/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct weatherModel {
    let conditionId: Int
    let cityName:String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        var condition:String
        
        switch conditionId {
        case 200...232:
            condition = "cloud.bolt"
        case 300...321:
            condition = "cloud.drizzle"
        case 500...531:
            condition = "cloud.rain"
        case 600...622:
            condition = "cloud.snow"
        case 701...781:
            condition = "cloud.fog"
        case 800:
            condition = "sun.max"
        case 801...804:
            condition = "cloud"
        default:
            condition = "Error input"
        }
        
        return condition
    }
}
