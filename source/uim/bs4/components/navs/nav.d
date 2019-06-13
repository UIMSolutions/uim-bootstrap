module uim.bs4.components.navs.nav;

import uim.bs4;

class DBS4Nav : DBS4Obj {
	mixin(H5This!("nav", `["nav"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("link", "BS4NavLink"));
}
mixin(H5Short!"BS4Nav");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4Nav == `<nav class="nav"></nav>`);
}