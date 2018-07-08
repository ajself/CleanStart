//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

public protocol ___VARIABLE_sceneName___PresentationLogic {
  func presentSomething(response: ___VARIABLE_sceneName___.Something.Response)
}

public class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {
  // VIP properties
  weak public var viewController: ___VARIABLE_sceneName___DisplayLogic?
}

// MARK: - Inputs

extension ___VARIABLE_sceneName___Presenter {
  // MARK: - Something
  
  public func presentSomething(response: ___VARIABLE_sceneName___.Something.Response) {
    let viewModel = ___VARIABLE_sceneName___.Something.ViewModel()
    
    viewController?.displaySomething(viewModel: viewModel)
  }
}