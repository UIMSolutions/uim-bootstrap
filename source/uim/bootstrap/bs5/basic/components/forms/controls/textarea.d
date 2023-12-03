module uim.bootstrap.bs5.basic.components.forms.controls.textarea;

@safe: 
import uim.bootstrap; 

class DBS5InputTextarea : DBS5Obj {
	mixin(H5This!("textarea", ["form-control"]));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }

  mixin(MyAttribute!"rows");
  mixin(MyAttribute!"cols");
}
mixin(H5Calls!("BS5InputTextarea"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputTextarea == `<textarea class="form-control"></textarea>`);
}}
