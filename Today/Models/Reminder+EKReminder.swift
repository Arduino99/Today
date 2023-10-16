//
//  Reminder+EKReminder.swift
//  Today
//
//  Created by Arduino Mandarelli on 12/03/2023.
//

import EventKit
import Foundation

extension Reminder{
    init(with ekReminder: EKReminder) throws {
        guard let dueDate = ekReminder.alarms?.first?.absoluteDate else {
            throw TodayError.reminderHasNoDueDate
        }
        id = ekReminder.calendarItemIdentifier
        title = ekReminder.title
        self.dueDate = dueDate
        notes = ekReminder.notes
        isComplete = ekReminder.isCompleted
    }
}
