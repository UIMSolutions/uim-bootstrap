module uim.bootstrap.components.paginations.pagination;

import uim.bootstrap;

class DBS4Pagination : DBS4Obj {
	mixin(H5This!("UL", `["pagination"]`));
	override public void init() {
		super.init;
	}
	O center(this O)(string aSize) { return this.classes("justify-content-centers"); }
	O right(this O)(string aSize) { return this.classes("justify-content-end"); }
	O size(this O)(string aSize) { return this.classes("pagination-"~aSize); }
}
mixin(H5Short!"BS4Pagination");

unittest {
	

	assert(BS4Pagination == `<ul class="pagination"></ul>`);
}