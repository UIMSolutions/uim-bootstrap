module uim.bootstrap;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.html;

// packages
public import uim.bootstrap.obj;
public import uim.bootstrap.mixins;
public import uim.bootstrap.layout;
public import uim.bootstrap.components;
public import uim.bootstrap.utilities;
public import uim.bootstrap.content;
public import uim.bootstrap.css;

public import uim.bootstrap.bs4;

// modules
public import uim.bootstrap.tables;

auto FA(string name, string[] classes = null) {return H5I(classes~["fa", "fa-"~name]);}
auto FAR(string name, string[] classes = null) {return H5I(classes~["far", "fa-"~name]);}
auto FAS(string name, string[] classes = null) {return H5I(classes~["fas", "fa-"~name]);}