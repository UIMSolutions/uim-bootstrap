module uim.bootstrap.components.navs.nav;

import uim.bootstrap;

class DBS4Nav : DBS4Obj {
	mixin(H5This!("UL", `["nav"]`));
	mixin(MyContent!("link", "BS4NavLink"));
}
mixin(BS4Short!"Nav");

unittest {
	assert(BS4Nav == `<ul class="nav"></ul>`);
}