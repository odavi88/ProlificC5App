//
//  ViewController.swift
//  ProlificC5
//
//  Created by Omar Davidson II on 3/20/23.
//

import UIKit
import EventKit

class ProlificViewController: UIViewController {
    
    private let eventStore = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestAccessCalendarToCalendar()
    }
    
    func requestAccessCalendarToCalendar() {
        eventStore.requestAccess(to: .event) { success, error in
            
        }
    }
}
