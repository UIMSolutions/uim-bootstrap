module uim.bootstrap.bs4.components.carousels.inner;

@safe: 
import uim.bootstrap;

class DBS4CarouselInner : DBS4Obj {
	mixin(H5This!("div", ["carousel-inner"]));

	mixin(MyContent!("item", "BS4CarouselItem"));
	unittest {
		assert(Assert(BS4CarouselInner.item, `<div class="carousel-inner"><div class="carousel-item"></div></div>`));
	}
}

mixin(H5Calls!"BS4CarouselInner");
unittest {
	assert(Assert(BS4CarouselInner,`<div class="carousel-inner"></div>`));
}
