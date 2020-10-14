//
//  Dependency.swift
//  DIContainer
//
//  Created by hacoma on 2020/10/12.
//

public protocol Dependency {
    
    init()
}

extension Dependency {
    
    static var resolver: Resolvable {
        return Resolver<Self>()
    }
}
