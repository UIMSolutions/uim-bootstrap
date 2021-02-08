module uim.bootstrap.bs5.basic.components.collapses.button;

import uim.bootstrap;

class DBS5CollapseButton : DBS5Obj {
	mixin(H5This!("button", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS5CollapseButton");

unittest {
	assert(Assert(BS5CollapseButton,`<button class="btn" data-toggle="collapse" role="button"></button>`));
}