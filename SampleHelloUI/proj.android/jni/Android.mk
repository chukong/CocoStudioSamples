LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
		    ../../Classes/UIScene.cpp \
		    ../../Classes/UISceneManager.cpp \
		    ../../Classes/UIButtonTest/UIButtonTest.cpp \
		    ../../Classes/UICheckBoxTest/UICheckBoxTest.cpp \
		    ../../Classes/UIDragPanelTest/UIDragPanelTest.cpp \
		    ../../Classes/UIImageViewTest/UIImageViewTest.cpp \
		    ../../Classes/UILabelAtlasTest/UILabelAtlasTest.cpp \
		    ../../Classes/UILabelBMFontTest/UILabelBMFontTest.cpp \
		    ../../Classes/UILabelTest/UILabelTest.cpp \
		    ../../Classes/UIListViewTest/UIListViewTest.cpp \
		    ../../Classes/UILoadingBarTest/UILoadingBarTest.cpp \
		    ../../Classes/UINodeContainerTest/UINodeContainerTest.cpp \
		    ../../Classes/UIPageViewTest/UIPageViewTest.cpp \
		    ../../Classes/UIPanelTest/UIPanelTest.cpp \
		    ../../Classes/UIScrollViewTest/UIScrollViewTest.cpp \
		    ../../Classes/UISliderTest/UISliderTest.cpp \
		    ../../Classes/UITextAreaTest/UITextAreaTest.cpp \
		    ../../Classes/UITextButtonTest/UITextButtonTest.cpp \
		    ../../Classes/UITextFieldTest/UITextFieldTest.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
