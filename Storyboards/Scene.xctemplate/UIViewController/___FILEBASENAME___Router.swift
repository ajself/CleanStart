//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

@objc protocol ___VARIABLE_sceneName___RoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ___VARIABLE_sceneName___DataPassing {
  var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

// MARK: - Object lifecycle

class ___VARIABLE_sceneName___Router: NSObject, ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
  // VIP properties
  var dataStore: ___VARIABLE_sceneName___DataStore?
  weak var viewController: ___VARIABLE_sceneName___ViewController?
}

// MARK: - Routing

extension ___VARIABLE_sceneName___Router {
  // func routeToSomewhere(segue: UIStoryboardSegue?) {
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  // }
}

// MARK: - Navigation

extension ___VARIABLE_sceneName___Router {
  // func navigateToSomewhere(source: ___VARIABLE_sceneName___ViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  // }
}

// MARK: - Passing data

extension ___VARIABLE_sceneName___Router {
  // func passDataToSomewhere(source: ___VARIABLE_sceneName___DataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  // }
}