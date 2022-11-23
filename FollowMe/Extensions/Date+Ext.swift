//
//  Date+Ext.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 18.11.2022.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
