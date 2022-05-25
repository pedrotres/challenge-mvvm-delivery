//
//  Coordinator.swift
//  DeliveryAppChallenge
//
//  Created by pedro tres on 25/05/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var presenter: UINavigationController { get set }
    
    func start()
}
