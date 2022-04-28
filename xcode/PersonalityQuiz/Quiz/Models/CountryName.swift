//
//  CountryName.swift
//  Quiz
//
//  Created by Nurbakyt Madibek on 13.04.2022.
//

enum CountryName: Character {
    case russia = "🇷🇺"
    case usa = "🇺🇸"
    case germany = "🇩🇪"
    case japan = "🇯🇵"
    case ukraine = "🇺🇦"
    case greatBritain = "🇬🇧"
    
    
    var definition: String {
        switch self {
        case .russia:
            return "Россия"
        case .usa:
            return "Соединённые Штаты Америки"
        case .germany:
            return "Германия"
        case .japan:
            return "Япония"
        case .ukraine:
            return "Украина"
        case .greatBritain:
            return "Великобритания"
        
            
        }
    }
}
