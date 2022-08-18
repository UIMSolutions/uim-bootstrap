module uim.bootstrap.bs4.components.medias.media;

@safe: 
import uim.bootstrap;

class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", ["media"]));

	mixin(MyContent!("body_", "BS4MediaBody"));
}
mixin(H5Calls!"BS4Media");

version(test_uim_bootstrap) { unittest {
	assert(BS4Media, == `<div class="media"></div>`);
}}
