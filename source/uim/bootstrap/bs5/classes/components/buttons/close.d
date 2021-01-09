module uim.bootstrap.bs5.classes.components.buttons.close;

import uim.bootstrap;

class DBS5ButtonClose : DBS5Button {
	mixin(H5This!("button", ["close"], `["aria-label":"Close"]`));
	
	override string onlyHTML() {
		this.content(H5Span(["aria-hidden":"true"], "&times;"));
		return super.onlyHTML;
	}
}
mixin(H5Calls!"BS5ButtonClose");

unittest {
	assert(Assert(BS5ButtonClose, `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`));
}
