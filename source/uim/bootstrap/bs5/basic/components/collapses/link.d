﻿module uim.bootstrap.bs5.basic.components.collapses.link;

@safe: 
import uim.bootstrap;

class DBS5CollapseLink : DBS5Obj {
	mixin(H5This!("a", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS5CollapseLink");

version(test_uim_bootstrap) { unittest {
	assert(BS5CollapseLink == `<a class="btn" data-toggle="collapse" role="button"></a>`);
}}