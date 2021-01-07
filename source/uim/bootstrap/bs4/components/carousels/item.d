module uim.bootstrap.bs4.components.carousels.item;

import uim.bootstrap;

class DBS4CarouselItem : DBS4Obj {
	mixin(H5This!("div", ["carousel-item"]));
}
mixin(H5Calls!"BS4CarouselItem");
unittest {
	assert(Assert(BS4CarouselItem,`<div class="carousel-item"></div>`));
}
