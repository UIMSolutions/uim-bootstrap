module uim.bootstrap.bs5.basic.components.tabs.content;

@safe: 
import uim.bootstrap;

class DBS5TabContent : DBS5Obj {
	mixin(H5This!("DIV", ["tab-content"]));

	mixin(MyContent!("pane", "BS5TabPane"));
}

mixin(H5Calls!"BS5TabContent");
///
unittest {
	assert(BS5TabContent, `<div class="tab-content"></div>`);
}
