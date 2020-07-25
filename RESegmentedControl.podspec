#
# Be sure to run `pod lib lint RESegmentedControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RESegmentedControl'
  s.version          = '0.3.2'
  s.summary          = 'A Customizable Segmented Control.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Customizable segmented control with style presets. It can display both texts and images, vertically or horizontally. Able to download and cache images. Adaptive Layout-Driven UI. Natural and smooth animation between segments switch.
                       DESC

  s.homepage         = 'https://github.com/sh-khashimov/RESegmentedControl'
  s.documentation_url = 'https://sh-khashimov.github.io/RESegmentedControl'
  s.screenshots     = 'https://raw.githubusercontent.com/sh-khashimov/RESegmentedControl/master/Images/1.png', 'https://raw.githubusercontent.com/sh-khashimov/RESegmentedControl/master/Images/2.png', 'https://raw.githubusercontent.com/sh-khashimov/RESegmentedControl/master/Images/3.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sherzod Khashimov' => 'sh.khashimov@gmail.com' }
  s.source           = { :git => 'https://github.com/sh-khashimov/RESegmentedControl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_versions = "5.0"

  s.source_files = 'Sources/**/*'
  
  # s.resource_bundles = {
  #   'RESegmentedControl' => ['RESegmentedControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
end
