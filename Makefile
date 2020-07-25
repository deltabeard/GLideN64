SOURCES_C := ./src/Log.c

SOURCES_CXX += ./src/3DMath.cpp ./src/CRC32.cpp \
	       ./src/BufferCopy/ColorBufferToRDRAM.cpp                                    \
	       ./src/BufferCopy/DepthBufferToRDRAM.cpp                                    \
	       ./src/BufferCopy/RDRAMtoColorBuffer.cpp                                    \
	       ./src/Combiner.cpp                                                         \
	       ./src/CombinerKey.cpp                                                      \
	       ./src/CommonPluginAPI.cpp                                                  \
	       ./src/Config.cpp                                                           \
	       ./src/Debugger.cpp                                                         \
	       ./src/DepthBuffer.cpp                                                      \
	       ./src/DepthBufferRender/ClipPolygon.cpp                                    \
	       ./src/DepthBufferRender/DepthBufferRender.cpp                              \
	       ./src/DisplayWindow.cpp                                                    \
	       ./src/FrameBuffer.cpp                                                      \
	       ./src/FrameBufferInfo.cpp                                                  \
	       ./src/GBI.cpp                                                              \
	       ./src/GLideN64.cpp                                                         \
	       ./src/Graphics/ColorBufferReader.cpp                                       \
	       ./src/Graphics/CombinerProgram.cpp                                         \
	       ./src/Graphics/Context.cpp                                                 \
	       ./src/Graphics/ObjectHandle.cpp                                            \
	       ./src/GraphicsDrawer.cpp                                                   \
	       ./src/MupenPlusPluginAPI.cpp                                               \
	       ./src/N64.cpp                                                              \
	       ./src/NoiseTexture.cpp                                                     \
	       ./src/PaletteTexture.cpp                                                   \
	       ./src/PostProcessor.cpp                                                    \
	       ./src/RDP.cpp                                                              \
	       ./src/RSP.cpp                                                              \
	       ./src/RSP_LoadMatrix.cpp                                                   \
	       ./src/SoftwareRender.cpp                                                   \
	       ./src/TexrectDrawer.cpp                                                    \
	       ./src/TextureFilterHandler.cpp                                             \
	       ./src/Textures.cpp                                                         \
	       ./src/VI.cpp                                                               \
	       ./src/ZlutTexture.cpp                                                      \
	       ./src/common/CommonAPIImpl_common.cpp                                      \
	       ./src/convert.cpp                                                          \
	       ./src/gDP.cpp                                                              \
	       ./src/gSP.cpp                                                              \
	       ./src/mupenplus/MemoryStatus_mupenplus.cpp                                 \
	       ./src/mupenplus/MupenPlusAPIImpl.cpp                                       \
	       ./src/uCodes/F3D.cpp                                                       \
	       ./src/uCodes/F3DAM.cpp                                                     \
	       ./src/uCodes/F3DBETA.cpp                                                   \
	       ./src/uCodes/F3DDKR.cpp                                                    \
	       ./src/uCodes/F3DEX.cpp                                                     \
	       ./src/uCodes/F3DEX2.cpp                                                    \
	       ./src/uCodes/F3DEX2ACCLAIM.cpp                                             \
	       ./src/uCodes/F3DEX2CBFD.cpp                                                \
	       ./src/uCodes/F3DFLX2.cpp                                                   \
	       ./src/uCodes/F3DGOLDEN.cpp                                                 \
	       ./src/uCodes/F3DPD.cpp                                                     \
	       ./src/uCodes/F3DSETA.cpp                                                   \
	       ./src/uCodes/F3DTEXA.cpp                                                   \
	       ./src/uCodes/F3DZEX2.cpp                                                   \
	       ./src/uCodes/F5Indi_Naboo.cpp                                              \
	       ./src/uCodes/F5Rogue.cpp                                                   \
	       ./src/uCodes/L3D.cpp                                                       \
	       ./src/uCodes/L3DEX.cpp                                                     \
	       ./src/uCodes/L3DEX2.cpp                                                    \
	       ./src/uCodes/S2DEX.cpp                                                     \
	       ./src/uCodes/S2DEX2.cpp                                                    \
	       ./src/uCodes/T3DUX.cpp                                                     \
	       ./src/uCodes/Turbo3D.cpp                                                   \
	       ./src/uCodes/ZSort.cpp                                                     \
	       ./src/uCodes/ZSortBOSS.cpp                                                 

