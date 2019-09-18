module uim.bootstrap.components.navs.link;

import uim.bootstrap;

class DBS4NavLink : DBS4Obj {
	mixin(H5This!("A", `["nav-link"]`));
	override public void _init() {
		super._init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O dropdownToggle(this O)(bool mode = true) { classes("dropdown-toggle"); 
		return attributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
mixin(BS4Short!"NavLink");

unittest {
	
	
	//assert(BS4NavLink == `<a class="nav-link" href="#"></a>`);
	// assert(BS4NavLink.active == `<a class="active nav-link" href="#"></a>`);
	//assert(BS4NavLink.disabled == `<a class="disabled nav-link" href="#"></a>`);
}