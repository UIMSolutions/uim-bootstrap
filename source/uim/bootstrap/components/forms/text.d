module uim.bootstrap.components.forms.text;

import uim.bootstrap;

class DBS4FormText : DBS4Obj {
	mixin(H5This!("SMALL", `["form-text"]`));
	override public void _init() {
		super._init;
	}
	unittest {
		assert(BS4FormText == `<small class="form-text"></small>`);
	}
}
mixin(BS4Short!"FormText");

unittest {
}