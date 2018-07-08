//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

import CleanStart

// MARK: - Object lifecycle

public class ___VARIABLE_sceneName___View: UIView {
  // View properties
  // let mySubView = UIView()

  public init() {
    super.init(frame: .zero)
    setupViewConfiguration()
  }

  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupViewConfiguration()
  }
}

// MARK: - View lifecycle

extension ___VARIABLE_sceneName___View {
  // override func layoutSubviews() {
  //   super.layoutSubviews()
  //
  //   mySubView.layer.cornerRadius = mySubView.frame.height / 2
  // }
}

// MARK: - View configuration

extension ___VARIABLE_sceneName___View: ViewConfigurable {
  public func setupViewHierarchy() {
    // addSubview(mySubView)
  }

  public func setupViews() {
    // mySubView.backgroundColor = .white
  }

  public func setupConstraints() {

  }
}