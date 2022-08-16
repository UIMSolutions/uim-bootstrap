module uim.bootstrap.bs5.basic.components.forms.controls.week;

@safe: 
import uim.bootstrap; 

class DBS5InputWeek : DBS5Input {
  mixin(H5This!("", null, `["type":"week"]`));

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!("BS5InputWeek"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputWeek == `<input class="form-control" type="week">`);
}}
