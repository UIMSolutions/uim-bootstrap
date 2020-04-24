module uim.bootstrap.extras.infoboxes.icon;

import uim.bootstrap;

class DBS4InfoboxIcon : DBS4Obj {
	mixin(H5This!("Span", ["info-box"]));
}
mixin(H5Calls!"BS4InfoboxIcon");

unittest {
	assert(Assert(BS4InfoboxIcon,`<span class="info-box-icon"></span>`));
}