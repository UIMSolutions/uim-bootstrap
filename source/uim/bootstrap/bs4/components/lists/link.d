module uim.bootstrap.bs4.components.lists.link;

import uim.bootstrap;

@safe: class DBS4ListLink : DBS4Obj {
	mixin(H5This!("A", ["list-group-item", "list-group-item-action"], null));

	O active(this O)(bool value = true) { return this.classes("active"); }
	unittest {
		assert(Assert(BS4ListLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	}

	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	unittest {
		assert(Assert(BS4ListLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
	}
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(H5Calls!"BS4ListLink");

unittest {
	assert(Assert(BS4ListLink, `<a class="list-group-item list-group-item-action"></a>`));
	assert(Assert(BS4ListLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	assert(Assert(BS4ListLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
}