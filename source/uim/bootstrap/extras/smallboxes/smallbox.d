module uim.bootstrap.extras.smallboxes.smallbox;

import uim.bootstrap;

class DBS4Smallbox : DBS4Obj {
	mixin(H5This!("Div", ["small-box"], null));

  mixin(MyContent!("footer", "BS4Smallbox"));
}
mixin(H5Calls!"BS4Smallbox");

unittest {
	assert(Assert(BS4Smallbox,`<div class="small-box"></div>`));
}
