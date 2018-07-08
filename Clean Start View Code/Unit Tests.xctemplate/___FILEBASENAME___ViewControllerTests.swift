//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
  // MARK: - Subject under test
  
  var sut: ___VARIABLE_sceneName___ViewController!
  var window: UIWindow!
  
  // MARK: - Test lifecycle
  
  override func setUp() {
    super.setUp()
    window = UIWindow()
    setup___VARIABLE_sceneName___ViewController()
  }
  
  override func tearDown() {
    window = nil
    super.tearDown()
  }
}

// MARK: - Test setup

extension ___VARIABLE_sceneName___ViewControllerTests {
  func setup___VARIABLE_sceneName___ViewController() {
    sut = ___VARIABLE_sceneName___ViewController()
  }
  
  func loadView() {
    window.addSubview(sut.view)
    RunLoop.current.run(until: Date())
  }
} 
  
// MARK: - Test doubles

extension ___VARIABLE_sceneName___ViewControllerTests {
  class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic {
    var doSomethingCalled = false
    
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
      doSomethingCalled = true
    }
  }
}

// MARK: - Tests

extension ___VARIABLE_sceneName___ViewControllerTests {
  func testShouldDoSomethingWhenViewIsLoaded() {
    // Given
    let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
    sut.interactor = spy
    
    // When
    loadView()
    
    // Then
    XCTAssertTrue(spy.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
  }
  
  func testDisplaySomething() {
    // Given
    let viewModel = ___VARIABLE_sceneName___.Something.ViewModel()
    
    // When
    loadView()
    sut.displaySomething(viewModel: viewModel)
    
    // Then
    //XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
  }
}
