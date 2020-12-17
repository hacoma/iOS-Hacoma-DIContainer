//
//  Resolvable.swift
//  DIContainer
//
//  Created by hacoma on 2020/12/18.
//

protocol Resolvable {
    
    func resolve<DependencyInstance>() -> DependencyInstance?
}

extension Resolvable {
    
    var key: String {
        return String(describing: self)
    }
}
