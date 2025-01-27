#
# Be sure to run `pod lib lint OSPKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OSPKit'
  s.version          = '1.1.3'
  s.summary          = 'Used for verifying document information and conducting liveness detection.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'The OSPSDK Inquiry flow lets you securely and seamlessly collect your user\'s information'

  s.homepage         = 'https://github.com/aai-osp-fe/aai-osp-ios-sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loong' => 'yulong.chen.tec@advancegroup.com' }
  s.source           = { :git => 'https://github.com/aai-osp-fe/aai-osp-ios-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version    = '5.0'
#  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  s.xcconfig = { 'ARCHS' => 'arm64' }
  
  s.source_files = 'OSPKit/Classes/**/*'
  s.vendored_frameworks = ['OSPKit/Frameworks/FaceTecSDK.xcframework',
                           'OSPKit/Frameworks/OneStop.xcframework']
                           
  s.dependency 'PromiseKit', '8.1.1'
  s.dependency 'SwiftMessages', '9.0.9'
  s.dependency 'Moya', '15.0.0'
  
  # s.resource_bundles = {
  #   'OSPKit' => ['OSPKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
