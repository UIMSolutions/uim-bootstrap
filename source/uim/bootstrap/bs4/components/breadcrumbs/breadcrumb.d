module uim.bootstrap.bs4.components.breadcrumbs.breadcrumb;

@safe: 
import uim.bootstrap;

class DBS4Breadcrumb : DBS4Obj {
	mixin(H5This!("Nav", null, `["aria-label":"breadcrumb"]`));

	mixin(MyContent!("list", "BS4BreadcrumbList"));
	unittest {
		assert(BS4Breadcrumb.list, `<nav aria-label="breadcrumb"><ol class="breadcrumb"></ol></nav>`));
	}

}
mixin(H5Calls!"BS4Breadcrumb");

unittest {
	assert(BS4Breadcrumb, `<nav aria-label="breadcrumb"></nav>`));
}
