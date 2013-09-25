#include "HelloWorldScene.h"
#include "VisibleRect.h"
#include "cocos-ext.h"

USING_NS_CC;
USING_NS_CC_EXT;

CCScene* HelloWorld::scene()
{
    // 'scene' is an autorelease object
    CCScene *scene = CCScene::create();
    
    // 'layer' is an autorelease object
    HelloWorld *layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !CCLayer::init() )
    {
        return false;
    }

    CCNode *pFishJoyScene = CCSSceneReader::sharedSceneReader()->createNodeWithSceneFile("FishJoy2.json");
	this->addChild(pFishJoyScene);
    cocos2d::extension::ActionManager::shareManager()->playActionByName("startMenu_1.json","Animation1");

	CCMenuItemFont *itemBack = CCMenuItemFont::create("End", this, menu_selector(HelloWorld::menuCloseCallback));
    itemBack->setColor(ccc3(255, 255, 255));
    itemBack->setPosition(ccp(VisibleRect::rightBottom().x - 50, VisibleRect::rightBottom().y + 25));
    CCMenu *menuBack = CCMenu::create(itemBack, NULL);
    menuBack->setPosition(CCPointZero);
    menuBack->setZOrder(4);
    
    this->addChild(menuBack);

    return true;
}


void HelloWorld::menuCloseCallback(CCObject* pSender)
{
	CCArmatureDataManager::purge();
	CCSSceneReader::sharedSceneReader()->purgeSceneReader();
	cocos2d::extension::ActionManager::shareManager()->purgeActionManager();
	cocos2d::extension::UIHelper::instance()->purgeUIHelper();

    CCDirector::sharedDirector()->end();
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif

}
