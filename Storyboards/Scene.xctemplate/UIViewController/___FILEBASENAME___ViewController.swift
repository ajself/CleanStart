//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

public protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

// MARK: - Object lifecycle

public class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___DisplayLogic {
  // View properties
  // @IBOutlet weak var nameTextField: UITextField!

  // VIP properties
  public var interactor: ___VARIABLE_sceneName___BusinessLogic?
  public var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
}
  
  // MARK: - VIP configuration
 
extension ___VARIABLE_sceneName___ViewController {
  private func setup() {
    let viewController = self
    let interactor = ___VARIABLE_sceneName___Interactor()
    let presenter = ___VARIABLE_sceneName___Presenter()
    let router = ___VARIABLE_sceneName___Router()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
}

// MARK: - Routing

extension ___VARIABLE_sceneName___ViewController {
  override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let scene = segue.identifier else { return }

    let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")

    guard let router = router, router.responds(to: selector) else { return }

    router.perform(selector, with: segue)
  }
}

// MARK: - View lifecycle

extension ___VARIABLE_sceneName___ViewController {
  override public func viewDidLoad() {
    super.viewDidLoad()
    doSomething()
  }
}

// MARK: - Inputs

extension ___VARIABLE_sceneName___ViewController {
  // MARK: - Something
  
  internal func doSomething() {
    let request = ___VARIABLE_sceneName___.Something.Request()

    interactor?.doSomething(request: request)
  }

  public func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
    // nameTextField.text = viewModel.name
  }
}