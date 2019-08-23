module uim.bootstrap.components.carousels.carousel;

import uim.bootstrap;

class DBS4Carousel : DBS4Obj {
	mixin(H5This!("div", `["carousel"]`, `["data-ride":"carousel"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4Carousel");

unittest {
	writeln(BS4Carousel);
}
// <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">