module uim.bs4.components.tabs.content;

import uim.bs4;

class DBS4TabContent : DBS4Obj {
	mixin(H5This!("DIV", `["tab-content"]`));
	override public void init() {
		super.init;
	}	
	mixin(MyContent!("pane", "BS4TabPane"));
}
mixin(H5Short!"BS4TabContent");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4TabContent == `<div class="tab-content"></div>`);
}
