#
# Be sure to run `pod lib lint CircleLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CircleLabel'
  s.version          = '1.0.0'
  s.summary          = 'Labels with circle backgrounds'



  s.description      = <<-DESC
    Genererate labels with circle backgrounds.
    Use text based color generator with custom schemes or choose your own color.
    Library has full Storyboard integration.
    DESC

  s.homepage         = 'https://github.com/hoomazoid/CircleLabel'
  s.screenshots      = 'https://i.imgur.com/OX0ZniH.jpg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Giorgi Andriadze' => 'g.andriadze2@gmail.com' }
  s.source           = { :git => 'https://github.com/hoomazoid/CircleLabel.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CircleLabel/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CircleLabel' => ['CircleLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
