//
//  MainViewController.swift
//  ARProject
//
//  Created by Niels Boerkamp on 20/11/2017.
//  Copyright © 2017 Niels Boerkamp. All rights reserved.
//

import UIKit
import UserNotifications

class MainViewController: UIViewController, UNUserNotificationCenterDelegate {
    var isGrantedNotificationAccess:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert,.sound,.badge],
            completionHandler: { (granted,error) in
                self.isGrantedNotificationAccess = granted
        }
        )
    }
    
    @IBAction func send10SecNotification(_ sender: UIButton) {
        if isGrantedNotificationAccess{
            //add notification code here
            
            //Set the content of the notification
            let content = UNMutableNotificationContent()
            content.title = "10 Second Notification Demo"
            content.subtitle = "From MakeAppPie.com"
            content.body = "Notification after 10 seconds - Your pizza is Ready!!"
            
            //Set the trigger of the notification -- here a timer.
            let trigger = UNTimeIntervalNotificationTrigger(
                timeInterval: 10.0,
                repeats: false)
            
            //Set the request for the notification from the above
            let request = UNNotificationRequest(
                identifier: "10.second.message",
                content: content,
                trigger: trigger
            )
            
            //Add the notification to the currnet notification center
            UNUserNotificationCenter.current().add(
                request, withCompletionHandler: nil)
            
        }
    }
}
