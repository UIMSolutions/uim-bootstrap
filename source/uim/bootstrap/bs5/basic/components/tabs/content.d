module uim.bootstrap.bs5.basic.components.tabs.content;

import uim.bootstrap;

@safe: class DBS5TabContent : DBS5Obj {
	mixin(H5This!("DIV", ["tab-content"]));

	mixin(MyContent!("pane", "BS5TabPane"));
}

mixin(H5Calls!"BS5TabContent");
///
unittest {
	assert(Assert(BS5TabContent, `<div class="tab-content"></div>`));
}
