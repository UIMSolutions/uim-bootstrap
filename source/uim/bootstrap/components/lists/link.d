module uim.bootstrap.components.lists.link;

import uim.bootstrap;

class DBS4ListGroupLink : DBS4Obj {
	mixin(H5This!("A", `["list-group-item list-group-item-action"]`));
	override public void _init() {
		super._init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	unittest {
		assert(Assert(BS4ListGroupLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	}

	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	unittest {
		assert(Assert(BS4ListGroupLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
	}
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(BS4Short!"ListGroupLink");

unittest {
	assert(Assert(BS4ListGroupLink, `<a class="list-group-item list-group-item-action"></a>`));
	assert(Assert(BS4ListGroupLink.active, `<a class="active list-group-item list-group-item-action"></a>`));
	assert(Assert(BS4ListGroupLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`));
}