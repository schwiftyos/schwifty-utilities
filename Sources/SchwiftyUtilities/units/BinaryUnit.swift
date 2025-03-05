//
//  BinaryUnit.swift
//
//
//  Created by Evan Anderson on 3/5/25.
//

public struct BinaryUnit : Sendable {
    public var value:UInt64
    public var prefix:UnitPrefix
    public var type:BinaryUnitType

    public init(
        prefix: UnitPrefix = .none,
        type: BinaryUnitType = .byte,
        value: UInt64
    ) {
        self.prefix = prefix
        self.type = type
        self.value = value
    }

    @inlinable
    public var symbol : String {
        return prefix.symbol + "B"
    }
}