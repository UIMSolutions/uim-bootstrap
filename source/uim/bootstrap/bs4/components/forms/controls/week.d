module uim.bootstrap.bs4.components.forms.controls.week;

@safe: 
import uim.bootstrap; 

class DBS4InputWeek : DBS4Input {
	mixin(H5This!("", null, `["type":"week"]`));
}
mixin(H5Calls!("BS4InputWeek"));
///
version(test_uim_bootstrap) { unittest {
	assert(BS4InputWeek, `<input class="form-control" type="week">`);
}