//
//  RestaurantDetailCoordinator.swift
//  DeliveryAppChallenge
//
//  Created by pedro tres on 25/05/22.
//

import Foundation

import UIKit

final class RestaurantDetailCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var presenter: UINavigationController
    weak var parentCoordinator: AppCoordinator?
    
    init(presenter: UINavigationController){
        self.presenter = presenter
    }
    
    func start() {
        let viewModel = HomeViewModel(service: DeliveryApi())
        viewModel.coordinator = self
        let viewController = HomeViewController(viewModel: viewModel)
        
        presenter.pushViewController(viewController, animated: false)
    }
    
    func onFinish() {
        parentCoordinator?.childDidFinish(self)
    }
}
