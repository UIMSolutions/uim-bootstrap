module uim.bootstrap.bs4.components.breadcrumbs.list;

@safe: 
import uim.bootstrap;

class DBS4BreadcrumbList : DBS4Obj {
	mixin(H5This!("Ol", ["breadcrumb"], null));

	mixin(MyContent!("item", "BS4BreadcrumbItem"));
	unittest {
		writeln(BS4BreadcrumbList.item);
		assert(BS4BreadcrumbList.item, `<ol class="breadcrumb"><li class="breadcrumb-item"></li></ol>`));
	}

	mixin(MyContent!("link", "this.item", "BS4BreadcrumbLink"));
	unittest {
		writeln(BS4BreadcrumbList.link);
		assert(BS4BreadcrumbList.link, `<ol class="breadcrumb"><li class="breadcrumb-item"><a></a></li></ol>`));
	}
}
mixin(H5Calls!"BS4BreadcrumbList");

unittest {
	assert(BS4BreadcrumbList, `<ol class="breadcrumb"></ol>`));
}
