#pragma once

#include <stdint.h>

typedef uint8_t				u8;	/* unsigned  8-bit */
typedef uint16_t			u16;	/* unsigned 16-bit */
typedef uint32_t			u32;	/* unsigned 32-bit */
typedef uint64_t			u64;	/* unsigned 64-bit */

typedef int8_t				s8;	/* signed  8-bit */
typedef int16_t				s16;	/* signed 16-bit */
typedef int32_t				s32;	/* signed 32-bit */
typedef int64_t				s64;	/* signed 64-bit */

typedef float				f32;	/* single prec floating point */
typedef double				f64;	/* double prec floating point */

#ifndef TRUE
#define TRUE    1
#endif

#ifndef FALSE
#define FALSE   0
#endif

#ifndef NULL
#define NULL    0
#endif

#ifndef PLUGIN_PATH_SIZE
#define PLUGIN_PATH_SIZE 260
#endif

template <typename T>
class ValueKeeper
{
public:
	ValueKeeper(T& _obj, T _newVal)
		: m_obj(_obj)
		, m_val(_obj)
	{
		m_obj = _newVal;
	}

	~ValueKeeper()
	{
		m_obj = m_val;
	}

private:
	T & m_obj;
	T m_val;
};
