module uim.bootstrap.bs5.basic.components.lists.item;

@safe: 
import uim.bootstrap;

class DBS5ListItem : DBS5Obj {
	mixin(H5This!("LI", ["list-group-item"]));

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS5ListItem");

version(test_uim_bootstrap) { unittest {
	assert(BS5ListItem, `<li class="list-group-item"></li>`);
}