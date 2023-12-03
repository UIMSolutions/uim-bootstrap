module uim.bootstrap.bs5.basic.components.forms.controls.search;

@safe: 
import uim.bootstrap; 

class DBS5InputSearch : DBS5Input {
  mixin(H5This!("", null, `["type":"search"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputSearch"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputSearch == `<input class="form-control" type="search">`);	
}}
