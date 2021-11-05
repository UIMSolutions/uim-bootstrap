module uim.bootstrap.bs4.components.buttons.toolbar;

import uim.bootstrap;

@safe: class DBS4ButtonToolbar : DBS4Obj {
	mixin(H5This!("DIV", ["btn-toolbar"], `["role":"toolbar"]`));

	mixin(MyAttribute!("label", "aria-label"));
	unittest {
		assert(Assert(BS4ButtonToolbar.label("hallo"), `<div class="btn-toolbar" aria-label="hallo" role="toolbar"></div>`));
	}
	mixin(MyContent!("group", "BS4ButtonGroup"));
	unittest {
		assert(Assert(BS4ButtonToolbar.group, `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`));
	}
}
mixin(H5Calls!"BS4ButtonToolbar");

unittest {
	assert(Assert(BS4ButtonToolbar, `<div class="btn-toolbar" role="toolbar"></div>`));
}