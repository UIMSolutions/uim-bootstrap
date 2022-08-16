module uim.bootstrap.bs5.basic.components.carousels.controlprev;

@safe: 
import uim.bootstrap;

class DBS5CarouselControlPrev : DBS5Obj {
	mixin(H5This!("a", ["carousel-control-prev"], `["data-bs-slide":"prev"]`));
	override public void initialize() {
		super.initialize;
		this.content(H5Span(["carousel-control-prev-icon"]));
		this.content(H5Span(["sr-only"], "Previous"));
	}
}

mixin(H5Calls!"BS5CarouselControlPrev");
version(test_uim_bootstrap) { unittest {
	assert(BS5CarouselControlPrev, 
	`<a class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>`);
}