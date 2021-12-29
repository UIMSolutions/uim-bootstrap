module uim.bootstrap.bs5.basic.components.breadcrumbs.breadcrumb;

@safe: 
import uim.bootstrap;

class DBS5Breadcrumb : DBS5Obj {
	mixin(H5This!("Nav", null, `["aria-label":"breadcrumb"]`));

	mixin(MyContent!("list", "BS5BreadcrumbList"));
	unittest {
		assert(Assert(BS5Breadcrumb.list, `<nav aria-label="breadcrumb"><ol class="breadcrumb" aria-label="breadcrumbs"></ol></nav>`));
	}

}
mixin(H5Calls!"BS5Breadcrumb");

unittest {
	assert(Assert(BS5Breadcrumb, `<nav aria-label="breadcrumb"></nav>`));
}
