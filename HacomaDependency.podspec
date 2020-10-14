Pod::Spec.new do |s|
  s.name = 'HacomaDependency'
  s.version = '1.0.2'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/hacoma/iOS-Hacoma-Dependency'
  s.authors = { 'hacoma' => 'hacoma92@gmail.com' }
  s.summary = 'Dependency injection for iOS application'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/hacoma/iOS-Hacoma-Dependency.git', :tag => s.version }
  s.source_files = 'HacomaDependency/Module/Source/*.swift'
end