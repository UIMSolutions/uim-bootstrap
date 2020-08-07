module uim.bootstrap.components.buttons.close;

import uim.bootstrap;

class DBS4ButtonClose : DBS4Button {
	mixin(H5This!("button", ["close"], `["aria-label":"Close"]`));
	
	override string onlyHTML() {
		this.content(H5Span(["aria-hidden":"true"], "&times;"));
		return super.onlyHTML;
	}
}
mixin(H5Calls!"BS4ButtonClose");

unittest {
	assert(Assert(BS4ButtonClose, `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`));
}
