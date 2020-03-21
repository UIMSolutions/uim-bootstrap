module uim.bootstrap.components.collapses.button;

import uim.bootstrap;

class DBS4CollapseButton : DBS4Obj {
	mixin(H5This!("button", `["btn"]`, `["data-toggle":"collapse", "role":"button"]`));
}
mixin(BS4Short!"CollapseButton");

unittest {
	assert(Assert(BS4CollapseButton,`<button class="btn" data-toggle="collapse" role="button"></button>`));
}