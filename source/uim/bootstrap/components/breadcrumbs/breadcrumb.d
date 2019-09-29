module uim.bootstrap.components.breadcrumbs.breadcrumb;

import uim.bootstrap;

class DBS4Breadcrumb : DBS4Obj {
	mixin(H5This!("NAV", null, `["aria-label":"breadcrumb"]`));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("item", "BS4BreadcrumbItem"));
	//O item(string url, string title) { }
	mixin(MyContent!("link", "BS4BreadcrumbLink"));

	override string toHTML() {
		auto buf = _html;
		this.clearContent;

		auto list = H5Ol(["breadcrumb"], buf);
		if ("style" in _attributes) list._attributes["style"] = _attributes["style"];
		this.content(list);
		return super.toHTML;
	}
}
mixin(BS4Short!"Breadcrumb");

unittest {
	assert(BS4Breadcrumb == `<nav aria-label="breadcrumb"><ol class="breadcrumb"></ol></nav>`);
}
