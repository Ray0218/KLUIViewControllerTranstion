#
# Be sure to run `pod lib lint KLUIViewControllerTranstion.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KLUIViewControllerTranstion'
  s.version          = '0.1.4'
  s.summary          = 'A short description of KLUIViewControllerTranstion.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Ray0218/KLUIViewControllerTranstion'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ray0218' => 'ray_ios@163.com' }
  s.source           = { :git => 'https://github.com/Ray0218/KLUIViewControllerTranstion.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KLUIViewControllerTranstion/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KLUIViewControllerTranstion' => ['KLUIViewControllerTranstion/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
