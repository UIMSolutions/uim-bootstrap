module uim.bootstrap.components.paginations.pagination;

import uim.bootstrap;

class DBS4Pagination : DBS4Obj {
	mixin(H5This!("UL", ["pagination"]));

	
	O center(this O)(string aSize) { return this.classes("justify-content-centers"); }
	O right(this O)(string aSize) { return this.classes("justify-content-end"); }
	O size(this O)(string aSize) { return this.classes("pagination-"~aSize); }

	mixin(MyContent!("item", "BS4PageItem"));

	O link(this O)(string url, string someContent) { this.item(BS4PageLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, DH5Obj[] someContent...) { this.item(BS4PageLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, string[] linkClasses, string linkContent) { this.item(BS4PageLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string url, string[] linkClasses, DHObj[] linkContent...) { this.item(BS4PageLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }

	O link(this O)(string[] itemClasses, string url, string linkContent) { this.item(itemClasses, BS4PageLink(["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, DHObj[] linkContent...) { this.item(itemClasses, BS4PageLink(["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, string[] linkClasses, string linkContent) { this.item(itemClasses, BS4PageLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, string[] linkClasses, DHObj[] linkContent...) { this.item(itemClasses, BS4PageLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	unittest {
		assert(Assert(BS4Nav.link("#", ""), `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}
}
mixin(H5Calls!"BS4Pagination");

unittest {
	

	assert(Assert(BS4Pagination, `<ul class="pagination"></ul>`));
}