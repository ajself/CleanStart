//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

import CleanStart

// MARK: - Object lifecycle

public class ___VARIABLE_sceneName___CollectionViewCell: UICollectionViewCell {
  // View properties
  // let mySubView = UIView()

  override public init(frame: CGRect) {
    super.init(frame: frame)
    setupViewConfiguration()
  }

  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupViewConfiguration()
  }
}

// MARK: - View lifecycle

extension ___VARIABLE_sceneName___CollectionViewCell {
  // override func layoutSubviews() {
  //   super.layoutSubviews()
  //
  //   mySubView.layer.cornerRadius = mySubView.frame.height / 2
  // }
}

// MARK: - View configuration

extension ___VARIABLE_sceneName___TableViewCell: ViewConfigurable {
  public func setupViewHierarchy() {
    // contentView.addSubview(mySubView)
  }

  public func setupViews() {
    // mySubView.backgroundColor = .white
  }

  public func setupConstraints() {

  }
}