module uim.bootstrap.components.lists.item;

import uim.bootstrap;

class DBS4ListGroupItem : DBS4Obj {
	mixin(H5This!("LI", `["list-group-item"]`));
	override public void init() {
		super.init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Short!"BS4ListGroupItem");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ListGroupItem == `<li class="list-group-item"></li>`);
}