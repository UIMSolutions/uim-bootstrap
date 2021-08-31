﻿module uim.bootstrap.bs5.basic.components.breadcrumbs.list;

import uim.bootstrap;

@safe: class DBS5BreadcrumbList : DBS5Obj {
	mixin(H5This!("Ol", ["breadcrumb"], `["aria-label":"breadcrumbs"]`));

	mixin(MyContent!("item", "BS5BreadcrumbItem"));
	unittest {
		writeln(BS5BreadcrumbList.item);
		assert(Assert(BS5BreadcrumbList.item, `<ol class="breadcrumb" aria-label="breadcrumbs"><li class="breadcrumb-item"></li></ol>`));
	}

	mixin(MyContent!("link", "this.item", "BS5BreadcrumbLink"));
	unittest {
		writeln(BS5BreadcrumbList.link);
		assert(Assert(BS5BreadcrumbList.link, `<ol class="breadcrumb" aria-label="breadcrumbs"><li class="breadcrumb-item"><a></a></li></ol>`));
	}
}
mixin(H5Calls!"BS5BreadcrumbList");

unittest {
	assert(Assert(BS5BreadcrumbList, `<ol class="breadcrumb" aria-label="breadcrumbs"></ol>`));
}
