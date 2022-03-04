﻿module uim.bootstrap.bs5.basic.components.lists.groupitem;

@safe: 
import uim.bootstrap;

class DBS5ListGroupItem : DBS5Obj {
	mixin(H5This!("DIV", ["list-group-item"]));

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS5ListGroupItem");

unittest {
	assert(Assert(BS5ListGroupItem, `<div class="list-group-item"></div>`));
}