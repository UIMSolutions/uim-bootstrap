﻿module uim.bootstrap.bs5.basic.components.progresses.bar;

@safe: 
import uim.bootstrap;

class DBS5ProgressBar : DBS5Obj {
	mixin(H5This!("div", ["progress-bar"], `["role":"progressbar"]`));

	O valueNow(this O)(string value) { return this.attributes(["aria-valuenow":value]); }
	O valueMin(this O)(string value) { return this.attributes(["aria-valuemin":value]); }
	O valueMax(this O)(string value) { return this.attributes(["aria-valuemax":value]); }
	O color(this O)(string colorName) { return this.addClasses("bg-"~colorName); }
	O striped(this O)(bool mode = true) { return this.addClasses("progress-bar-striped"); }
	O animated(this O)(bool mode = true) { return this.addClasses("progress-bar-animated"); }
}
mixin(H5Calls!"BS5ProgressBar");

version(test_uim_bootstrap) { unittest {
	assert(BS5ProgressBar == `<div class="progress-bar" role="progressbar"></div>`);
}}