module;

#include <concepts>
#include <type_traits>
#include <cstring>


export module ph;

export template <typename T, typename U>
concept to = std::is_convertible_v <T, U>;


export template <typename T, typename U>
concept is = std::is_same_v <T, U>;


export template <typename T, std::size_t N> 
auto len (T (&&) [N]) 
{
	return N;
}

export auto len (auto const & s) -> decltype (s.size ())
{
	return s.size ();
}

export auto len (char const* s) 
{
	return std::strlen (s);
}




module :private;

void hej () 
{

}

void bajs ()
{

}

// export module ph:a;

