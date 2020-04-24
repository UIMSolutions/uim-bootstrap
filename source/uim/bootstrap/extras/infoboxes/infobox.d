module uim.bootstrap.extras.infoboxes.infobox;

import uim.bootstrap;

class DBS4Infobox : DBS4Obj {
	mixin(H5This!("Div", ["info-box"]));

  mixin(MyContent!("icon", "BS4InfoboxIcon"));
  mixin(MyContent!("content", "BS4InfoboxContent"));
}
mixin(H5Calls!"BS4Infobox");

unittest {
	assert(Assert(BS4Infobox,`<div class="info-box"></div>`));
}
