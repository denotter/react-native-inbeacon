require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = "react-native-inbeacon"
  s.version        = package["version"]
  s.summary        = "This module is providing a bridge between React Native and the Android / iOS Native SDKs from Inbeacon."
  s.homepage       = "https://github.com/denotter/react-native-inbeacon"
  s.author         = "Coffee IT"
  s.license        = "MIT"
  s.platforms    = { :ios => "11" }
  s.source         = { :git => 'https://github.com/denotter/react-native-inbeacon.git', :tag => s.version }
  s.swift_version = '5.4'

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true
  
  s.dependency "InbeaconSdk", '~> 3.4.01'
  s.dependency "React"
end
