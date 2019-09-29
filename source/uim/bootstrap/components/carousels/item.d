module uim.bootstrap.components.carousels.item;

import uim.bootstrap;

class DBS4CarouselItem : DBS4Obj {
	mixin(H5This!("div", `["carousel-item"]`));
}
mixin(BS4Short!"CarouselItem");
///
unittest {
	assert(BS4CarouselItem == `<div class="carousel-item"></div>`);
}
