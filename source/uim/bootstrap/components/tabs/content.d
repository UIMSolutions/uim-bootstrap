module uim.bootstrap.components.tabs.content;

import uim.bootstrap;

class DBS4TabContent : DBS4Obj {
	mixin(H5This!("DIV", `["tab-content"]`));

	mixin(MyContent!("pane", "BS4TabPane"));
}

mixin(BS4Short!"TabContent");
///
unittest {
	assert(Assert(BS4TabContent, `<div class="tab-content"></div>`));
}
