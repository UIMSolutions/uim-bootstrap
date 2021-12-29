module uim.bootstrap.bs5.basic.components.carousels.indicators;

@safe: 
import uim.bootstrap;

class DBS5CarouselIndicators : DBS5Obj {
	mixin(H5This!("ol", ["carousel-indicators"]));

	mixin(MyContent!("indicator", "H5Li"));
	unittest {
		assert(BS5CarouselIndicators.indicator.toString == `<ol class="carousel-indicators"><li></li></ol>`);
	}
}
mixin(H5Calls!"BS5CarouselIndicators");
unittest {
	assert(BS5CarouselIndicators.toString == `<ol class="carousel-indicators"></ol>`);
}

class DBS5CarouselIndicator : DBS5Obj {
	mixin(H5This!("li", ["carousel-indicator"]));
}
mixin(H5Calls!"BS5CarouselIndicator");
