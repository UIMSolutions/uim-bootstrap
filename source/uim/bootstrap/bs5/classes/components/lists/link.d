module uim.bootstrap.bs5.classes.components.lists.link;

import uim.bootstrap;

class DBS5ListGroupLink : DBS5Obj {
	mixin(H5This!("A", ["list-group-item", "list-group-item-action"], null));

	O active(this O)(bool value = true) { return this.classes("active"); }
	unittest {
		assert(Assert(BS5ListGroupLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	}

	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	unittest {
		assert(Assert(BS5ListGroupLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
	}
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(H5Calls!"BS5ListGroupLink");

unittest {
	assert(Assert(BS5ListGroupLink, `<a class="list-group-item list-group-item-action"></a>`));
	assert(Assert(BS5ListGroupLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	assert(Assert(BS5ListGroupLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
}