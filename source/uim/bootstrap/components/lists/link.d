module uim.bootstrap.components.lists.link;

import uim.bootstrap;

class DBS4ListGroupLink : DBS4Obj {
	mixin(H5This!("A", `["list-group-item list-group-item-action"]`));
	override public void init() {
		super.init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(H5Short!"BS4ListGroupLink");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ListGroupLink == `<a class="list-group-item list-group-item-action"></a>`);
	assert(BS4ListGroupLink.active == `<a class="active list-group-item list-group-item-action"></a>`);
	assert(BS4ListGroupLink.disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}