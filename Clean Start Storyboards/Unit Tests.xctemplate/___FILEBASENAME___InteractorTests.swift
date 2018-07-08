//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import XCTest

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
  // MARK: - Subject under test
  
  var sut: ___VARIABLE_sceneName___Interactor!
  
  // MARK: - Test lifecycle
  
  override func setUp() {
    super.setUp()
    setup___VARIABLE_sceneName___Interactor()
  }
  
  override func tearDown() {
    super.tearDown()
  }
}

// MARK: - Test setup

extension ___VARIABLE_sceneName___InteractorTests {
  func setup___VARIABLE_sceneName___Interactor() {
    sut = ___VARIABLE_sceneName___Interactor()
  }
}
  
// MARK: - Test doubles

extension ___VARIABLE_sceneName___InteractorTests {
  class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {
    var presentSomethingCalled = false
    
    func presentSomething(response: ___VARIABLE_sceneName___.Something.Response) {
      presentSomethingCalled = true
    }
  }
}

// MARK: - Tests

extension ___VARIABLE_sceneName___InteractorTests {
  func testDoSomething() {
    // Given
    let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
    sut.presenter = spy
    let request = ___VARIABLE_sceneName___.Something.Request()
    
    // When
    sut.doSomething(request: request)
    
    // Then
    XCTAssertTrue(spy.presentSomethingCalled, "doSomething(request:) should ask the presenter to format the result")
  }
}
