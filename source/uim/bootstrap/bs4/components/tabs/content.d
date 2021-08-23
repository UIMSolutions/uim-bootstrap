module uim.bootstrap.bs4.components.tabs.content;

import uim.bootstrap;

@safe: class DBS4TabContent : DBS4Obj {
	mixin(H5This!("DIV", ["tab-content"]));

	mixin(MyContent!("pane", "BS4TabPane"));
}

mixin(H5Calls!"BS4TabContent");
///
unittest {
	assert(Assert(BS4TabContent, `<div class="tab-content"></div>`));
}
