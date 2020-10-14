//
//  Resolver.swift
//  DIContainer
//
//  Created by hacoma on 2020/10/14.
//

class Resolver<DependencyImpl: Dependency>: Resolvable {
    
    func resolve<DependencyInstance>() -> DependencyInstance? {
        return DependencyImpl.init() as? DependencyInstance
    }
}

protocol Resolvable {
    
    func resolve<DependencyInstance>() -> DependencyInstance?
}

extension Resolvable {
    
    var key: String {
        return String(describing: self)
    }
}
