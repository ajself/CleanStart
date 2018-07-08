#
#  Be sure to run `pod spec lint Squeaky.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = 'CleanStart'
  s.version      = '0.0.1'
  s.summary      = 'Keep your iOS apps Clean using Uncle Bob\'s Clean architecture'
  s.homepage     = 'https://github.com/ajself/CleanStart'
  s.license      = 'MIT'
  s.license      = { type: 'MIT', file: 'LICENSE' }
  s.author       = 'AJ Self'
  s.source       = { git: 'https://github.com/ajself/CleanStart.git', tag: s.version }
  s.source_files  = 'Source/*.swift'
  s.ios.deployment_target = '8.0'
end
