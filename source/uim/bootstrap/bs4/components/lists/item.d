module uim.bootstrap.bs4.components.lists.item;

@safe: 
import uim.bootstrap;

class DBS4ListItem : DBS4Obj {
	mixin(H5This!("LI", ["list-group-item"]));

	O color(this O)(string aColor) { this.addClasses("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS4ListItem");

version(test_uim_bootstrap) { unittest {
	assert(BS4ListItem == `<li class="list-group-item"></li>`);
}}