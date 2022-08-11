module uim.bootstrap.bs5.basic.components.buttons.toolbar;

@safe: 
import uim.bootstrap;

class DBS5ButtonToolbar : DBS5Obj {
	mixin(H5This!("DIV", ["btn-toolbar"], `["role":"toolbar"]`));

	mixin(MyAttribute!("label", "aria-label"));
	unittest {
		assert(BS5ButtonToolbar.label("hallo"), `<div class="btn-toolbar" aria-label="hallo" role="toolbar"></div>`);
	}
	mixin(MyContent!("group", "BS5ButtonGroup"));
	unittest {
		assert(BS5ButtonToolbar.group, `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`);
	}
}
mixin(H5Calls!"BS5ButtonToolbar");

unittest {
	assert(BS5ButtonToolbar, `<div class="btn-toolbar" role="toolbar"></div>`);
}