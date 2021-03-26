
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/

Pod::Spec.new do |spec|


  spec.name         = "demo"
  spec.version      = "0.0.1"
  spec.summary      = "主题"

  spec.description  = <<-DESC
                   描述
                   DESC

  spec.homepage     = "git地址或者网址"
  spec.license      = "MIT"
  spec.authors      = { "Xin Wang" => "598286768@qq.com" }
  spec.source       = { :git => "git地址", :tag => "打包版本#{spec.version}" }
  spec.source_files  = "src/*.{h,m}"
  spec.public_header_files = "src/*.h"



end
