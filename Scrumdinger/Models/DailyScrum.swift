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
                       color: Color("Red")
            ),
            DailyScrum(title: "Tech",
                   attendees: ["Micheal", "Jim", "Stanley", "Phyllis"],
                   lengthInMinutes: 60,
                   color: Color("Yello"))
        ]
    }
}
