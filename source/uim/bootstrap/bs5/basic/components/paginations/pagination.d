﻿module uim.bootstrap.bs5.basic.components.paginations.pagination;

@safe: 
import uim.bootstrap;

class DBS5Pagination : DBS5Obj {
	mixin(H5This!("UL", ["pagination"]));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }

	O center(this O)(string aSize) { return this.addClasses("justify-content-centers"); }
	O right(this O)(string aSize) { return this.addClasses("justify-content-end"); }
	O size(this O)(string aSize) { return this.addClasses("pagination-"~aSize); }

	mixin(MyContent!("item", "BS5PageItem"));
	mixin(MyContent!("link", "this.item", "BS5PageLink"));
}
mixin(H5Calls!"BS5Pagination");

version(test_uim_bootstrap) { unittest {
	assert(BS5Pagination);
	assert(BS5Pagination == `<ul class="pagination"></ul>`);
	assert(BS5Pagination.link == `<ul class="pagination"><li class="page-item"><a class="page-link" href="#"></a></li></ul>`);
}}