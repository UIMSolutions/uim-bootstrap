module uim.bootstrap.components.navs.nav;

import uim.bootstrap;

class DBS4Nav : DBS4Obj {
	mixin(H5This!("nav", `["nav"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("link", "BS4NavLink"));
}
mixin(H5Short!"BS4Nav");

unittest {
	
	
	assert(BS4Nav == `<nav class="nav"></nav>`);
}