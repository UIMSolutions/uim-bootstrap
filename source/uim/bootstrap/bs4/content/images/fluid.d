module uim.bootstrap.bs4.content.images.fluid;

@safe: 
import uim.bootstrap;

class DBS4ImageFluid : DBS4Image {
	mixin(H5This!("Img", ["img-fluid"]));
}
mixin(H5Calls!("BS4ImageFluid"));

version(test_uim_bootstrap) { unittest {
	assert(BS4ImageFluid, `<img class="img-fluid">`);
}