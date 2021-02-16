module source.uim.bootstrap.bs5.demos.layouts.grid;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/layouts/grid", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Container - Bootstrap 5 Demo",
          ]);
		} 
			
override string content() { 
  return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(
      ["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/layouts"], 
      ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Layouts"], "Grid")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "layouts"),
      listSections("basic", "layouts", "grid")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Grid"),
      H5Hr,

      demoBs5Example("equalwidth", "Equal widthH5Br,<small>Grid with auto-layout and equal width</small>",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(".col"),
              BS5Col(".col")),
            BS5Row(
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col")))
        ), ``, ``),

      demoBs5Example("one", "One column widthH5Br,<small>Grid with auto-layout around one column with set width</small>",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(".col"),
              H5Div(["col-7"], ".col-7"),
              BS5Col(".col")),
            BS5Row(
              H5Div(["col-3"], ".col-3"),
              BS5Col(".col"),
              BS5Col(".col")))
        ), ``, ``),

      demoBs5Example("one", "Variable width contentH5Br,<small>Grid with auto-layout around columns with set width and natural (auto) width</small>",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(".col"),
              H5Div(["col-auto"], ".col-auto"),
              BS5Col(".col")),
            BS5Row(
              BS5Col(".col"), 
              H5Div(["col-auto"], ".col-auto"),
              H5Div(["col-2"], ".col-2")))
        ), ``, ``),

      demoBs5Example("responsive", "All breakpointsH5Br,<small>Same grid across all devices: use .col and .col-*</small>",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col")),
            BS5Row(
              H5Div(["col-6"], ".col-6"),
              H5Div(["col-3"], ".col-3"),
              H5Div(["col-3"], ".col-3"))),          
          BS5Container(
            H5H5(["text-muted", "mt-3"], "Responsive"),
            H5P("Advanced grid changing layout across different device sizes: use device prefixes")),
          BS5Container(
            BS5Row(
              H5Div(["col-12 col-md-6 col-lg-3"], ".col-12 .col-md-6 .col-lg-3"),
              H5Div(["col-12 col-md-6 col-lg-3"], ".col-12 .col-md-6 .col-lg-3"),
              H5Div(["col-6 col-lg-3"], ".col-6 .col-lg-3"),
              H5Div(["col-6 col-lg-3"], ".col-6 .col-lg-3")),
            BS5Row(
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4"),
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4"),
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4")))
        ), ``, ``),

      demoBs5Example("responsive2", "ResponsiveH5Br,<small>Advanced grid changing layout across different device sizes: use device prefixes</small>",
        H5Div(
          BS5Container(
            BS5Row(
              H5Div(["col-12 col-md-6 col-lg-3"], ".col-12 .col-md-6 .col-lg-3"),
              H5Div(["col-12 col-md-6 col-lg-3"], ".col-12 .col-md-6 .col-lg-3"),
              H5Div(["col-6 col-lg-3"], ".col-6 .col-lg-3"),
              H5Div(["col-6 col-lg-3"], ".col-6 .col-lg-3")),
            BS5Row(
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4"),
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4"),
              H5Div(["col-6 col-sm-4"], ".col-6 .col-sm-4")))
        ), ``, ``),

      demoBs5Example("row", "Row columns",
        H5Div(
          BS5Container(
            BS5Row(["row-cols-auto"], 
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"))),
          H5H5(["text-muted", "mt-3", "ccontainer"], "2"),
          BS5Container(
            BS5Row(["row-cols-2"], 
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"))),
          H5H5(["text-muted", "mt-3", "ccontainer"], "3"),
          BS5Container(
            BS5Row(["row-cols-3"], 
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"))),
          H5H5(["text-muted", "mt-3", "ccontainer"], "4"),
          BS5Container(
            BS5Row(["row-cols-4"], 
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"))),
          H5H5(["text-muted", "mt-3", "ccontainer"], "Responsive"),
          H5P("Advanced grid changing layout across different device sizes: use device prefixes"),
          BS5Container(
            BS5Row(["row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xxl-4"], 
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column"),
              BS5Col("Column")))
        ), ``, ``),

      demoBs5Example("nesting", "Nesting",
        H5Div(
          BS5Container(
            BS5Row(
              H5Div(["col-md-8"], 
                BS5Row(
                  H5Div(["col-md-12 col-lg-6"], ".col-md-12 .col-lg-6"),
                  H5Div(["col-md-6 col-lg-3"], ".col-md-12 .col-lg-3"),
                  H5Div(["col-md-6 col-lg-3"], ".col-md-12 .col-lg-3"))),
              H5Div(["col-md-4"], ".col-md-4")))
        ), ``, ``)
     
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}

      
    