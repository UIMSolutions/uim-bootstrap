module uim.bootstrap.bs5.classes.simple.components.carousels.controlprev;

import uim.bootstrap;

class DBS5CarouselControlPrev : DBS5Obj {
	mixin(H5This!("a", ["carousel-control-prev"], `["data-slide":"prev"]`));
	override public void _init() {
		super._init;
		this.content(H5Span(["carousel-control-prev-icon"]));
		this.content(H5Span(["sr-only"], "Previous"));
	}
}

mixin(H5Calls!"BS5CarouselControlPrev");
unittest {
	assert(Assert(BS5CarouselControlPrev, 
	`<a class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>`));
}