module uim.bootstrap.bs5.classes.components.medias.body_;

import uim.bootstrap;

class DBS5MediaBody : DBS5Obj {
	mixin(H5This!("DIV", ["media-body"]));
}
mixin(H5Calls!"BS5MediaBody");

unittest {
	assert(Assert(BS5MediaBody, `<div class="media-body"></div>`));
}
