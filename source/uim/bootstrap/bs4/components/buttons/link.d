module uim.bootstrap.bs4.components.buttons.link;

@safe: 
import uim.bootstrap;

class DBS4ButtonLink : DBS4ButtonObj {
	mixin(H5This!("A", ["btn"], `["type":"button"]`));


}
mixin(H5Calls!"BS4ButtonLink");

unittest {
	assert(BS4ButtonLink, `<a class="btn" type="button"></a>`));
}
