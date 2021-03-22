module uim.bootstrap.bs4.components.collapses.button;

import uim.bootstrap;

@safe: class DBS4CollapseButton : DBS4Obj {
	mixin(H5This!("button", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS4CollapseButton");

unittest {
	assert(Assert(BS4CollapseButton,`<button class="btn" data-toggle="collapse" role="button"></button>`));
}