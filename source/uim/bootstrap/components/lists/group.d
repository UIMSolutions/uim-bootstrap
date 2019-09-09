module uim.bootstrap.components.lists.group;

import uim.bootstrap;

class DBS4ListGroup : DBS4Obj {
	mixin(H5This!("UL", `["list-group"]`));

	mixin(MyContent!("link", "BS4ListGroupLink"));
	mixin(MyContent!("button", "BS4ListGroupButton"));
}
mixin(BS4Short!"ListGroup");

unittest {
	
	
	assert(BS4ListGroup == `<ul class="list-group"></ul>`);
}