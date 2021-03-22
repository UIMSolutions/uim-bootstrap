﻿module uim.bootstrap.bs4.components.navs.header;

import uim.bootstrap;

@safe: class DBS4NavHeader : DBS4Obj {
	mixin(H5This!("li", ["nav-header"]));

}
mixin(H5Calls!"BS4NavHeader");

unittest {
	assert(Assert(BS4NavHeader, `<li class="nav-header"></li>`));
}