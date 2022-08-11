module uim.bootstrap.bs5.basic.components.cards.overlay;

@safe: 
import uim.bootstrap;

/// Turns an image into a card background and adds text on top of the image
class DBS5CardOverlay : DBS5Obj {
	mixin(H5This!("Div", ["card-img-overlay"]));
}
/// Shortcuts
mixin(H5Calls!"BS5CardOverlay");
unittest {
	assert(BS5CardOverlay,`<div class="card-img-overlay"></div>`));
}
