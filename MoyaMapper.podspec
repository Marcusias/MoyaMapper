Pod::Spec.new do |s|
  s.name             = 'MoyaMapper'
  s.version          = '3.1.1'
  s.summary          = '基于Moya+SwiftyJSON，使解析Response更加方便'


  s.description      = <<-DESC
MoyaMapper可以更加方便的解析Response，提供RxSwift拓展
                       DESC

  s.homepage         = 'https://github.com/Marcusias/MoyaMapper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LinXunFeng' => '598600855@qq.com' }
  s.source           = { :git => 'https://github.com/WHaveFun/MoyaMapper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version         = '5.0'
  s.osx.deployment_target = '10.12'
#s.source_files = 'MoyaMapper/Classes/**/*'

  s.default_subspec = "Core"
  s.subspec "Core" do |ss|
    ss.source_files  = "MoyaMapper/Classes/Core/**/*"
    ss.dependency "Moya"
    ss.dependency "SwiftyJSON"
    ss.dependency "Moya/RxSwift"
    ss.dependency "RxSwift"
  end
  
  s.subspec "MMCache" do |ss|
    ss.source_files = "MoyaMapper/Classes/MMCache/**/*"
    ss.dependency "MoyaMapper/Core"
    ss.dependency "Cache"
  end

  s.subspec "Rx" do |ss|
    ss.source_files = "MoyaMapper/Classes/Rx/**/*"
    ss.dependency "MoyaMapper/Core"
    ss.dependency "Moya/RxSwift"
    ss.dependency "RxSwift"
  end
  
  s.subspec "RxCache" do |ss|
    ss.source_files = "MoyaMapper/Classes/RxCache/**/*"
    ss.dependency "MoyaMapper/Rx"
    ss.dependency "MoyaMapper/MMCache"
  end

end
