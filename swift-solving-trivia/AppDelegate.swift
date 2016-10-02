//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var statesAndCapitals = [
        "Alabama":"Montgomery",
        "Alaska":"Juneau",
        "Arizona":"Phoenix",
        "Arkansas":"Little Rock",
        "California":"Sacramento",
        "Colorado":"Denver",
        "Connecticut":"Hartford",
        "Delaware":"Dover",
        "Florida":"Tallahassee",
        "Georgia":"Atlanta",
        "Hawaii":"Honolulu",
        "Idaho":"Boise",
        "Illinois":"Springfield",
        "Indiana":"Indianapolis",
        "Iowa":"Des Moines",
        "Kansas":"Topeka",
        "Kentucky":"Frankfort",
        "Lousiana":"Baton Rouge",
        "Maine":"Augusta",
        "Maryland":"Annapolis",
        "Massassachusetts":"Boston",
        "Michigan":"Lansing",
        "Minnesota":"Saint Paul",
        "Mississippi":"Jackson",
        "Missouri":"Jefferson City",
        "Montana":"Helena",
        "Nebraska":"Lincoln",
        "Nevada":"Carson City",
        "New Hampshire":"Concord",
        "New Jersey":"Trenton",
        "New Mexico":"Santa Fe",
        "New York":"Albany",
        "North Carolina":"Raleigh",
        "North Dakota":"Bismarck",
        "Ohio":"Columbus",
        "Oklahoma":"Oklahoma City",
        "Oregon":"Salem",
        "Pennsylvania":"Harrisburg",
        "Rhode Island":"Providence",
        "South Carolina":"Columbia",
        "South Dakota":"Pierre",
        "Tennessee":"Nashville",
        "Texas":"Austin",
        "Utah":"Salt Lake City",
        "Vermont":"Montpelier",
        "Virgina":"Richmond",
        "Washington":"Olympia",
        "West Virginia":"Charleston",
        "Wisconsin":"Madison",
        "Wyoming":"Cheyenne"
    ]
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        var notSimilar: String = ""
        var stateName: String
        var capitalName: String
        var stateNameCharacters = [Character]()
        var capitalNameCharacters = [Character]()
        
        
        for (state,capital) in statesAndCapitals {
            var sharedArray = [String]()
            stateName = state.lowercased()
            capitalName = capital.lowercased()
            for character in stateName.characters {
                stateNameCharacters.append(character)
                
            }
            for character in capitalName.characters {
                capitalNameCharacters.append(character)
            }
            for each in stateNameCharacters {
                if capitalNameCharacters.contains(each) {
                    sharedArray.append(String(each))
                    print("Shares \(each)")
                }
            }
            if sharedArray.isEmpty {
                notSimilar = "\(state)"
            }
            print("State Name: \(stateNameCharacters)")
            print("Capital Name: \(capitalNameCharacters)")
            stateNameCharacters.removeAll()
            capitalNameCharacters.removeAll()
        }
        print(notSimilar)
        return notSimilar
    }
    
    
    
    
}

