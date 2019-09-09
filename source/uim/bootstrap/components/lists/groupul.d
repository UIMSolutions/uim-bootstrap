module uim.bootstrap.components.lists.groupul;

import uim.bootstrap;

class DBS4ListGroupUL : DBS4Obj {
	mixin(H5This!("UL", `["list-group"]`));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "BS4ListGroupItem"));
}
mixin(BS4Short!"ListGroupUL");

unittest {
	
	
	assert(BS4ListGroupUL == `<ul class="list-group"></ul>`);
}