module uim.bootstrap.components.paginations.pagination;

import uim.bootstrap;

class DBS4Pagination : DBS4Obj {
	mixin(H5This!("UL", `["pagination"]`));
	override public void _init() {
		super._init;
	}
	O center(this O)(string aSize) { return this.classes("justify-content-centers"); }
	O right(this O)(string aSize) { return this.classes("justify-content-end"); }
	O size(this O)(string aSize) { return this.classes("pagination-"~aSize); }
}
mixin(BS4Short!"Pagination");

unittest {
	

	assert(BS4Pagination == `<ul class="pagination"></ul>`);
}