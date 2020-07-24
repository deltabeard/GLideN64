#pragma once

#include "Types.h"

extern const volatile unsigned char Five2Eight[32];
extern const volatile unsigned char Four2Eight[16];
extern const volatile unsigned char Three2Four[8];
extern const volatile unsigned char Three2Eight[8];
extern const volatile unsigned char Two2Eight[4];
extern const volatile unsigned char One2Four[2];
extern const volatile unsigned char One2Eight[2];

void UnswapCopyWrap(const u8 *src, u32 srcIdx, u8 *dest, u32 destIdx, u32 destMask, u32 numBytes);
void DWordInterleaveWrap(u32 *src, u32 srcIdx, u32 srcMask, u32 numQWords);

inline u16 swapword( u16 value )
{
	return (value << 8) | (value >> 8);
}

inline u16 RGBA8888_RGBA4444( u32 color )
{
	return ((color & 0x000000f0) <<  8) |	// r
			((color & 0x0000f000) >>  4) |	// g
			((color & 0x00f00000) >> 16) |	// b
			((color & 0xf0000000) >> 28);	// a
}

inline u32 RGBA5551_RGBA8888( u16 color )
{
	color = swapword( color );
	u8 r, g, b, a;
	r = Five2Eight[color >> 11];
	g = Five2Eight[(color >> 6) & 0x001f];
	b = Five2Eight[(color >> 1) & 0x001f];
	a = One2Eight [(color     ) & 0x0001];
	return (a << 24) | (b << 16) | (g << 8) | r;
}

// Just swaps the word
inline u16 RGBA5551_RGBA5551( u16 color )
{
	return swapword( color );
}

inline u32 IA88_RGBA8888( u16 color )
{
	// ok
	u8 a = color >> 8;
	u8 i = color & 0x00FF;
	return (a << 24) | (i << 16) | (i << 8) | i;
}

inline u16 IA88_RGBA4444( u16 color )
{
	u8 a = color >> 12;
	u8 i = (color >> 4) & 0x000F;
	return (i << 12) | (i << 8) | (i << 4) | a;
}

inline u16 IA44_RGBA4444( u8 color )
{
	return ((color & 0xf0) << 8) | ((color & 0xf0) << 4) | (color);
}

inline u32 IA44_RGBA8888( u8 color )
{
	u8 i = Four2Eight[color >> 4];
	u8 a = Four2Eight[color & 0x0F];
	return (a << 24) | (i << 16) | (i << 8) | i;
}

inline u16 IA31_RGBA4444( u8 color )
{
	u8 i = Three2Four[color >> 1];
	u8 a = One2Four[color & 0x01];
	return (i << 12) | (i << 8) | (i << 4) | a;
}

inline u32 IA31_RGBA8888( u8 color )
{
	u8 i = Three2Eight[color >> 1];
	u8 a = One2Eight[color & 0x01];
	return (i << 24) | (i << 16) | (i << 8) | a;
}

inline u16 I8_RGBA4444( u8 color )
{
	u8 c = color >> 4;
	return (c << 12) | (c << 8) | (c << 4) | c;
}

inline u32 I8_RGBA8888( u8 color )
{
	return (color << 24) | (color << 16) | (color << 8) | color;
}

inline u16 I4_RGBA4444( u8 color )
{
	u16 ret = color & 0x0f;
	ret |= ret << 4;
	ret |= ret << 8;
	return ret;
}

inline u32 CI4_RGBA4444(u8 color)
{
	u16 ret = color >> 4;
	ret |= ret << 4;
	ret |= ret << 8;
	return ret;
}

inline u32 CI4_RGBA8888(u8 color)
{
	return (color << 24) | (color << 16) | (color << 8) | color;
}

inline u32 I4_RGBA8888(u8 color)
{
	u8 c = Four2Eight[color];
	c |= c << 4;
	return (c << 24) | (c << 16) | (c << 8) | c;
}
