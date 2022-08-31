module uim.bootstrap.bs4.components.lists.inlineitem;

@safe: 
import uim.bootstrap;

class DBS4ListInlineItem : DBS4Obj {
	mixin(H5This!("LI", ["list-inline-item"]));
}
mixin(H5Calls!"BS4ListInlineItem");

version(test_uim_bootstrap) { unittest {
	assert(BS4ListInlineItem == `<li class="list-inline-item"></li>`);
}}