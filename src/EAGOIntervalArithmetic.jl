#__precompile__(true)

module EAGOIntervalArithmetic

import Base:
    +, -, *, /, //, fma,
    <, >, ==, !=, ⊆, ^, <=,
    in, zero, one, abs, abs2, real, min, max,
    sqrt, exp, log, sin, cos, tan, inv,
    exp2, exp10, log2, log10,
    asin, acos, atan, atan2, step,
    sinh, cosh, tanh, asinh, acosh, atanh,
    union, intersect, isempty,
    convert, promote_rule, eltype,
    BigFloat, float, widen, big,
    ∩, ∪, ⊆, eps,
    floor, ceil, trunc, sign, round,
    expm1, log1p,
    isfinite, isnan,
    show, showall,
    isinteger, setdiff,parse

export
    AbstractMCInterval, MCInterval, diam, radius, mid, mag, mig, hull,
    emptyinterval, ∅, ∞, isempty, isinterior, isdisjoint, ⪽,
    precedes, strictprecedes, ≺, entireinterval, isentire, nai, isnai, isthin,
    iscommon, isatomic, widen, inf, sup,parameters, eps, dist,
    pi_interval,midpoint_radius, interval_from_midpoint_radius, pow

include("IntervalArithmetic/intervals.jl")

end # module
