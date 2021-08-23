module uim.bootstrap.bs4.components.forms.controls.textarea;

import uim.bootstrap; 

@safe: class DBS4InputTextarea : DBS4Obj {
	mixin(H5This!("textarea", ["form-control"]));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(H5Calls!("BS4InputTextarea"));

unittest {
		assert(Assert(BS4InputTextarea, `<textarea class="form-control"></textarea>`));
}