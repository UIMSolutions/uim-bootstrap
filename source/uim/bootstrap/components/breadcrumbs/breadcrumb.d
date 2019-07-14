module uim.bootstrap.components.breadcrumbs.breadcrumb;

import uim.bootstrap;

class DBS4Breadcrumb : DBS4Obj {
	mixin(H5This!("NAV", null, `["aria-label":"breadcrumb"]`));
	override public void init() {
		super.init;
	}

	mixin(MyContent!("item", "BS4BreadcrumbItem"));
	//O item(string url, string title) { }
	mixin(MyContent!("link", "BS4BreadcrumbLink"));

	override string toHTML() {
		auto buf = _html;
		this.clearContent;

		auto list = H5OL(["breadcrumb"], buf);
		if (_attributes.has("style")) list._attributes["style"] = _attributes["style"];
		this.content(list);
		return super.toHTML;
	}
}
mixin(H5Short!"BS4Breadcrumb");

unittest {
	
	
	assert(BS4Breadcrumb == `<nav aria-label="breadcrumb"><ol class="breadcrumb"></ol></nav>`);
}
