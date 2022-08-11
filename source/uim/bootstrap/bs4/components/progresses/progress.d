module uim.bootstrap.bs4.components.progresses.progress;

@safe: 
import uim.bootstrap;

class DBS4Progress : DBS4Obj {
	mixin(H5This!("Div", ["progress"]));

	mixin(MyContent!("bar", "BS4ProgressBar"));
}
mixin(H5Calls!"BS4Progress");

unittest {
	version(uim_bootstrap) {
		assert(BS4Progress, `<div class="progress"></div>`);
}}