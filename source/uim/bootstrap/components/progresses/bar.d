module uim.bootstrap.components.progresses.bar;

import uim.bootstrap;

class DBS4ProgressBar : DBS4Obj {
	mixin(H5This!("DIV", `["progress-bar"]`, `["role":"progressbar"]`));
	override public void init() {
		super.init;
	}
	O valueNow(this O)(string value) { return this.attributes(["aria-valuenow":value]); }
	O valueMin(this O)(string value) { return this.attributes(["aria-valuemin":value]); }
	O valueMax(this O)(string value) { return this.attributes(["aria-valuemax":value]); }
	O color(this O)(string colorName) { return this.classes("bg-"~colorName); }
	O striped(this O)(bool mode = true) { return this.classes("progress-bar-striped"); }
	O animated(this O)(bool mode = true) { return this.classes("progress-bar-animated"); }
}
mixin(H5Short!"BS4ProgressBar");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4ProgressBar == `<div class="progress-bar"></div>`);
}