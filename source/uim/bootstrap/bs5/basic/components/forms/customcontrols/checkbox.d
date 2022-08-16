module uim.bootstrap.bs5.basic.components.forms.customcontrols.checkbox;

@safe: 
import uim.bootstrap;

class DBS5CustomCheckbox : DBS5CustomControl {
	mixin(H5This!("DIV", ["custom-checkbox"]));

  override void initialize () {
    super.initialize();

    this
      .addClasses(["custom-checkbox", "custom-control"]);
  }
}
mixin(H5Calls!"BS5CustomCheckbox");

version(test_uim_bootstrap) { unittest {
  assert(BS5CustomCheckbox);
  writeln(BS5CustomCheckbox);
  assert(BS5CustomCheckbox ==`<div class="custom-checkbox custom-control"></div>`);
}}
