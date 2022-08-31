module uim.bootstrap.bs4.components.lists.link;

@safe: 
import uim.bootstrap;

class DBS4ListLink : DBS4Obj {
	mixin(H5This!("A", ["list-group-item", "list-group-item-action"], null));

	O active(this O)(bool value = true) { return this.addClasses("active"); }

	O disabled(this O)(bool value = true) { return this.addClasses("disabled"); }

	O color(this O)(string aColor) { return this.addClasses("list-group-item-"~aColor); }
}
mixin(H5Calls!"BS4ListLink");

version(test_uim_bootstrap) { unittest {
	assert(BS4ListLink == `<a class="list-group-item list-group-item-action"></a>`);
	assert(BS4ListLink.active == `<a class="active list-group-item list-group-item-action"></a>`);
	assert(BS4ListLink.disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}}