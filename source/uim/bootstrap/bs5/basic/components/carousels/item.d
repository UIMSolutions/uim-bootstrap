module uim.bootstrap.bs5.basic.components.carousels.item;

@safe: 
import uim.bootstrap;

class DBS5CarouselItem : DBS5Obj {
	mixin(H5This!("div", ["carousel-item"]));

	O active(this O)(bool mode = true) {
		if (mode) this.addClasses("active");
		return cast(O)this;
	}
}
mixin(H5Calls!"BS5CarouselItem");
version(test_uim_bootstrap) { unittest {
	assert(BS5CarouselItem == `<div class="carousel-item"></div>`);
	assert(BS5CarouselItem.active == `<div class="active carousel-item"></div>`);
}
