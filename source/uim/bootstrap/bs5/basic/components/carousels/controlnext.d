module uim.bootstrap.bs5.basic.components.carousels.controlnext;

@safe: 
import uim.bootstrap;

class DBS5CarouselControlNext : DBS5Obj {
	mixin(H5This!("a", ["carousel-control-next"], `["data-bs-slide":"next"]`));
	override public void initialize() {
		super.initialize;
		this.content(H5Span(["carousel-control-next-icon"]));
		this.content(H5Span(["sr-only"], "Next"));
	}
}

mixin(H5Calls!"BS5CarouselControlNext");
unittest {
	assert(BS5CarouselControlNext == `<a class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);
}
