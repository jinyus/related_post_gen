abstract type Vector5{T} <: AbstractVector{T} end
Base.size(::Vector5) = (5,)
Base.IndexStyle(::Type{<: Vector5}) = IndexLinear()
Base.getindex(A::Vector5, i::Int) = 
    i == 1 ? A.a :
    i == 2 ? A.b :
    i == 3 ? A.c :
    i == 4 ? A.d :
    i == 5 ? A.e :
    throw(BoundsError(A, i))

mutable struct MVector5{T} <: Vector5{T}
    a::T
    b::T
    c::T
    d::T
    e::T
end
MVector5{T}() where T = MVector5{T}(zero(T), zero(T), zero(T), zero(T), zero(T))
Base.setindex!(A::MVector5, v, i::Int) =
    i == 1 ? A.a = v :
    i == 2 ? A.b = v :
    i == 3 ? A.c = v :
    i == 4 ? A.d = v :
    i == 5 ? A.e = v :
    throw(BoundsError(A, i))

struct SVector5{T} <: Vector5{T}
    a::T
    b::T
    c::T
    d::T
    e::T
end
SVector5{T}(nt::NTuple{5,T}) where T  =
    SVector5{T}(nt...)
SVector5(av::AbstractVector{T}) where T  =
    SVector5{T}(av...)
