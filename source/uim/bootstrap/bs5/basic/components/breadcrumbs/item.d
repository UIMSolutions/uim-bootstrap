module uim.bootstrap.bs5.basic.components.breadcrumbs.item;

@safe: 
import uim.bootstrap;

class DBS5BreadcrumbItem : DBS5Obj {
	mixin(H5This!("LI", ["breadcrumb-item"]));

	O active(this O)(bool mode = true) { if (mode) this.classes("active"); return cast(O)this; }
	unittest {
		assert(Assert(BS5BreadcrumbItem.active,`<li class="active breadcrumb-item"></li>`));
	}

	O disabled(this O)(bool mode = true) { if (mode) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(Assert(BS5BreadcrumbItem.disabled,`<li class="breadcrumb-item disabled"></li>`));
	}

	mixin(MyContent!("link", "BS5BreadcrumbLink"));
	unittest {
		writeln(BS5BreadcrumbItem.link);
		assert(Assert(BS5BreadcrumbItem.link, `<li class="breadcrumb-item"><a></a></li>`));
	}
}
mixin(H5Calls!"BS5BreadcrumbItem");

unittest {
	assert(Assert(BS5BreadcrumbItem,`<li class="breadcrumb-item"></li>`));
}
