module uim.bootstrap.bs5.basic.components.breadcrumbs.list;

@safe: 
import uim.bootstrap;

class DBS5BreadcrumbList : DBS5Obj {
	mixin(H5This!("Ol", ["breadcrumb"], `["aria-label":"breadcrumbs"]`));

	mixin(MyContent!("item", "BS5BreadcrumbItem"));
	version(test_uim_bootstrap) { unittest {
		writeln(BS5BreadcrumbList.item);
		assert(BS5BreadcrumbList.item, `<ol class="breadcrumb" aria-label="breadcrumbs"><li class="breadcrumb-item"></li></ol>`);
	}

	mixin(MyContent!("link", "this.item", "BS5BreadcrumbLink"));
	version(test_uim_bootstrap) { unittest {
		writeln(BS5BreadcrumbList.link);
		assert(BS5BreadcrumbList.link, `<ol class="breadcrumb" aria-label="breadcrumbs"><li class="breadcrumb-item"><a></a></li></ol>`);
	}
}
mixin(H5Calls!"BS5BreadcrumbList");

version(test_uim_bootstrap) { unittest {
	assert(BS5BreadcrumbList, `<ol class="breadcrumb" aria-label="breadcrumbs"></ol>`);
}
