module source.uim.bootstrap.bs5.demos.helpers.ratio;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/helpers/ratio", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Ratio - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Helpers"], "Ratio")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "helpers"),
      listSections("basic", "helpers", "ratio")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Colored Links"),
      H5Hr,

      demoBs5Example("1", "1x1",
        H5Div(
          H5Div(["ratio", "ratio-1x1"], 
            `<iframe src="https://player.vimeo.com/video/40509381"]</iframe>`)
        ), ``, ``),


      demoBs5Example("4", "4x3",
        H5Div(
          H5Div(["ratio", "ratio ratio-4x3"], 
            `<iframe src="https://player.vimeo.com/video/301032654"]</iframe>`)
        ), ``, ``),

      demoBs5Example("16", "16x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-16x9"], 
            `<iframe src="https://player.vimeo.com/video/77923619"]</iframe>`)
        ), ``, ``),

      demoBs5Example("21", "21x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"]</iframe>`)
        ), ``, ``),

      demoBs5Example("standard", "Standard HTML elements",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"]</iframe>`)
        ), ``, ``),

      demoBs5Example("21", "21x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"]</iframe>`)
        ), ``, ``),

      demoBs5Example("standard", "Standard HTML Elements",
        H5Div(
          H5Div(["ratio", "d-flex align-items-start"], 
            H5Div(["ratio", "ratio ratio-1x1"], 
              H5P(["d-flex justify-content-center align-items-center border"], "1x1")),
            H5Div(["ratio", "ratio ratio-4x3"], 
              H5P(["d-flex justify-content-center align-items-center border"]," 4x3")),
            H5Div(["ratio", "ratio ratio-16x9"], 
              H5P(["d-flex justify-content-center align-items-center border"], "16x9")),
            H5Div(["ratio", "ratio ratio-21x9"], 
              H5P(["d-flex justify-content-center align-items-center border"], "21x9")))
        ), ``, ``),

      demoBs5Example("customratio", "Custom ratio",
        H5Div(
          H5Div(["ratio", "ratio"], ["style":"--aspect-ratio: 50%;"], 
            H5P(["d-flex justify-content-center align-items-center border"], "2x1 (50%)")), 
          H5Div(["ratio", "ratio"], ["style":"--aspect-ratio: 25%;"], 
            H5P(["d-flex justify-content-center align-items-center border"], "4x1 (25%)"))
        ), ``, ``)

      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 