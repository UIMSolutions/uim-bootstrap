module uim.bootstrap.bs5.basic.components.forms.controls.datalist;

@safe: 
import uim.bootstrap; 

class DBS5InputDatalist : DBS5Input {
  mixin(H5This!("", ["form-control"], null));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputDatalist"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputDatalist == `<input class="form-control">`);
}}
