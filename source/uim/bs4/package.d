module uim.bs4;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.web;
public import uim.html;

// packages
public import uim.bs4.obj;
public import uim.bs4.mixins;
public import uim.bs4.layout;
public import uim.bs4.components;
public import uim.bs4.additionals;
public import uim.bs4.utilities;

// modules
public import uim.bs4.tables;

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