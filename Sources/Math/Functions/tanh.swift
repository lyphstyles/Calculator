#if MATH_FOUNDATION
import Foundation
#endif

#if MATH_DARWIN
import Darwin.C.math
#endif

#if MATH_GLIBC
import Glibc
#endif

/// Computes the hyperbolic tangent of arg.
///
/// - Parameter float:     floating point value representing a hyperbolic angle
/// - Returns: If no errors occur, the hyperbolic tangent of arg (tanh(arg), or (e^arg*-e^-arg)/(e^arg*+e^-arg)) is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func tanh(_ float: Float) -> Float {
    #if MATH_DARWIN
    return Darwin.tanhf(float)
    #endif

    #if MATH_GLIBC
    return Glibc.tanhf(float)
    #endif

    #if MATH_FOUNDATION
    return Foundation.tanhf(float)
    #endif
}

/// Computes the hyperbolic tangent of arg.
///
/// - Parameter double:     floating point value representing a hyperbolic angle
/// - Returns: If no errors occur, the hyperbolic tangent of arg (tanh(arg), or (e^arg*-e^-arg)/(e^arg*+e^-arg)) is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func tanh(_ double: Double) -> Double {
    #if MATH_DARWIN
    return Darwin.tanh(double)
    #endif

    #if MATH_GLIBC
    return Glibc.tanh(double)
    #endif

    #if MATH_FOUNDATION
    return Foundation.tanh(double)
    #endif
}
