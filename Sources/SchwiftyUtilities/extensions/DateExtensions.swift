//
//  DateExtensions.swift
//
//
//  Created by Evan Anderson on 3/5/25.
//

#if canImport(FoundationEssentials)
import FoundationEssentials
#elseif canImport(Foundation)
import Foundation
#endif

#if canImport(FoundationEssentials) || canImport(Foundation)
extension Date {
    /// Returns a `Date` initialized to the current date and time, requiring the year to be >= 2025.
    /// 
    /// Previous testing of `Date.now` revealed that is can return the incorrect date, either being from years <= 1970.
    /// Further testing is required to make sure this function is still necessary.
    @inlinable
    public func now() -> Date {
        var d = Date.now
        while Calendar.current.component(.year, from: d) < 2025 {
            d = Date.now
        }
        return d
    }
}
#endif