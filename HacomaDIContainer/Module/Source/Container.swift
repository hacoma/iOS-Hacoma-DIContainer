//
//  Container.swift
//  DIContainer
//
//  Created by hacoma on 2020/10/12.
//

public final class Container {
    
    private var resolvers: [String: Resolvable] = [:]
    
    public static let shared = Container()
}

extension Container {
    
    public func register(type: Dependency.Type) {
        let resolver = type.resolver
        resolvers[resolver.key] = resolver
    }
    
    public func register(types: [Dependency.Type]) {
        types.forEach { register(type: $0) }
    }
}

extension Container {
    
    public func unregister(type: Dependency.Type) {
        let resolver = type.resolver
        resolvers.removeValue(forKey: resolver.key)
    }
    
    public func unregister(types: [Dependency.Type]) {
        types.forEach { unregister(type: $0) }
    }
    
    public func unregisterAll() {
        resolvers.removeAll()
    }
}

extension Container {
    
    public func resolve<DependencyInstance>() -> DependencyInstance? {
        return resolvers
            .compactMap { $0.value.resolve() }
            .first
    }
}
