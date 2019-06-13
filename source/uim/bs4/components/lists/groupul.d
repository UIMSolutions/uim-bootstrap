module uim.bs4.components.lists.groupul;

import uim.bs4;

class DBS4ListGroupUL : DBS4Obj {
	mixin(H5This!("UL", `["list-group"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("item", "BS4ListGroupItem"));
}
mixin(H5Short!"BS4ListGroupUL");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ListGroupUL == `<ul class="list-group"></ul>`);
}