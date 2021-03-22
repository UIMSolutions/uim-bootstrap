module source.uim.bootstrap.bs5.demos.forms.checks_radios;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/forms/checks_radios", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Checks and Radios - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

      auto checksExample = demoBs5Example("checks", "Checks", 
H5Div(
  H5H5(["text-muted", "mt-3"], "Default"),
  BS5FormCheck(
    H5Input("checkDefault1", ["form-check-input"], ["type":"checkbox"]), 
    BS5FormCheckLabel(["for":"checkDefault1"], "Default checkbox")
  ),
  BS5FormCheck(
    H5Input("checkDefault2", ["form-check-input"], ["type":"checkbox", "checked":"checked"]),
    BS5FormCheckLabel(["for":"checkDefault2"], "Checked checkbox")
  ),
  H5H5(["text-muted", "mt-3"], "Indeterminate"),
  BS5FormCheck(
    H5Input("checkIndeterminate", ["form-check-input"], ["type":"checkbox"]),
    BS5FormCheckLabel(["for":"checkIndeterminate"], "Indeterminate checkbox"),
    H5Script("var checkbox = document.getElementById('checkIndeterminate');checkbox.indeterminate = true;")
  ),
  H5H5(["text-muted", "mt-3"], "Disabled"),
  BS5FormCheck(
    H5Input("checkDisabled1", ["form-check-input"], ["type":"checkbox", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"checkDisabled1"], "Disabled default checkbox")
  ),
  BS5FormCheck(
    H5Input("checkDisabled2", ["form-check-input"], ["type":"checkbox", "checked":"checked", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"checkDisabled2"], "Disabled checked checkbox")
  )
), ``, ``);

      auto radiosExample = demoBs5Example("radios", "Radios", 
H5Div(
  H5H5(["text-muted", "mt-3"], "Default"),
  BS5FormCheck(
    H5Input("radioDefault1", ["form-check-input"], ["type":"radio", "name":"radioDefault"]),
    BS5FormCheckLabel(["for":"radioDefault1"], "Default radio")
  ),
  BS5FormCheck(
    H5Input("radioDefault2", ["form-check-input"], ["type":"radio", "name":"radioDefault", "checked":"checked"]),
    BS5FormCheckLabel(["for":"radioDefault2"], "Checked radio")
  ),
  H5H5(["text-muted", "mt-3"], "Disabled"),
  BS5FormCheck(
    H5Input("radioDisabled1", ["form-check-input"], ["type":"radio", "name":"radioDisabled", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"radioDisabled1"], "Disabled default radio")
  ),
  BS5FormCheck(
    H5Input("radioDisabled2", ["form-check-input"], ["type":"radio", "name":"radioDisabled", "checked":"checked", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"radioDisabled2"], "Disabled checked radio")
  )
), ``, ``);

      auto switchesExample = demoBs5Example("switches", "Switches", 
H5Div(
  H5H5(["text-muted", "mt-3"], "Default"),
  H5Div(["form-check form-switch"], 
    H5Input("switchDefault1", ["form-check-input"], ["type":"checkbox"]),
    BS5FormCheckLabel(["for":"switchDefault1"], "Default switch")
  ),
  H5Div(["form-check form-switch"], 
    H5Input("switchDefault2", ["form-check-input"], ["type":"checkbox", "checked":"checked"]),
    BS5FormCheckLabel(["for":"switchDefault2"], "Checked switch")
  ),
  H5H5(["text-muted", "mt-3"], "Disabled"),
  H5Div(["form-check form-switch"], 
    H5Input("switchDisabled1", ["form-check-input"], ["type":"checkbox", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"switchDisabled1"], "Disabled default switch")
  ),
  H5Div(["form-check form-switch"], 
    H5Input("switchDisabled2", ["form-check-input"], ["type":"checkbox", "checked":"checked", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"switchDisabled2"], "Disabled checked switch")
  )
), ``, ``);

      auto inlineExample = demoBs5Example("inline", "Inline", 
H5Div(
  H5H5(["text-muted", "mt-3"], "Check"),
  BS5FormCheck(["form-check-inline"], 
    H5Input("checkInline1", ["form-check-input"], ["type":"checkbox"]),   
    BS5FormCheckLabel(["for":"checkInline1"], "1")
  ),
  BS5FormCheck(["form-check-inline"], 
    H5Input("checkInline2", ["form-check-input"], ["type":"checkbox", "checked":"checked"]),
    BS5FormCheckLabel(["for":"checkInline2"], "2")
  ),
  BS5FormCheck(["form-check-inline"], 
    H5Input("checkInline3", ["form-check-input"], ["type":"checkbox", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"switchDisabled2"], "Disabled checked switch"),
    BS5FormCheckLabel(["for":"checkInline3"], "3")
  ),
  H5H5(["text-muted", "mt-3"], "Radio"),
  BS5FormCheck(["form-check-inline"], 
    H5Input("radioInline1", ["form-check-input"], ["type":"radio",  "name":"radioInline"]),
    BS5FormCheckLabel(["for":"radioInline1"], "1")
  ),
  BS5FormCheck(["form-check-inline"], 
    H5Input("radioInline2", ["form-check-input"], ["type":"radio",  "name":"radioInline", "checked":"checked"]),
    BS5FormCheckLabel(["for":"radioInline2"], "2")
  ),
  BS5FormCheck(["form-check-inline"], 
    H5Input("radioInline3", ["form-check-input"], ["type":"radio",  "name":"radioInline", "disabled":"disabled"]),
    BS5FormCheckLabel(["for":"radioInline3"], "3")
  )
), ``, ``);

 auto nolabelsExample = demoBs5Example("nolabels", "No labels", 
H5Div(
  H5Input("checkNolabel", ["form-check-input"], ["type":"checkbox", "aria-label":"Checkbox label"]),
  H5Input("radioNoLabel1", ["form-check-input"], ["type":"radio",  "name":"radioNolabel", "aria-label":"Radio label"])
), ``, ``);

 auto togglebuttonsExample = demoBs5Example("togglebuttons", "Toggle buttons", 
H5Div(
  H5H5(["text-muted", "mt-3"], "Checkbox"),
  H5Input("checkToggleButton1", ["btn-check"], ["type":"checkbox", "autocomplete":"off"]),
  H5Label(["btn", "btn-secondary"], ["for":"checkToggleButton1"], "Checkbox"),
  H5H5(["text-muted", "mt-3"], "Radio"),
  BS5ButtonGroup(
    H5Input("radioToggleButton1", ["btn-check"], ["type":"radio", "name":"radioToggleButton", "autocomplete":"off"]),
    H5Label(["btn btn-secondary"], ["for":"radioToggleButton1"], "Radio 1"),
    H5Input("radioToggleButton2", ["btn-check"], ["type":"radio", "name":"radioToggleButton", "autocomplete":"off"]),
    H5Label(["btn btn-secondary"], ["for":"radioToggleButton2"], "Radio 2"),
    H5Input("radioToggleButton3", ["btn-check"], ["type":"radio", "name":"radioToggleButton", "autocomplete":"off"]),
    H5Label(["btn btn-secondary"], ["for":"radioToggleButton3"], "Radio 3")
  ),
  H5H5(["text-muted", "mt-3"], "Outlined"),
  H5Input("checkToggleButtonOutlined1", ["btn-check"], ["type":"checkbox", "autocomplete":"off"]),
  H5Label(["btn btn-outline-secondary"], ["for":"checkToggleButtonOutlined1"], "Checkbox"),
  H5Br, H5Br,
  BS5ButtonGroup(
    H5Input("radioToggleButtonOutlined1", ["btn-check"], ["type":"radio", "name":"radioToggleButtonOutlined", "autocomplete":"off"]),
    H5Label(["btn btn-outline-primary"], ["for":"radioToggleButtonOutlined1"], "Radio 1"),
    H5Input("radioToggleButtonOutlined2", ["btn-check"], ["type":"radio", "name":"radioToggleButtonOutlined", "autocomplete":"off"]),
    H5Label(["btn btn-outline-success"], ["for":"radioToggleButtonOutlined2"], "Radio 2"),
    H5Input("radioToggleButtonOutlined3", ["btn-check"], ["type":"radio", "name":"radioToggleButtonOutlined", "autocomplete":"off"]),
    H5Label(["btn btn-outline-info"], ["for":"radioToggleButtonOutlined3"], "Radio 3")
  )
), ``, ``);

       return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Checks and Radios")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "forms"),
      listSections("basic", "forms", "checks_radios")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Checks and Radios"),
      H5Hr,

      checksExample,
      radiosExample,
      switchesExample,
      inlineExample,
      nolabelsExample,
      togglebuttonsExample, 

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}