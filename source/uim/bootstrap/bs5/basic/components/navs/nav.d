module uim.bootstrap.bs5.basic.components.navs.nav;

@safe: 
import uim.bootstrap;

class DBS5Nav : DBS5Obj {
	mixin(H5This!("Ul", ["nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Nav.item, `<ul class="nav"><li class="nav-item"></li></ul>`);
	}

	mixin(MyContent!("header", "BS5NavHeader"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Nav.header, `<ul class="nav"><li class="nav-header"></li></ul>`);
	}

	mixin(MyContent!("link", "this.item", "BS5NavLink"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Nav.link, `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
	}

	O pills(this O)(bool mode = true) { if (mode) this.classes("nav-pills"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5Nav.pills, `<ul class="nav nav-pills"></ul>`);
	}
}
mixin(H5Calls!"BS5Nav");

version(test_uim_bootstrap) { unittest {
	assert(BS5Nav, `<ul class="nav"></ul>`);
}