# SOURCES_CXX += ./src/Graphics/OpenGLContext/GLFunctions.cpp                               \
# 	       ./src/Graphics/OpenGLContext/mupen64plus/mupen64plus_DisplayWindow.cpp     \
# 	       ./src/Graphics/OpenGLContext/ThreadedOpenGl/opengl_Wrapper.cpp             \
# 	       ./src/Graphics/OpenGLContext/ThreadedOpenGl/opengl_WrappedFunctions.cpp    \
# 	       ./src/Graphics/OpenGLContext/ThreadedOpenGl/opengl_Command.cpp             \
# 	       ./src/Graphics/OpenGLContext/ThreadedOpenGl/opengl_ObjectPool.cpp          \
# 	       ./src/Graphics/OpenGLContext/ThreadedOpenGl/RingBufferPool.cpp             \
# 	       ./src/Graphics/OpenGLContext/opengl_Attributes.cpp                         \
# 	       ./src/Graphics/OpenGLContext/opengl_BufferedDrawer.cpp                     \
# 	       ./src/Graphics/OpenGLContext/opengl_BufferManipulationObjectFactory.cpp    \
# 	       ./src/Graphics/OpenGLContext/opengl_CachedFunctions.cpp                    \
# 	       ./src/Graphics/OpenGLContext/opengl_ColorBufferReaderWithBufferStorage.cpp \
# 	       ./src/Graphics/OpenGLContext/opengl_ColorBufferReaderWithPixelBuffer.cpp   \
# 	       ./src/Graphics/OpenGLContext/opengl_ColorBufferReaderWithReadPixels.cpp    \
# 	       ./src/Graphics/OpenGLContext/opengl_ColorBufferReaderWithEGLImage.cpp      \
# 	       ./src/Graphics/OpenGLContext/opengl_ContextImpl.cpp                        \
# 	       ./src/Graphics/OpenGLContext/opengl_GLInfo.cpp                             \
# 	       ./src/Graphics/OpenGLContext/opengl_Parameters.cpp                         \
# 	       ./src/Graphics/OpenGLContext/opengl_TextureManipulationObjectFactory.cpp   \
# 	       ./src/Graphics/OpenGLContext/opengl_UnbufferedDrawer.cpp                   \
# 	       ./src/Graphics/OpenGLContext/opengl_Utils.cpp                              \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_CombinerInputs.cpp                  \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramBuilder.cpp          \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramImpl.cpp             \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramUniformFactory.cpp   \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_FXAA.cpp                            \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_ShaderStorage.cpp                   \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_SpecialShadersFactory.cpp           \
# 	       ./src/Graphics/OpenGLContext/GLSL/glsl_Utils.cpp                           \
# 	       ./src/Graphics/OpenGLContext/GraphicBuffer/PrivateApi/GraphicBuffer.cpp

ifeq ($(CC), cl)
	OBJEXT := obj
	OBJOUT := /Fo
	CFLAGS += -DOS_WINDOWS
else
	OBJEXT := o
	OBJOUT := -o
endif

override CFLAGS += -Isrc -Isrc/inc -Ilibretro-common/include -D__LIBRETRO__ -DMUPENPLUSAPI
override CXXFLAGS += $(CFLAGS)

OBJ := $(SOURCES_C:.c=.$(OBJEXT)) $(SOURCES_CXX:.cpp=.$(OBJEXT))

all: $(OBJ)

%.obj: %.cpp
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) $(OBJOUT)$@ $<

%.obj: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $(OBJOUT)$@ $<

clean:
	$(RM) $(OBJ)
