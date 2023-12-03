module uim.bootstrap.bs5.basic.components.forms.controls.reset;

@safe: 
import uim.bootstrap; 

class DBS5InputReset : DBS5Input {
  mixin(H5This!("", null, `["type":"reset"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputReset"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputReset == `<input class="form-control" type="reset">`);
}}
