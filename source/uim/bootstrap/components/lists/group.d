module uim.bootstrap.components.lists.group;

import uim.bootstrap;

/// An unordered list with list items
class DBS4ListGroup : DBS4Obj
{
	mixin(H5This!("UL", `["list-group"]`));

	// Removes some borders and rounded corners to render group in a parent container
	O flush(this O)() {
		this.classes("list-group-flush");
		return cast(O)this;
	}

	// Add a list item
	mixin(MyContent!("item", "BS4ListGroupItem"));
	unittest {
		assert(BS4ListGroup.item == `<ul class="list-group"><li class="list-group-item"></li></ul>`);
		assert(BS4ListGroup.item("test") == `<ul class="list-group"><li class="list-group-item">test</li></ul>`);
	}
}

mixin(BS4Short!"ListGroup");
unittest {
	assert(BS4ListGroup == `<ul class="list-group"></ul>`);
}
