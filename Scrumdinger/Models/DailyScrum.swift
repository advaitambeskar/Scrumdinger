//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Advait Ambeskar on 09/10/21.
//

import Foundation
import SwiftUI

struct DailyScrum: Identifiable{
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design",
                       attendees: ["Cathy", "Pam", "Dwight"],
                       lengthInMinutes: 25,
                       color: Color.red
            ),
            DailyScrum(title: "Tech",
                   attendees: ["Micheal", "Jim", "Stanley", "Phyllis"],
                   lengthInMinutes: 60,
                       color: Color.yellow
            ),
            DailyScrum(title: "Fashion",
                   attendees: ["Micheal", "Creed", "Kelly", "Phyllis", "Dwight"],
                   lengthInMinutes: 45,
                       color: Color.green
            )
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = [""]
        var lengthInMinutes: Double = 5.0
        var color: Color = Color.gray
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
}
