Pod::Spec.new do |s|
  s.name = 'HacomaInjector'
  s.version = '1.0.0'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/hacoma/iOS-Hacoma-Injector'
  s.authors = { 'hacoma' => 'hacoma92@gmail.com' }
  s.summary = 'Dependency Injector for iOS application'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/hacoma/iOS-Hacoma-Injector.git', :tag => s.version }
  s.source_files = 'HacomaInjector/Module/Source/*.swift'
end