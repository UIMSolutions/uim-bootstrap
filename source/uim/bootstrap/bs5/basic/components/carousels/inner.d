module uim.bootstrap.bs5.basic.components.carousels.inner;

@safe: 
import uim.bootstrap;

class DBS5CarouselInner : DBS5Obj {
	mixin(H5This!("div", ["carousel-inner"]));

	mixin(MyContent!("item", "BS5CarouselItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5CarouselInner.item == `<div class="carousel-inner"><div class="carousel-item"></div></div>`);
	}}
}

mixin(H5Calls!"BS5CarouselInner");
version(test_uim_bootstrap) { unittest {
	assert(BS5CarouselInner == `<div class="carousel-inner"></div>`);
}}
