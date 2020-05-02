#
# Be sure to run `pod lib lint AYTagsView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AYTagsView'
  s.version          = '0.1.1'
  s.summary          = 'A short description of AYTagsView.'

  s.description      = <<-DESC
A tags view to for multiple tags
                       DESC

  s.homepage         = 'https://github.com/AprilYoungs/AYTagsView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AprilYoungs' => 'yangchangjun010@hotmail.com' }
  s.source           = { :git => 'https://github.com/AprilYoungs/AYTagsView.git', :tag => '0.1.1' }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'AYTagsView/Classes/**/*'
  
end
