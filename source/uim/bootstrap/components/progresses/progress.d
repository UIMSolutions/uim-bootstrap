module uim.bootstrap.components.progresses.progress;

import uim.bootstrap;

class DBS4Progress : DBS4Obj {
	mixin(H5This!("Div", `["progress"]`));

	mixin(MyContent!("bar", "BS4ProgressBar"));
}
mixin(BS4Short!"Progress");

unittest {
	assert(Assert(BS4Progress, `<div class="progress"></div>`));
}