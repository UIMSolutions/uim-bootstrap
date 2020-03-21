module uim.bootstrap.content.images.thumbnail;

import uim.bootstrap;

class DBS4ImageFluid : DBS4Image {
	mixin(H5This!("Img", `["img-thumbnail"]`));
}
mixin(BS4Func!("ImageFluid"));

unittest {
	assert(Assert(BS4ImageFluid, `<img class="img-thumbnail">`));
}