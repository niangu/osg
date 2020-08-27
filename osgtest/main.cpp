#include "mainwindow.h"
#include <QApplication>
#include <osgViewer/Viewer>
#include <osg/Geode>
#include <osg/Node>
#include <osg/Group>
#include <osgDB/ReadFile>
#include <osgDB/WriteFile>
#include <osgUtil/Optimizer>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    osg::ref_ptr<osgViewer::Viewer>viewer=new osgViewer::Viewer();
    osg::ref_ptr<osg::Group> root= new osg::Group();
    osg::ref_ptr<osg::Node> node=osgDB::readNodeFile("./osgfile/cow.osg");
    root->addChild(node.get());
    osgUtil::Optimizer optimizer;
    optimizer.optimize(root.get());
    viewer->setSceneData(root.get());
    viewer->realize();
    viewer->run();


    w.show();

    return a.exec();
}
