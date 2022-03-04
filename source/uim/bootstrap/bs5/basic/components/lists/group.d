module uim.bootstrap.bs5.basic.components.lists.group;

@safe: 
import uim.bootstrap;

class DBS5ListGroup : DBS5Obj {
	mixin(H5This!("Div", ["list-group"]));

	mixin(MyContent!("item", "BS5ListGroupItem"));
	mixin(MyContent!("link", "BS5ListLink"));
	mixin(MyContent!("button", "BS5ListButton"));
}
mixin(H5Calls!"BS5ListGroup");

unittest {
	assert(Assert(BS5ListGroup, `<div class="list-group"></div>`));
	assert(Assert(BS5ListGroup.item, `<div class="list-group"><div class="list-group-item"></div></div>`));
}