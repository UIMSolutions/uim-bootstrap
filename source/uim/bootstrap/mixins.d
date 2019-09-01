module uim.bootstrap.mixins;

import uim.bootstrap;

template BS4Func(string name) {
	const char[] BS4Func = "
auto BS4"~name~"(string content) { return new DBS4"~name~"(content); }
auto BS4"~name~"(DH5Obj[] content...) { return new DBS4"~name~"(content); }

auto BS4"~name~"(string id, string[] classes) { return new DBS4"~name~"(id, classes); }
auto BS4"~name~"(string id, string[] classes, string content) { return new DBS4"~name~"(id, classes, content); }
auto BS4"~name~"(string id, string[] classes, DH5Obj[] content...) { return new DBS4"~name~"(id, classes, content); }

auto BS4"~name~"(string id, string[string] attributes) { return new DBS4"~name~"(id, attributes); }
auto BS4"~name~"(string id, string[string] attributes, string content) { return new DBS4"~name~"(id, attributes, content); }
auto BS4"~name~"(string id, string[string] attributes, DH5Obj[] content...) { return new DBS4"~name~"(id, attributes, content); }

auto BS4"~name~"(string id, string[] classes, string[string] attributes) { return new DBS4"~name~"(id, classes, attributes); }
auto BS4"~name~"(string id, string[] classes, string[string] attributes, string content) { return new DBS4"~name~"(id, classes, attributes, content); }
auto BS4"~name~"(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4"~name~"(id, classes, attributes, content); }

auto BS4"~name~"(string[] classes) { return new DBS4"~name~"(classes); }
auto BS4"~name~"(string[] classes, string content) { return new DBS4"~name~"(classes, content); }
auto BS4"~name~"(string[] classes, DH5Obj[] content...) { return new DBS4"~name~"(classes, content); }

auto BS4"~name~"(string[string] attributes) { return new DBS4"~name~"(attributes); }
auto BS4"~name~"(string[string] attributes, string content) { return new DBS4"~name~"(attributes, content); }
auto BS4"~name~"(string[string] attributes, DH5Obj[] content...) { return new DBS4"~name~"(attributes, content); }

auto BS4"~name~"(string[] classes, string[string] attributes) { return new DBS4"~name~"(classes, attributes); }
auto BS4"~name~"(string[] classes, string[string] attributes, string content) { return new DBS4"~name~"(classes, attributes, content); }
auto BS4"~name~"(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4"~name~"(classes, attributes, content); }
";
}

template BS4Func(string left, string right) {
	const char[] BS4Func = "
	auto BS4"~left~"(string content) { return new DBS4"~right~"(content); }
	auto BS4"~left~"(DH5Obj[] content...) { return new DBS4"~right~"(content); }

	auto BS4"~left~"(string id, string[] classes) { return new DBS4"~right~"(id, classes); }
	auto BS4"~left~"(string id, string[] classes, string content) { return new DBS4"~right~"(id, classes, content); }
	auto BS4"~left~"(string id, string[] classes, DH5Obj[] content...) { return new DBS4"~right~"(id, classes, content); }

	auto BS4"~left~"(string id, string[string] attributes) { return new DBS4"~right~"(id, attributes); }
	auto BS4"~left~"(string id, string[string] attributes, string content) { return new DBS4"~right~"(id, attributes, content); }
	auto BS4"~left~"(string id, string[string] attributes, DH5Obj[] content...) { return new DBS4"~right~"(id, attributes, content); }

	auto BS4"~left~"(string id, string[] classes, string[string] attributes) { return new DBS4"~right~"(id, classes, attributes); }
	auto BS4"~left~"(string id, string[] classes, string[string] attributes, string content) { return new DBS4"~right~"(id, classes, attributes, content); }
	auto BS4"~left~"(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4"~right~"(id, classes, attributes, content); }

	auto BS4"~left~"(string[] classes) { return new DBS4"~right~"(classes); }
	auto BS4"~left~"(string[] classes, string content) { return new DBS4"~right~"(classes, content); }
	auto BS4"~left~"(string[] classes, DH5Obj[] content...) { return new DBS4"~right~"(classes, content); }

	auto BS4"~left~"(string[string] attributes) { return new DBS4"~right~"(attributes); }
	auto BS4"~left~"(string[string] attributes, string content) { return new DBS4"~right~"(attributes, content); }
	auto BS4"~left~"(string[string] attributes, DH5Obj[] content...) { return new DBS4"~right~"(attributes, content); }

	auto BS4"~left~"(string[] classes, string[string] attributes) { return new DBS4"~right~"(classes, attributes); }
	auto BS4"~left~"(string[] classes, string[string] attributes, string content) { return new DBS4"~right~"(classes, attributes, content); }
	auto BS4"~left~"(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4"~right~"(classes, attributes, content); }
	";
}

template BS4This(string bsName, string classes = null, string attributes = null) {
	const char[] strClasses = (classes) ? "_classes.add("~classes~");" : "";
	const char[] strAttributes = (attributes)? "_attributes.add("~attributes~");" : "";
	
	const char[] BS4This = `
	this(string content) { super(content); `~strClasses~strAttributes~`}
	this(DH5Obj[] content...) { super(content); `~strClasses~strAttributes~`}

	this(string id, string[] someClasses) { super(id, someClasses); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string content) { super(id, someClasses, content); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, DH5Obj[] content...) { super(id, someClasses, content); `~strClasses~strAttributes~`}

	this(string id, string[string] attributes) { super(id, attributes); `~strClasses~strAttributes~`}
	this(string id, string[string] attributes, string content) { super(id, attributes).content(content); `~strClasses~strAttributes~`}
	this(string id, string[string] attributes, DH5Obj[] content...) { super(id, attributes).content(content); `~strClasses~strAttributes~`}

	this(string id, string[] someClasses, string[string] attributes) { super(id, someClasses, attributes); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string[string] attributes, string content) { super(id, someClasses, attributes, content); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string[string] attributes, DH5Obj[] content...) { super(id, someClasses, attributes, content); `~strClasses~strAttributes~`}

	this(string[] someClasses) { super(someClasses); `~strClasses~strAttributes~`}
	this(string[] someClasses, string content) { super(someClasses, content); `~strClasses~strAttributes~`}
	this(string[] someClasses, DH5Obj[] content...) { super(someClasses, content); `~strClasses~strAttributes~`}

	this(string[string] attributes) { super(attributes); `~strClasses~strAttributes~`}
	this(string[string] attributes, string content) { super(attributes, content); `~strClasses~strAttributes~`}
	this(string[string] attributes, DH5Obj[] content...) { super(attributes, content); `~strClasses~strAttributes~`}

	this(string[] classes, string[string] attributes) { super(classes, attributes); `~strClasses~strAttributes~`}
	this(string[] classes, string[string] attributes, string content) { super(classes, attributes, content); `~strClasses~strAttributes~`}
	this(string[] classes, string[string] attributes, DH5Obj[] content...) { super(classes, attributes, content); `~strClasses~strAttributes~`}
	`;
}

template BS4Short(string name) {		
	const char[] BS4Short = h5Methods("auto BS4"~name, "new DBS4"~name);
}