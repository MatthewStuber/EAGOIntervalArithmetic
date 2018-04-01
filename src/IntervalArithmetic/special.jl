emptyinterval(::Type{T}) where T<:AbstractFloat = MCInterval{T}(Inf, -Inf)
emptyinterval(x::MCInterval{T}) where T<:AbstractFloat = emptyinterval(T)
const ∅ = emptyinterval(Float64)
isempty(x::MCInterval) = x.lo == Inf && x.hi == -Inf

const ∞ = Inf
entireinterval(::Type{T}) where T<:AbstractFloat = MCInterval{T}(-Inf, Inf)
entireinterval(x::MCInterval{T}) where T<:AbstractFloat = entireinterval(T)
isentire(x::MCInterval) = x.lo == -Inf && x.hi == Inf
isunbounded(x::MCInterval) = x.lo == -Inf || x.hi == Inf

isfinite(x::MCInterval) = isfinite(x.lo) && isfinite(x.hi)
isthin(x::MCInterval) = x.lo == x.hi
Base.iszero(x::MCInterval) = iszero(x.lo) && iszero(x.hi)

const float_interval_pi64 = MCInterval(Float64(pi))  # does not change
const float_interval_pi32 = MCInterval(Float32(pi))
const float_interval_pi16 = MCInterval(Float16(pi))
pi_interval(::Type{Float64}) = float_interval_pi64
pi_interval(::Type{Float32}) = float_interval_pi32
pi_interval(::Type{Float16}) = float_interval_pi16
