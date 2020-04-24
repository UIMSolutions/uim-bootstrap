module uim.bootstrap.extras.infoboxes.text;

import uim.bootstrap;

class DBS4InfoboxText : DBS4Obj {
	mixin(H5This!("Span", ["info-box-text"]));
}
mixin(H5Calls!"BS4InfoboxText");

unittest {
	assert(Assert(BS4InfoboxText,`<span class="info-box-text"></span>`));
}