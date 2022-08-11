module uim.bootstrap.bs5.basic.components.lists.link;

@safe: 
import uim.bootstrap;

class DBS5ListLink : DBS5Obj {
	mixin(H5This!("A", ["list-group-item", "list-group-item-action"], null));

	O active(this O)(bool value = true) { return this.classes("active"); }
	unittest {
		assert(BS5ListLink.active, `<a class="active list-group-item list-group-item-action"></a>`);
	}

	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	unittest {
		assert(BS5ListLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`);
	}
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(H5Calls!"BS5ListLink");

unittest {
	assert(BS5ListLink, `<a class="list-group-item list-group-item-action"></a>`);
	assert(BS5ListLink.active, `<a class="active list-group-item list-group-item-action"></a>`);
	assert(BS5ListLink.disabled, `<a class="disabled list-group-item list-group-item-action"></a>`);
}