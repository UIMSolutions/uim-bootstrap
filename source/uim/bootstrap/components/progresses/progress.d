module uim.bootstrap.components.progresses.progress;

import uim.bootstrap;

class DBS4Progress : DBS4Obj {
	mixin(H5This!("Div", ["progress"]));

	mixin(MyContent!("bar", "BS4ProgressBar"));
}
mixin(H5Calls!"BS4Progress");

unittest {
	assert(Assert(BS4Progress, `<div class="progress"></div>`));
}