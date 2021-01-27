module uim.bootstrap.bs5.classes.simple.components.navs.link;

import uim.bootstrap;

class DBS5NavLink : DBS5Obj {
	mixin(H5This!("A", ["nav-link"], `["href":"#"]`));

	O active(this O)(bool value = true) { if (value) this.classes("active"); return cast(O)this; }
	unittest {
		assert(Assert(BS5NavLink.active, `<a class="active nav-link" href="#"></a>`));
	}

	O disabled(this O)(bool value = true) { if (value) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(Assert(BS5NavLink.disabled, `<a class="disabled nav-link" href="#"></a>`));
	}

	O dropdownToggle(this O)(bool mode = true) { 
		return this
			.classes("dropdown-toggle")
			.attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
mixin(H5Calls!"BS5NavLink");

unittest {
	assert(Assert(BS5NavLink, `<a class="nav-link" href="#"></a>`));
}