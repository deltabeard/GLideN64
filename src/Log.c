#include <stdarg.h>
#include <stdio.h>

void DebugMessage(int level, const char *message, ...);

void LogDebug(const char* f, int lin, int lvl, const char* fmt, ...)
{
	char buf[256];
	int ret;

	va_list va;
	va_start(va, fmt);
	ret = vsnprintf(buf, sizeof(buf), fmt, va);
	va_end(va);

	if(ret < 0)
		return;

	DebugMessage(lvl, "GLideN64 [%s:%d]: %s", f, lin, buf);
	return;
}
