//
//  ViewController.swift
//  Notifications
//
//  Created by Matheus Gois on 22/05/19.
//  Copyright © 2019 Matheus Gois. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    
    @IBAction func send(_ sender: Any) {
        let notificationType = "Local Notification"
        self.appDelegate?.scheduleNotification(notificationType: notificationType)
        self.appDelegate?.scheduleNotification(notificationType: notificationType)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (granted, error) in
            if granted {
                print("yes")
            } else {
                print("No")
            }
        }
        
    }
    
    
    
}

