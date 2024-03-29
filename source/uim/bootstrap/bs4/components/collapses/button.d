﻿module uim.bootstrap.bs4.components.collapses.button;

@safe: 
import uim.bootstrap;

class DBS4CollapseButton : DBS4Obj {
	mixin(H5This!("button", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS4CollapseButton");

version(test_uim_bootstrap) { unittest {
	assert(BS4CollapseButton == `<button class="btn" data-toggle="collapse" role="button"></button>`);
}}