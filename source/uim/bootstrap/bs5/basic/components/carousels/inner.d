module uim.bootstrap.bs5.basic.components.carousels.inner;

import uim.bootstrap;

@safe: class DBS5CarouselInner : DBS5Obj {
	mixin(H5This!("div", ["carousel-inner"]));

	mixin(MyContent!("item", "BS5CarouselItem"));
	unittest {
		assert(Assert(BS5CarouselInner.item, `<div class="carousel-inner"><div class="carousel-item"></div></div>`));
	}
}

mixin(H5Calls!"BS5CarouselInner");
unittest {
	assert(Assert(BS5CarouselInner,`<div class="carousel-inner"></div>`));
}
