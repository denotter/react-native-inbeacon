require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platforms    = { :ios => "11" }
  s.source         = { :git => 'https://github.com/denotter/react-native-inbeacon.git', :tag => s.version }
  s.swift_version = '5.4'

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true
  
  s.dependency "InbeaconSdk", '~> 3.4.01'
  s.dependency "React"
end
