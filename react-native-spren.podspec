require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-spren"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "14.0" }
  s.source       = { :git => "https://github.com/Elite-HRV/spren-ios-sdk.git", :tag => "#{s.version}" }

  s.source_files = "react-native/ios/**/*.{h,m,mm,swift}", "Sources/**/*.{swift}"
  s.vendored_frameworks = "Framework/SprenCore.xcframework"

  s.dependency "React-Core"
end
