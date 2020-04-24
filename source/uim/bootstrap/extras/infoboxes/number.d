module uim.bootstrap.extras.infoboxes.number;

import uim.bootstrap;

class DBS4InfoboxNumber : DBS4Obj {
	mixin(H5This!("Span", ["info-box-number"]));
}
mixin(H5Calls!"BS4InfoboxNumber");

unittest {
	assert(Assert(BS4InfoboxNumber,`<span class="info-box-number"></span>`));
}