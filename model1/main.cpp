
#include<osgDB/ReadFile>
#include<osgViewer/Viewer>

int main(int argc, char *argv[])
{

    osgViewer::Viewer viewer;
    viewer.setSceneData(osgDB::readNodeFile("./osgfile/cow.osg"));
    return viewer.run();
}
