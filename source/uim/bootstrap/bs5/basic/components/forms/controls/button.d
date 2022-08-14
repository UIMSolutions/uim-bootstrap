module uim.bootstrap.bs5.basic.components.forms.controls.button;

@safe: 
import uim.bootstrap; 

class DBS5InputButton : DBS5Input {
  mixin(H5This!(null, null, `["type":"button"]`));

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!("BS5InputButton"));
unittest {
  assert(BS5InputButton);
  assert(BS5InputButton == `<input class="form-control" type="button">`);
}
