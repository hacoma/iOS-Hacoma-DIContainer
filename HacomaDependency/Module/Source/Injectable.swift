//
//  Injectable.swift
//  Dependency
//
//  Created by hacoma on 2020/10/14.
//

@propertyWrapper
public class Injectable<DependencyInstance> {
    
    private lazy var instance: DependencyInstance? = {
        return DIContainer.shared.resolve()
    }()
    
    public init() {
        // available outside of the framework
    }
    
    public var wrappedValue: DependencyInstance? {
        get {
            return instance
        }
        set {
            instance = newValue
        }
    }
}
