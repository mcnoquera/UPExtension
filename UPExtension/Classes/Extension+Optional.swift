//
//  Extension+Optional.swift
//  Pods
//
//  Created by Mark Angelo Noquera on 03/10/2017.
//
//

public extension Optional {
    
    public func or<T>(defaultValue: T!) -> T! {
        
        guard let value = self else {
            return defaultValue
        }
        
        return value as! T
    }
}

public protocol Defaultable {
    static var defaultValue: Self { get }
}

public extension Optional where Wrapped: Defaultable {
    var unwrappedValue: Wrapped { return self ?? Wrapped.defaultValue }
}

public extension Int: Defaultable {
    static var defaultValue: Int { return 0 }
}

public extension Double: Defaultable {
    static var defaultValue: Double { return 0 }
}

public extension String: Defaultable {
    static var defaultValue: String { return "" }
}

public extension Array: Defaultable {
    static var defaultValue: Array<Element> { return [] }
}
