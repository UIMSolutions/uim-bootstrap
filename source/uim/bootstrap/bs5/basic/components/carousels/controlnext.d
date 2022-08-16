module uim.bootstrap.bs5.basic.components.carousels.controlnext;

@safe: 
import uim.bootstrap;

class DBS5CarouselControlNext : DBS5Obj {
	mixin(H5This!("a", ["carousel-control-next"], `["data-bs-slide":"next"]`));
	
	override public void initialize() {
		super.initialize;
		
		this
			.addContent(
				H5Span(["carousel-control-next-icon"]), 
				H5Span(["sr-only"], "Next"));
	}
}

mixin(H5Calls!"BS5CarouselControlNext");
version(test_uim_bootstrap) { unittest {
	assert(BS5CarouselControlNext);
	assert(BS5CarouselControlNext == 
		`<a class="carousel-control-next" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);
}}
