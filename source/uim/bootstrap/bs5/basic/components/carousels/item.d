module uim.bootstrap.bs5.basic.components.carousels.item;

@safe: 
import uim.bootstrap;

class DBS5CarouselItem : DBS5Obj {
	mixin(H5This!("div", ["carousel-item"]));
}
mixin(H5Calls!"BS5CarouselItem");
unittest {
	assert(Assert(BS5CarouselItem,`<div class="carousel-item"></div>`));
}
