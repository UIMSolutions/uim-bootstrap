module uim.bootstrap.obj;

import uim.bootstrap;

class DBS4Obj : DH5Obj {
	mixin(H5This!("DIV"));

	O margin(this O)(string value) { this.classes.add("m"~((value.length > 0) ? "-"~value:"")); return cast(O)this; }
	O padding(this O)(string value) { this.classes.add("p"~((value.length > 0) ? "-"~value:"")); return cast(O)this; }

	O border(this O)(string value = "") { this.classes.add("border"~((value.length > 0) ? "-"~value:"")); return cast(O)this; }
	O borderContext(this O)(string value) { this.classes.add("border-"~context); return cast(O)this; }

	O radius(this O)(string value = "") { this.classes.add("rounded"~((value.length > 0) ? "-"~value:"")); return cast(O)this; }
}
mixin(H5Short!"BS4Obj");

unittest {
	assert(BS4Obj == "<div></div>");
}