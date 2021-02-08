module source.uim.bootstrap.bs5.demos.layouts.columns;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts/columns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Columns - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/layouts"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Layouts"], "Columns")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Columns"),
      H5Hr,

      demoBs5Example("vertical", "Vertical Alignment",
        H5Div(
          BS5Container(
            H5H4(["h5", "text-muted", "mt-3"], "Row"),
            H5P("Grid with vertical alignment on .row using flex utilities")),
          BS5Container(["data-example":"row-height"],
            BS5Row(["align-items-start"],
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col")),
            BS5Row(["align-items-center"],
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col")),
            BS5Row(["align-items-end"],
              BS5Col(".col"),
              BS5Col(".col"),
              BS5Col(".col"))),
          BS5Container(
            H5H4(["h5", "text-muted", "mt-3"], "Column"),
            H5P("Grid with vertical alignment on .col using flex utilities")),
          BS5Container(["data-example":"row-height"], 
            BS5Row(
              BS5Col(["align-self-start"], ".col .align-self-start"),
              BS5Col(["align-self-center"], ".col .align-self-center"),
              BS5Col(["align-self-end"], ".col .align-self-end")))
        ), ``, ``),

      demoBs5Example("horizontal", "Horizontal AlignmentH5Br,<small>Grid with horizontal alignment on .row using flex utilities</small>",
        H5Div(
          BS5Container(
            BS5Row(["justify-content-start"], 
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")),
            BS5Row(["justify-content-center"],
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")),
            BS5Row(["justify-content-end"],
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")),
            BS5Row(["justify-content-around"],
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")),
            BS5Row(["justify-content-between"],
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")),
            BS5Row(["justify-content-evenly"],
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3"),
              BS5Col(["col-3"], ".col-3")))
        ), ``, ``),

      demoBs5Example("wrapping", "Column wrapping",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(["col-8"], ".col-8"),
              BS5Col(["col-5"], ".col-5"),
              BS5Col(["col-4"], ".col-4")))
        ), ``, ``),

      demoBs5Example("breaks", "Column breaks",
        H5Div(
         H5H4(["h5", "text-muted", "mt-3",  "container"], "All breakpoints"),
          H5P("Grid with column break using sizing utility class"),
          BS5Container(
            BS5Row(
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["w-100"]),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"))),
          H5H4(["h5", "text-muted", "mt-3",  "container"], "Responsive"),
          H5P("Grid with responsive column break using sizing and display utility classes"),
          BS5Container(
            BS5Row(
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["w-100", "d-none", "d-lg-block"]),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3"),
              H5Div(["col-6", "col-sm-3"], ".col-6 .col-sm-3")))
        ), ``, ``),

      demoBs5Example("reordering", "ReorderingH5Br,<small>Grid reordering with flex utilities: order-first (-1), order-0 to order-5 and order-last (6)</small>",
        H5Div(
          BS5Container(
            BS5Row(
              BS5Col(["order-last"], "First, but last"),
              BS5Col(["order-3"], "Second, but number 5"),
              BS5Col(["order-2"], "Third, but number 4"),
              BS5Col(["order-1"], "Fourth, but number 3"),
              BS5Col(["order-first"], "Fifth, but first"),
              BS5Col("Last, but unordered, so number 2")))
        ), ``, ``),

      demoBs5Example("offsetting", "Offsetting",
        H5Div(
          H5H4(["h5", "text-muted", "mt-3",  "container"], "Offset classes"),
          BS5Container(
            BS5Row(
              H5Div(["col-md-5"], ".col-md-52"),
              H5Div(["col-md-5 offset-md-2"], ".col-md-5 .offset-md-22")),
            BS5Row(
              H5Div(["col-lg-4 offset-lg-3"], ".col-lg-4 .offset-lg-32"),
              H5Div(["col-lg-2 offset-lg-3"], ".col-lg-2 .offset-lg-32")),
            BS5Row(
              H5Div(["col-sm-6 col-md-5 col-lg-6"], ".col-sm-6 .col-md-5 .col-lg-62"),
              H5Div(["col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0"], ".col-sm-6 .col-md-5 .offset-md-2 .col-lg-6 .offset-lg-02"))),
          H5H4(["h5", "text-muted", "mt-3",  "container"], "Spacing utilities"),
          BS5Container(
            BS5Row(
              H5Div(["col-md-5"], ".col-md-52"),
              H5Div(["col-md-5 ms-auto"], ".col-md-5 .ms-auto2")),
            BS5Row(
              H5Div(["col-lg-4 ms-lg-auto"], ".col-lg-4 .ms-lg-auto2"),
              H5Div(["col-lg-2 ms-lg-auto"], ".col-lg-2 .ms-lg-auto2")),
            BS5Row(
              H5Div(["col-sm-6 me-lg-auto"], ".col-sm-6 .me-lg-auto2"),
              H5Div(["col-sm-3"], ".col-sm-32")))
        ), ``, ``),

      demoBs5Example("standalone", "Standalone column classes",
        H5Div(
          H5Div(["col-1"], "8.333333%"),
          H5Div(["col-2"], "16.666667%"),
          H5Div(["col-3"], "25%"),
          H5Div(["col-4"], "33.333333%"),
          H5Div(["col-5"], "41.666667%"),
          H5Div(["col-6"], "50%"),
          H5Div(["col-7"], "58.333333%"),
          H5Div(["col-8"], "66.666667%"),
          H5Div(["col-9"], "75%"),
          H5Div(["col-10"], "83.333333%"),
          H5Div(["col-11"], "91.666667%"),
          H5Div(["col-12"], "100%")
        ), ``, ``),

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 