module uim.bootstrap.bs4.components.carousels.item;

@safe: 
import uim.bootstrap;

class DBS4CarouselItem : DBS4Obj {
	mixin(H5This!("div", ["carousel-item"]));
}
mixin(H5Calls!"BS4CarouselItem");
version(test_uim_bootstrap) { unittest {
	assert(BS4CarouselItem == `<div class="carousel-item"></div>`);
}}
