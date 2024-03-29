﻿module uim.bootstrap.bs5.basic.components.lists.inlineitem;

@safe: 
import uim.bootstrap;

class DBS5ListInlineItem : DBS5Obj {
	mixin(H5This!("LI", ["list-inline-item"]));
}
mixin(H5Calls!"BS5ListInlineItem");

version(test_uim_bootstrap) { unittest {
	assert(BS5ListInlineItem == `<li class="list-inline-item"></li>`);
}}