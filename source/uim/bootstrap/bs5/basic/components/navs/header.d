﻿module uim.bootstrap.bs5.basic.components.navs.header;

import uim.bootstrap;

@safe: class DBS5NavHeader : DBS5Obj {
	mixin(H5This!("li", ["nav-header"]));

}
mixin(H5Calls!"BS5NavHeader");

unittest {
	assert(Assert(BS5NavHeader, `<li class="nav-header"></li>`));
}