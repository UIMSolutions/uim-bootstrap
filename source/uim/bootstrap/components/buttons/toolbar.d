module uim.bootstrap.components.buttons.toolbar;

import uim.bootstrap;

class DBS4ButtonToolbar : DBS4Obj {
	mixin(H5This!("DIV", `["btn-toolbar"]`, `["role":"toolbar"]`));
	override public void _init() {
		super._init;
	}
	mixin(MyAttribute!("label", "aria-label"));
	unittest {
		assert(Assert(BS4ButtonToolbar.label("hallo"), `<div class="btn-toolbar" aria-label="hallo" role="toolbar"></div>`));
	}
	mixin(MyContent!("group", "BS4ButtonGroup"));
	unittest {
		assert(Assert(BS4ButtonToolbar.group, `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`));
	}
}
mixin(BS4Short!"ButtonToolbar");

unittest {
	assert(Assert(BS4ButtonToolbar, `<div class="btn-toolbar" role="toolbar"></div>`));
}