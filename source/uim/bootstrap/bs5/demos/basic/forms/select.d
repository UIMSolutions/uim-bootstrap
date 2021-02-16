module source.uim.bootstrap.bs5.demos.forms.select;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/forms/select", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Select - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    H5Label(["form-label"], ["for":"inputSelect"], "Default select"),
    H5Select("inputSelect", ["form-select"], ["aria-label":"Default select"],
      H5Option(["selected":"selected"], "Select option"),
      H5Option(["value":"2"], "Option two"),
      H5Option(["value":"1"], "Option one"),
      H5Option(["value":"3"], "Option three"),
      H5Option(["value":"4"], "Option four"),
      H5Option(["value":"5"], "Option five")
    )
  ), ``, ``);

auto sizesExample = demoBs5Example("sizes", "Sizes", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    H5Label(["form-label"], ["for":"inputSelectSmall"], "Small select"),
    H5Select("inputSelectSmall", ["form-select", "form-select-sm"], ["aria-label":"Small select"],
      H5Option(["selected":"selected"], "Select option"),
      H5Option(["value":"1"], "Option one"),
      H5Option(["value":"2"], "Option two"),
      H5Option(["value":"3"], "Option three"),
      H5Option(["value":"4"], "Option four"),
      H5Option(["value":"5"], "Option five")
    ),
    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    H5Label(["form-label"], ["for":"inputSelectLarge"], "Large select"),
    H5Select("inputSelectLarge", ["form-select", "form-select-lg"], ["aria-label":"Large select"],
      H5Option(["selected":"selected"], "Select option"),
      H5Option(["value":"1"], "Option one"),
      H5Option(["value":"2"], "Option two"),
      H5Option(["value":"3"], "Option three"),
      H5Option(["value":"4"], "Option four"),
      H5Option(["value":"5"], "Option five")
    )
  ), ``, ``);

auto multipleExample = demoBs5Example("multiple", "Multiple", 
  H5Div(
    H5Label(["form-label"], ["for":"inputSelectMultiple"], "Multiple select"),
    H5Select("inputSelectMultiple", ["form-select"], ["multiple":"multiple", "aria-label":"Multiple select"],
      H5Option(["value":"1"], "Option one"),
      H5Option(["value":"2"], "Option two"),
      H5Option(["value":"3"], "Option three"),
      H5Option(["value":"4"], "Option four"),
      H5Option(["value":"5"], "Option five")
    )
  ), ``, ``);

auto visibleExample = demoBs5Example("visible", "Visible options", 
  H5Div(
    H5Label(["form-label"], ["for":"inputSelectSize"], "Select with size"),
    H5Select("inputSelectSize", ["form-select"], ["size":"3", "aria-label":"Select with size"],
      H5Option(["value":"1"], "Option one"),
      H5Option(["value":"2"], "Option two"),
      H5Option(["value":"3"], "Option three"),
      H5Option(["value":"4"], "Option four"),
      H5Option(["value":"5"], "Option five")
    )
  ), ``, ``);

        return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Select")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "forms"),
      listSections("basic", "forms", "select")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Select"),
      H5Hr,

      defaultExample,
      sizesExample,
      multipleExample,
      visibleExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
