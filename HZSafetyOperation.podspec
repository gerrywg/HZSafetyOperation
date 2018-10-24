#
# Be sure to run `pod lib lint HZSafetyOperation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HZSafetyOperation'
  s.version          = '0.0.1'
  s.summary          = 'HZSafetyOpeation is a simple way to let an object to be used for thread safe.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
HZSafetyOpeation is a simple way to let an object to be used for thread safe. you should to user update mothod for changing the object and read for read method.
                       DESC

  s.homepage         = 'https://github.com/gerrywg/HZSafetyOperation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gerrywg' => 'chwanggang@msn.com' }
  s.source           = { :git => 'https://github.com/gerrywg/HZSafetyOperation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HZSafetyOperation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HZSafetyOperation' => ['HZSafetyOperation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
