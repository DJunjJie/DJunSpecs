#
# Be sure to run `pod lib lint DJunCategoryKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DJunCategoryKit'
  s.version          = '0.4.0'
  s.summary          = 'A short description of DJunCategoryKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DJunJjie/DJunCategoryKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DJunJjie' => '1099718412@qq.com' }
  s.source           = { :git => 'https://github.com/DJunJjie/DJunCategoryKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DJunCategoryKit/Classes/**/*'
  
  s.subspec 'ViewModel' do |ss|
      ss.source_files = 'DJunCategoryKit/Classes/ViewModel/*.{h,m}'
      #ss.dependency 'ReactiveObjC'
  end
  
  s.subspec 'View' do |ss|
      ss.source_files = 'DJunCategoryKit/Classes/View/*.{h,m}'
      ss.dependency 'DJunCategoryKit/ViewModel'
  end

  s.subspec 'ViewController' do |ss|
      ss.source_files = 'DJunCategoryKit/Classes/ViewController/*.{h,m}'
      ss.dependency 'DJunCategoryKit/View'
  end

  s.subspec 'Targets' do |ss|
      ss.source_files = 'DJunCategoryKit/Classes/Targets/*.{h,m}'
      ss.dependency 'DJunCategoryKit/ViewController'
  end
  
  #s.resource = 'DJunCategoryKit/Classes/otherResource/*.png'
  s.resource_bundles = {
    'DJunCategoryKit' => ['DJunCategoryKit/Assets/*.png']
  }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'CTMediator'
   s.dependency 'ReactiveObjC'
end
