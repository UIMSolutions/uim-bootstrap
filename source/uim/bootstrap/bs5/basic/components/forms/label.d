module uim.bootstrap.bs5.basic.components.forms.label;

@safe: 
import uim.bootstrap;

class DBS5FormLabel : DBS5Obj {
	mixin(H5This!("label", ["form-label"]));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!"BS5FormLabel");

version(test_uim_bootstrap) { unittest {
  assert(BS5FormLabel);
  assert(BS5FormLabel == `<label class="form-label"></label>`);
}}
