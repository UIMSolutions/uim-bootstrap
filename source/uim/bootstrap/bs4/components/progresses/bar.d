module uim.bootstrap.bs4.components.progresses.bar;

import uim.bootstrap;

@safe: class DBS4ProgressBar : DBS4Obj {
	mixin(H5This!("div", ["progress-bar"], `["role":"progressbar"]`));

	O valueNow(this O)(string value) { return this.attributes(["aria-valuenow":value]); }
	O valueMin(this O)(string value) { return this.attributes(["aria-valuemin":value]); }
	O valueMax(this O)(string value) { return this.attributes(["aria-valuemax":value]); }
	O color(this O)(string colorName) { return this.classes("bg-"~colorName); }
	O striped(this O)(bool mode = true) { return this.classes("progress-bar-striped"); }
	O animated(this O)(bool mode = true) { return this.classes("progress-bar-animated"); }
}
mixin(H5Calls!"BS4ProgressBar");

unittest {
	assert(Assert(BS4ProgressBar, `<div class="progress-bar" role="progressbar"></div>`));
}