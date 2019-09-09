module uim.bootstrap.components.progresses.bar;

import uim.bootstrap;

class DBS4Progressbar : DBS4Obj {
	mixin(H5This!("div", `["progress-bar"]`, `["role":"progressbar"]`));
	override public void _init() {
		super._init;
	}
	O valueNow(this O)(string value) { return this.attributes(["aria-valuenow":value]); }
	O valueMin(this O)(string value) { return this.attributes(["aria-valuemin":value]); }
	O valueMax(this O)(string value) { return this.attributes(["aria-valuemax":value]); }
	O color(this O)(string colorName) { return this.classes("bg-"~colorName); }
	O striped(this O)(bool mode = true) { return this.classes("progress-bar-striped"); }
	O animated(this O)(bool mode = true) { return this.classes("progress-bar-animated"); }
}
mixin(BS4Short!"Progressbar");

unittest {
	

	assert(BS4Progressbar == `<div class="progress-bar" role="progressbar"></div>`);
}