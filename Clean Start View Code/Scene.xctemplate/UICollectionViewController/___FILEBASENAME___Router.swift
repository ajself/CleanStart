//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

public protocol ___VARIABLE_sceneName___RoutingLogic {
  func routeToSomewhere()
}

public protocol ___VARIABLE_sceneName___DataPassing {
  var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

// MARK: - Object lifecycle

public class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
  // VIP properties
  public var dataStore: ___VARIABLE_sceneName___DataStore?
  weak public var viewController: ___VARIABLE_sceneName___ViewController?
}

// MARK: - Routing

extension ___VARIABLE_sceneName___Router {
  public func routeToSomewhere() {
    // let destinationVC = SomewhereViewController()
    // let destinationDS = destinationVC.router!.dataStore!

    // passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    // navigateToSomewhere(source: viewController!, destination: destinationVC)
  }
}

// MARK: - Navigation

extension ___VARIABLE_sceneName___Router {
  // internal func navigateToSomewhere(source: ___VARIABLE_sceneName___ViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  // }
}

// MARK: - Passing data

extension ___VARIABLE_sceneName___Router {
  // internal func passDataToSomewhere(source: ___VARIABLE_sceneName___DataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  // }
}