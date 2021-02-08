module uim.bootstrap.bs5.basic.components.lists.item;

import uim.bootstrap;

class DBS5ListItem : DBS5Obj {
	mixin(H5This!("LI", ["list-group-item"]));
	override public void _init() {
		super._init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS5ListItem");

unittest {
	assert(Assert(BS5ListItem, `<li class="list-group-item"></li>`));
}