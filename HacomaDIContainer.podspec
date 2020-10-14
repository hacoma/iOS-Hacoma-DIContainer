Pod::Spec.new do |s|
  s.name = 'HacomaDIContainer'
  s.version = '1.0.3'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/hacoma/iOS-Hacoma-DIContainer'
  s.authors = { 'hacoma' => 'hacoma92@gmail.com' }
  s.summary = 'DIContainer for iOS application'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/hacoma/iOS-Hacoma-DIContainer.git', :tag => s.version }
  s.source_files = 'HacomaDIContainer/Module/Source/*.swift'
end