module uim.bootstrap.bs4.content.images.thumbnail;

import uim.bootstrap;

class DBS4ImageFluid : DBS4Image {
	mixin(H5This!("Img", ["img-thumbnail"]));
}
mixin(H5Calls!("BS4ImageFluid"));

unittest {
	assert(Assert(BS4ImageFluid, `<img class="img-thumbnail">`));
}