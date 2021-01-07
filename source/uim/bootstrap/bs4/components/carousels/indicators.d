module uim.bootstrap.bs4.components.carousels.indicators;

import uim.bootstrap;

class DBS4CarouselIndicators : DBS4Obj {
	mixin(H5This!("ol", ["carousel-indicators"]));

	mixin(MyContent!("indicator", "H5Li"));
	unittest {
		assert(BS4CarouselIndicators.indicator.toString == `  <ul class="carousel-indicators"><li></li></ul>`);
	}
}
mixin(H5Calls!"BS4CarouselIndicators");
unittest {
	assert(BS4CarouselIndicators.toString == `  <ul class="carousel-indicators"></ul>`);
}
