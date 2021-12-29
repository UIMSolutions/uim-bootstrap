module uim.bootstrap.bs5.basic.components.lists.divitem;

@safe:
@safe: 
import uim.bootstrap;

class DBS5ListDivItem : DBS5Obj { // I know, it's a ugly name
	mixin(H5This!("Div", ["list-group-item"]));

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS5ListDivItem");

unittest {
	assert(Assert(BS5ListDivItem, `<div class="list-group-item"></div>`));
}