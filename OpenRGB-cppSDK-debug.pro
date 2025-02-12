#-------------------------------------------------
#
# Project created by QtCreator 2020-11-01T13:47:35
#
#-------------------------------------------------

TARGET = orgbsdk-debug

TEMPLATE = app
CONFIG += console
CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt
release:CONFIG += static

QMAKE_CXXFLAGS += -Wno-old-style-cast -Wno-comment

debug {
	DEFINES += DEBUG SAFETY_CHECKS
}
release {
	#DEFINES += CRITICALS_CATCHABLE
}

SOURCES += \
        shared/CppUtils-Essential/ContainerUtils.cpp \
        shared/CppUtils-Essential/CriticalError.cpp \
        shared/CppUtils-Essential/LangUtils.cpp \
        shared/CppUtils-Essential/StreamUtils.cpp \
        shared/CppUtils-Essential/StringUtils.cpp \
        shared/CppUtils-Network/BinaryStream.cpp \
        shared/CppUtils-Network/HostInfo.cpp \
        shared/CppUtils-Network/NetAddress.cpp \
        shared/CppUtils-Network/Socket.cpp \
        shared/CppUtils-Network/SystemErrorInfo.cpp \
        src/Client.cpp \
        src/Color.cpp \
        src/DeviceInfo.cpp \
        src/Exceptions.cpp \
        src/MiscUtils.cpp \
        src/ProtocolCommon.cpp \
        src/ProtocolMessages.cpp \
        src/test/main.cpp

HEADERS += \
        include/OpenRGB/Exceptions.hpp \
        include/OpenRGB/SystemErrorType.hpp \
        shared/CppUtils-Essential/Assert.hpp \
        shared/CppUtils-Essential/ContainerUtils.hpp \
        shared/CppUtils-Essential/CriticalError.hpp \
        shared/CppUtils-Essential/Essential.hpp \
        shared/CppUtils-Essential/LangUtils.hpp \
        shared/CppUtils-Essential/Safety.hpp \
        shared/CppUtils-Essential/Span.hpp \
        shared/CppUtils-Essential/StreamUtils.hpp \
        shared/CppUtils-Essential/StringUtils.hpp \
        shared/CppUtils-Network/BinaryStream.hpp \
        shared/CppUtils-Network/HostInfo.hpp \
        shared/CppUtils-Network/NetAddress.hpp \
        shared/CppUtils-Network/Socket.hpp \
        shared/CppUtils-Network/SystemErrorInfo.hpp \
        include/OpenRGB/Client.hpp \
        include/OpenRGB/Color.hpp \
        include/OpenRGB/DeviceInfo.hpp \
        src/MiscUtils.hpp \
        src/ProtocolCommon.hpp \
        src/ProtocolMessages.hpp

DISTFILES += \
	protocol_description.txt

INCLUDEPATH += include
INCLUDEPATH += shared/CppUtils-Essential
INCLUDEPATH += shared/CppUtils-Network

win32 {
	LIBS += -lws2_32
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}
