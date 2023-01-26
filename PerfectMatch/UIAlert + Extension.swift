//
//  UIAlert.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 31.07.2022.
//


import UIKit
import Foundation
import SwiftUI

extension UIAlertController {
    class func alert(title:String, msg:String, target: UIViewController) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {
        (result: UIAlertAction) -> Void in
        })
        target.present(alert, animated: true, completion: nil)
    }
}
