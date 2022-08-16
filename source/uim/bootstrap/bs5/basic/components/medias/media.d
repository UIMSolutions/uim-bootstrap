module uim.bootstrap.bs5.basic.components.medias.media;

@safe: 
import uim.bootstrap;

class DBS5Media : DBS5Obj {
	mixin(H5This!("DIV", ["media"]));

	mixin(MyContent!("body_", "BS5MediaBody"));
}
mixin(H5Calls!"BS5Media");

version(test_uim_bootstrap) { unittest {
	assert(BS5Media, `<div class="media"></div>`);
}
