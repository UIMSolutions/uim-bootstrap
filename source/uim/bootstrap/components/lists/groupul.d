module uim.bootstrap.components.lists.groupul;

import uim.bootstrap;

class DBS4ListGroupUL : DBS4Obj {
	mixin(H5This!("UL", `["list-group"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("item", "BS4ListGroupItem"));
}
mixin(H5Short!"BS4ListGroupUL");

unittest {
	
	
	assert(BS4ListGroupUL == `<ul class="list-group"></ul>`);
}