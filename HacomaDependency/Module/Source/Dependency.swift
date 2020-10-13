//
//  Injector.swift
//  HacomaInjector
//
//  Created by hacoma on 2020/10/12.
//

import Foundation

public final class Dependency {
    
    private var injectables: [String: Injectable] = [:]
    
    public init() {
        // available outside of the framework
    }
    
    public func regist(type: Injectable.Type) {
        let injectable = type.init()
        injectables[type.key] = injectable
    }
    
    public func load(for key: String) -> Injectable? {
        return injectables[key]
    }
}
