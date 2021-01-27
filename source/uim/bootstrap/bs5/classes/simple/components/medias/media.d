module uim.bootstrap.bs5.classes.simple.components.medias.media;

import uim.bootstrap;

class DBS5Media : DBS5Obj {
	mixin(H5This!("DIV", ["media"]));

	mixin(MyContent!("body_", "BS5MediaBody"));
}
mixin(H5Calls!"BS5Media");

unittest {
	assert(Assert(BS5Media, `<div class="media"></div>`));
}
