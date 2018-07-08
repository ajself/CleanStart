//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

public protocol ___VARIABLE_sceneName___BusinessLogic {
  func doSomething(request: ___VARIABLE_sceneName___.Something.Request)
}

public protocol ___VARIABLE_sceneName___DataStore {
  // var name: String { get set }
}

public class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
  // Data store properties
  // public var name: String = ""

  // VIP properties
  public var presenter: ___VARIABLE_sceneName___PresentationLogic?
  public var worker: ___VARIABLE_sceneName___Worker?
}

// MARK: - Inputs

extension ___VARIABLE_sceneName___Interactor {
  // MARK: - Something
  
  public func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
    worker = ___VARIABLE_sceneName___Worker()
    worker?.doSomeWork()
    
    let response = ___VARIABLE_sceneName___.Something.Response()
    presenter?.presentSomething(response: response)
  }
}