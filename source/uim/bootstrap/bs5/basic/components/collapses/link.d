﻿module uim.bootstrap.bs5.basic.components.collapses.link;

import uim.bootstrap;

@safe: class DBS5CollapseLink : DBS5Obj {
	mixin(H5This!("a", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS5CollapseLink");

unittest {
	assert(Assert(BS5CollapseLink,`<a class="btn" data-toggle="collapse" role="button"></a>`));
}