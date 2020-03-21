module uim.bootstrap.components.breadcrumbs.link;

import uim.bootstrap;

class DBS4BreadcrumbLink : DBS4Obj {	
	mixin(H5This!("LI", ["breadcrumb-item"]));
	override public void _init() {
		super._init;
	}
	unittest {
		assert(Assert(BS4BreadcrumbLink, `<li class="breadcrumb-item"><a href=""></a></li>`));
	}

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));	

	mixin(TProperty!("string", "text"));
	unittest {
		assert(Assert(BS4BreadcrumbLink.text("test").url("#"), `<li class="breadcrumb-item"><a href="#">test</a></li>`));
	}

	mixin(TProperty!("string", "url"));

	override string toHTML() {
		this.clearContent;
		if (text) this.content(H5A(["href":_url], _text));
		else this.content(H5A(["href":_url], ""));

		return super.toHTML;
	}
}
mixin(H5Calls!"BS4BreadcrumbLink");

unittest {
}
