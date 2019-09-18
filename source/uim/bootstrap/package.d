module uim.bootstrap;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.web;
public import uim.html;

// packages
public import uim.bootstrap.obj;
public import uim.bootstrap.mixins;
public import uim.bootstrap.layout;
public import uim.bootstrap.components;
public import uim.bootstrap.additionals;
public import uim.bootstrap.utilities;

public import uim.bootstrap.bs4;

// modules
public import uim.bootstrap.tables;

void add(ref string[] values, string value) {
	if (!canFind(values, value)) values = values~value;
}
void add(ref string[] values, string[] addVals) {
	foreach(v; addVals) add(values, v);
}

void del(ref string[] values, string value) {
	string[] result;
	result.length = values.length;
	bool foundValue = false;
	size_t counter;
	foreach(v; values) if (v != value) {
		result[counter] = v;
		counter++;
	}
	result.length = counter;
	values = result;
}