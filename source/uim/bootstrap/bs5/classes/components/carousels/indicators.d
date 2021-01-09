module uim.bootstrap.bs5.classes.components.carousels.indicators;

import uim.bootstrap;

class DBS5CarouselIndicators : DBS5Obj {
	mixin(H5This!("ol", ["carousel-indicators"]));

	mixin(MyContent!("indicator", "H5Li"));
	unittest {
		assert(BS5CarouselIndicators.indicator.toString == `  <ul class="carousel-indicators"><li></li></ul>`);
	}
}
mixin(H5Calls!"BS5CarouselIndicators");
unittest {
	assert(BS5CarouselIndicators.toString == `  <ul class="carousel-indicators"></ul>`);
}
