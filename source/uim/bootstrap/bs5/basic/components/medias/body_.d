module uim.bootstrap.bs5.basic.components.medias.body_;

import uim.bootstrap;

@safe: class DBS5MediaBody : DBS5Obj {
	mixin(H5This!("DIV", ["media-body"]));
}
mixin(H5Calls!"BS5MediaBody");

unittest {
	assert(Assert(BS5MediaBody, `<div class="media-body"></div>`));
}
