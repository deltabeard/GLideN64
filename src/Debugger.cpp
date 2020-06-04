#include <algorithm>
#include "assert.h"
#include "math.h"
#include "Platform.h"
#include "GLideN64.h"
#include "RSP.h"
#include "Keys.h"
#include "Config.h"
#include "Combiner.h"
#include "FrameBuffer.h"
#include "DisplayWindow.h"
#include "DebugDump.h"
#include "Debugger.h"

Debugger g_debugger;

using namespace graphics;

Debugger::Debugger() : m_bDebugMode(false) {}
Debugger::~Debugger() {}
void Debugger::checkDebugState() {}
void Debugger::addTriangles(const graphics::Context::DrawTriangleParameters &) {}
void Debugger::addRects(const graphics::Context::DrawRectParameters &) {}
void Debugger::draw() {}
