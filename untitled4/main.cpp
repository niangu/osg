#include<osg/LOD>
#include<osgDB/ReadFile>
#include<osgViewer/Viewer>


//使用LOD结点
int main(int argc, char *argv[])
{
   osg::Node* model = osgDB::readNodeFile("bunny-high.ive");
   float r = model->getBound().radius();

   osg::ref_ptr<osg::LOD>root = new osg::LOD;
   root->addChild(osgDB::readNodeFile("bunny-low.ive"),r*7,FLT_MAX);
   root->addChild(osgDB::readNodeFile("bunny-mid.ive"),r*3,r*7);
   root->addChild(model,0.0,r*3);

   osgViewer::Viewer viewer;
   viewer.setSceneData(root.get());

    return viewer.run();
}
