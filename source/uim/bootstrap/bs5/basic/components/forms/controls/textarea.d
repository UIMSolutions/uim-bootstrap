module uim.bootstrap.bs5.basic.components.forms.controls.textarea;

@safe: 
import uim.bootstrap; 

class DBS5InputTextarea : DBS5Obj {
	mixin(H5This!("textarea", ["form-control"]));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(H5Calls!("BS5InputTextarea"));

unittest {
		assert(BS5InputTextarea, `<textarea class="form-control"></textarea>`));
}