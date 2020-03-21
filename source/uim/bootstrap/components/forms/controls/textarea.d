module uim.bootstrap.components.forms.controls.textarea;

import uim.bootstrap; 

class DBS4InputTextarea : DBS4Obj {
	mixin(H5This!("textarea", `["form-control"]`));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(BS4Func!("InputTextarea"));

unittest {
		assert(Assert(BS4InputTextarea, `<textarea class="form-control"></textarea>`));
}