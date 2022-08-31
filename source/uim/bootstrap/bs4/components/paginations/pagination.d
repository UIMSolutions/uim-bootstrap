module uim.bootstrap.bs4.components.paginations.pagination;

@safe: 
import uim.bootstrap;

class DBS4Pagination : DBS4Obj {
	mixin(H5This!("UL", ["pagination"]));

	
	O center(this O)(string aSize) { return this.addClasses("justify-content-centers"); }
	O right(this O)(string aSize) { return this.addClasses("justify-content-end"); }
	O size(this O)(string aSize) { return this.addClasses("pagination-"~aSize); }

	mixin(MyContent!("item", "BS4PageItem"));

	mixin(MyContent!("link", "this.item", "BS4PageLink"));
}
mixin(H5Calls!"BS4Pagination");

version(test_uim_bootstrap) { unittest {
	assert(BS4Pagination == `<ul class="pagination"></ul>`);
	assert(BS4Pagination.link == `<ul class="pagination"><li class="page-item"><a class="page-link" href="#"></a></li></ul>`);
}}