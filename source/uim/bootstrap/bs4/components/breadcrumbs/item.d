module uim.bootstrap.bs4.components.breadcrumbs.item;

@safe: 
import uim.bootstrap;

class DBS4BreadcrumbItem : DBS4Obj {
	mixin(H5This!("LI", ["breadcrumb-item"]));

	O active(this O)(bool mode = true) { if (mode) this.classes("active"); return cast(O)this; }
	unittest {
		assert(BS4BreadcrumbItem.active == `<li class="active breadcrumb-item"></li>`);
	}

	O disabled(this O)(bool mode = true) { if (mode) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(BS4BreadcrumbItem.disabled == `<li class="breadcrumb-item disabled"></li>`);
	}

	mixin(MyContent!("link", "BS4BreadcrumbLink"));
	unittest {
		writeln(BS4BreadcrumbItem.link);
		assert(BS4BreadcrumbItem.link, `<li class="breadcrumb-item"><a></a></li>`);
	}
}
mixin(H5Calls!"BS4BreadcrumbItem");

unittest {
	assert(BS4BreadcrumbItem == `<li class="breadcrumb-item"></li>`);
}
