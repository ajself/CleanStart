# Clean Start

Clean Start is a remix of the [Clean Swift](http://clean-swift.com/) templates.

## Why Clean Start?

* Use [one true brace style](https://en.wikipedia.org/wiki/Indentation_style#Variant:_1TBS_.28OTBS.29) over the default templates [Allman brace style](https://en.wikipedia.org/wiki/Indentation_style#Allman_style).
* Use `guard` to return early in some places. 
* Use extensions to organize code into logical sections.
* Provide templates for apps that manage views in code.
* Provide default access levels for classes, methods, and properties.

## What's "Clean"?

To learn more about Clean Swift and the VIP cycle, read:

http://clean-swift.com/clean-swift-ios-architecture

There is a sample app available at:

https://github.com/Clean-Swift/CleanStore

## Templates

Templates are shared from the repo and have to be managed **manually**. To install the Clean Start Swift Xcode templates clone or download this repo and then:

*To install templates for storyboards and view code*
`$: make install_templates`

*To install templates for just storyboards*
`$: make install_storyboard_templates`

*To install templates for just view code*
`$: make install_viewcode_templates`

To uninstall the Xcode templates, run:

`$: make uninstall_templates`

## Using Clean Start

Add the pod to your Podfile

`pod 'CleanStart', git: 'https://github.com/ajself/CleanStart.git'`

## If you are managing views in code:

Install the Clean Start pod

`$: pod install`

And the Clean Start pod includes only a single helpful file: `ViewConfigurable.swift`.

It is important to first understand [Clean Swift](http://clean-swift.com/clean-swift-ios-architecture) in general, then read the following to see how Clean Start differs.

## Clean Start Format

View Controllers/Views are now organized into logical sections using extensions.
  1. Object lifecycle (instance specific methods such as initializers).
  1. View lifecycle (instance specific methods such as `viewDidLoad`).
  1. Inputs, sectioned into use case specific areas. This is where you place your protocol conformance methods.
  1. *View code only* View configuration by conforming to `ViewConfigurable`.
