module uim.bootstrap.bs5.basic.components.forms.controls.color;

@safe: 
import uim.bootstrap; 

class DBS5InputColor : DBS5Input {
  mixin(H5This!("", ["form-control", "form-control-color"], `["type":"color"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputColor"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputColor == `<input class="form-control form-control-color" type="color">`);
}}
