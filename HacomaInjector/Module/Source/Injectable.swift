//
//  Injectable.swift
//  HacomaInjector
//
//  Created by hacoma on 2020/10/12.
//

public protocol Injectable {
    static var key: String { get }
    var resolve: AnyObject { get }
    init()
}

extension Injectable {
    
    public static var key: String {
        return String(describing: self)
    }
    
    public init() {
        self.init()
    }
}
