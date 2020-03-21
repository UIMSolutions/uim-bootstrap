module uim.bootstrap.components.collapses.link;

import uim.bootstrap;

class DBS4CollapseLink : DBS4Obj {
	mixin(H5This!("a", `["btn"]`, `["data-toggle":"collapse", "role":"button"]`));
}
mixin(BS4Short!"CollapseLink");

unittest {
	assert(Assert(BS4CollapseLink,`<a class="btn" data-toggle="collapse" role="button"></a>`));
}