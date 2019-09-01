module uim.bootstrap.components.tabs.content;

import uim.bootstrap;

class DBS4TabContent : DBS4Obj {
	mixin(H5This!("DIV", `["tab-content"]`));
	override public void init() {
		super.init;
	}	
	mixin(MyContent!("pane", "BS4TabPane"));
}
mixin(BS4Short!"TabContent");

unittest {
	
	
	assert(BS4TabContent == `<div class="tab-content"></div>`);
}
