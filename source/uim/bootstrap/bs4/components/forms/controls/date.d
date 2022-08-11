module uim.bootstrap.bs4.components.forms.controls.date;

@safe: 
import uim.bootstrap; 

class DBS4InputDate : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"date"]`));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputDate"));
///
unittest {
	assert(BS4InputDate, `<input class="form-control" type="date">`));
}