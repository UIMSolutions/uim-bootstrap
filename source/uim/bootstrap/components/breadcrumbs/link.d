module uim.bootstrap.components.breadcrumbs.link;

import uim.bootstrap;

class DBS4BreadcrumbLink : DBS4Obj {	
	mixin(H5This!("LI", `["breadcrumb-item"]`));
	override public void init() {
		super.init;
	}

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));	

	mixin(TProperty!("string", "text"));
	mixin(TProperty!("string", "url"));

	override string toHTML() {
		if (text) {
			this.clearContent;
			this.content(H5A(["href":_url], _text));
		}
		return super.toHTML;
	}
}
mixin(H5Short!"BS4BreadcrumbLink");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4BreadcrumbLink == `<li class="breadcrumb-item"><a href=""></a></li>`);
	assert(BS4BreadcrumbLink.text("test").url("#") == `<li class="breadcrumb-item"><a href="#">test</a></li>`);
}
