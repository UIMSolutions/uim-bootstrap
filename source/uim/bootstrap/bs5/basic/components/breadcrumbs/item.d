﻿module uim.bootstrap.bs5.basic.components.breadcrumbs.item;

@safe: 
import uim.bootstrap;

class DBS5BreadcrumbItem : DBS5Obj {
	mixin(H5This!("LI", ["breadcrumb-item"]));

	O active(this O)(bool mode = true) { if (mode) this.addClasses("active"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5BreadcrumbItem.active == `<li class="active breadcrumb-item"></li>`);
	}}

	O disabled(this O)(bool mode = true) { if (mode) this.addClasses("disabled"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5BreadcrumbItem.disabled == `<li class="breadcrumb-item disabled"></li>`);
	}}

	mixin(MyContent!("link", "BS5BreadcrumbLink"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5BreadcrumbItem.link == `<li class="breadcrumb-item"><a></a></li>`);
	}}
}
mixin(H5Calls!"BS5BreadcrumbItem");

version(test_uim_bootstrap) { unittest {
	assert(BS5BreadcrumbItem == `<li class="breadcrumb-item"></li>`);
}}
