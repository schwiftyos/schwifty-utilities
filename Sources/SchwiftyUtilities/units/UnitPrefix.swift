//
//  UnitPrefix.swift
//
//
//  Created by Evan Anderson on 3/5/25.
//

public enum UnitPrefix : CaseIterable, Sendable {
    /// Standard
    case none

    // MARK: Metric
    /// 10^-30
    case quecto
    /// 10^-27
    case ronto
    /// 10^-24
    case yocto
    /// 10^-21
    case zepto
    /// 10^-18
    case atto
    /// 10^-15
    case femto
    /// 10^-12
    case pico
    /// 10^-9
    case nano
    /// 10^-6
    case micro
    /// 10^-3
    case milli
    /// 10^-2
    case centi
    /// 10^-1
    case deci

    /// 10^1
    case deca
    /// 10^2
    case hecto
    /// 10^3
    case kilo
    /// 10^6
    case mega
    /// 10^9
    case giga
    /// 10^12
    case tera
    /// 10^15
    case peta
    /// 10^18
    case exa
    /// 10^21
    case zetta
    /// 10^24
    case yotta
    /// 10^27
    case ronna
    /// 10^30
    case quetta

    // MARK: IEC
    /// 2^10 (1024)
    case kibi
    /// 2^20 (1,048,576)
    case mebi
    /// 2^30 (1,073,741,824)
    case gibi
    /// 2^40 (1,099,511,627,776)
    case tebi
    /// 2^50 (1,125,899,906,842,624)
    case pebi
    /// 2^60 (1,152,921,504,606,846,976)
    case exbi
    /// 2^70 (1,180,591,620,717,411,303,424)
    case zebi
    /// 2^80 (1,208,925,819,614,629,174,706,176)
    case yobi
    /// 2^90 (1,237,940,039,285,380,274,899,124,224)
    case robi
    /// 2^100 (1,267,650,600,228,229,401,496,703,205,376)
    case quebi
}

// MARK: Symbol
extension UnitPrefix {
    @inlinable
    public var symbol : String {
        switch self {
        case .none: return ""

        case .quecto: return "q"
        case .ronto: return "r"
        case .yocto: return "y"
        case .zepto: return "z"
        case .atto: return "a"
        case .femto: return "f"
        case .pico: return "p"
        case .nano: return "n"
        case .micro: return "μ"
        case .milli: return "m"
        case .centi: return "c"
        case .deci: return "d"

        case .deca: return "da"
        case .hecto: return "h"
        case .kilo: return "k"
        case .mega: return "M"
        case .giga: return "G"
        case .tera: return "T"
        case .peta: return "P"
        case .exa: return "E"
        case .zetta: return "Z"
        case .yotta: return "Y"
        case .ronna: return "R"
        case .quetta: return "Q"

        case .kibi: return "Ki"
        case .mebi: return "Mi"
        case .gibi: return "Gi"
        case .tebi: return "Ti"
        case .pebi: return "Pi"
        case .exbi: return "Ei"
        case .zebi: return "Zi"
        case .yobi: return "Yi"
        case .robi: return "Ri"
        case .quebi: return "Qi"
        @unknown default: return "?"
        }
    }
}