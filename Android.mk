##################################################################
# author: Richard Luo                      
# date:   2013-03-02 18:35:10
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libjsoncpp

LOCAL_SRC_FILES += source/include/json/assertions.h
LOCAL_SRC_FILES += source/include/json/autolink.h
LOCAL_SRC_FILES += source/include/json/config.h
LOCAL_SRC_FILES += source/include/json/features.h
LOCAL_SRC_FILES += source/include/json/forwards.h
LOCAL_SRC_FILES += source/include/json/json.h
LOCAL_SRC_FILES += source/include/json/reader.h
LOCAL_SRC_FILES += overrides/include/json/value.h
LOCAL_SRC_FILES += source/include/json/writer.h
LOCAL_SRC_FILES += source/src/lib_json/json_batchallocator.h
LOCAL_SRC_FILES += source/src/lib_json/json_reader.cpp
LOCAL_SRC_FILES += source/src/lib_json/json_tool.h
LOCAL_SRC_FILES += overrides/src/lib_json/json_value.cpp
LOCAL_SRC_FILES += source/src/lib_json/json_writer.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/overrides/include \
	$(LOCAL_PATH)/source/include \
	$(LOCAL_PATH)/source/src/lib_json

LOCAL_CFLAGS := \
	-D_FILE_OFFSET_BITS=64 \
	-DNO_TCMALLOC \
	-DDISABLE_NACL \
	-DCHROMIUM_BUILD \
	-DUSE_LIBJPEG_TURBO=1 \
	-DUSE_PROPRIETARY_CODECS \
	-DENABLE_PEPPER_THREADING \
	-DENABLE_GPU=1 \
	-DUSE_OPENSSL=1 \
	-DENABLE_EGLIMAGE=1 \
	-DUSE_SKIA=1 \
	-DJSON_USE_EXCEPTION=0 \
	-DANDROID \
	-D__GNU_SOURCE=1 \
	-DUSE_STLPORT=1 \
	-D_STLP_USE_PTR_SPECIALIZATIONS=1 \
	-DCHROME_BUILD_ID="" \
	-DNDEBUG \
	-DNVALGRIND \
	-DDYNAMIC_ANNOTATIONS_ENABLED=0

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

