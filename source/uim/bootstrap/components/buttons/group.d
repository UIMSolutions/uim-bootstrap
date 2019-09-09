module uim.bootstrap.components.buttons.group;

import uim.bootstrap;

class DBS4ButtonGroup : DBS4Obj {
	mixin(H5This!("DIV", `["btn-group"]`, `["role":"group"]`));
	override public void _init() {
		super._init;
	}

	// Set size of button group
	O size(this O)(string value){ this.classes("btn-group-"~value); return cast(O)this; }
	unittest
	{
			assert(BS4ButtonGroup.size("lg") == `<div class="btn-group btn-group-lg" role="group"></div>`);
	}

	O vertical(this O)(bool mode){ if (mode) this.classes("btn-group-vertical"); return cast(O)this; }
	unittest
	{
			assert(BS4ButtonGroup.vertical(true) == `<div class="btn-group-vertical"></div>`);
	}

	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS4Button"));
	mixin(MyContent!("link", "BS4ButtonLink"));
}
mixin(BS4Short!"ButtonGroup");

unittest {
	assert(BS4ButtonGroup == `<div class="btn-group" role="group"></div>`);
}