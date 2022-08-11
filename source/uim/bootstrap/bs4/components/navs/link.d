module uim.bootstrap.bs4.components.navs.link;

@safe: 
import uim.bootstrap;

class DBS4NavLink : DBS4Obj {
	mixin(H5This!("A", ["nav-link"], `["href":"#"]`));

	O active(this O)(bool value = true) { if (value) this.classes("active"); return cast(O)this; }
	unittest {
		assert(BS4NavLink.active, `<a class="active nav-link" href="#"></a>`);
	}

	O disabled(this O)(bool value = true) { if (value) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(BS4NavLink.disabled, `<a class="disabled nav-link" href="#"></a>`);
	}

	O dropdownToggle(this O)(bool mode = true) { 
		return this
			.classes("dropdown-toggle")
			.attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
mixin(H5Calls!"BS4NavLink");

unittest {
	assert(BS4NavLink, `<a class="nav-link" href="#"></a>`);
}