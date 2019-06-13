module uim.bs4.components.navs.link;

import uim.bs4;

class DBS4NavLink : DBS4Obj {
	mixin(H5This!("A", `["nav-link"]`));
	override public void init() {
		super.init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O dropdownToggle(this O)(bool mode = true) { classes("dropdown-toggle"); 
		return attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
mixin(H5Short!"BS4NavLink");

unittest {
	writeln("Testing ", __MODULE__);
	
	//assert(BS4NavLink == `<a class="nav-link" href="#"></a>`);
	// assert(BS4NavLink.active == `<a class="active nav-link" href="#"></a>`);
	//assert(BS4NavLink.disabled == `<a class="disabled nav-link" href="#"></a>`);
}