module uim.bootstrap.bs4.components.lists.item;

import uim.bootstrap;

@safe: class DBS4ListItem : DBS4Obj {
	mixin(H5This!("LI", ["list-group-item"]));
	override public void _init() {
		super._init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS4ListItem");

unittest {
	assert(Assert(BS4ListItem, `<li class="list-group-item"></li>`));
}