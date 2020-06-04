#ifndef __LOG_H__
#define __LOG_H__

#define LOG_DEBUG	-1
#define LOG_APIFUNC	LOG_DEBUG
#define LOG_VERBOSE	0
#define LOG_INFO	1
#define LOG_WARNING	2
#define LOG_ERROR  	3

extern "C" {
	void LogDebug(const char* f, int lin, int lvl, const char* fmt, ... );
};

#ifdef MUPENPLUSAPI
#define LOG(lvl, fmt...) LogDebug(__FILE__, __LINE__, lvl, fmt)
#else
#define LOG(lvl, fmt...)
#endif

#endif
