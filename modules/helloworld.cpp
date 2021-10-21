module;


export module Util.EnumUtils;



template <typename T>
concept Enum = true;

template <Enum E>
using PrimitiveType = int;

template <Enum E>
constexpr auto rep(E e) { return PrimitiveType<E>(e); }

