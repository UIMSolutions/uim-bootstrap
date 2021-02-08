module source.uim.bootstrap.bs5.demos.utilities.positionutilities;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/positionutilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Position Utilities - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Position Utilities")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "positionutilities")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Position Utilities"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/*  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Position Utilities</h2>
        <hr>

        H5Div(["mb-5"]
              <h3 ["text-muted"]Position values", 
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Static")
                H5Div(["position-static"]Position static)
                H5H4(["h5", "text-muted", "mt-3"], "Relative")
                H5Div(["position-relative"]Position relative)
                H5H4(["h5", "text-muted", "mt-3"], "Absolute")
                H5Div(["position-absolute"]Position absolute)
                H5H4(["h5", "text-muted", "mt-3"], "Fixed")
                H5Div(["position-fixed"]Position fixed)
                H5H4(["h5", "text-muted", "mt-3"], "Sticky")
                H5Div(["position-sticky"]Position sticky)
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Arrange elements", 
              H5Div(
                H5Div(["position-relative border m-5 w-50" "style":"height: 300px;"]
                  H5Div(["p-2 text-white bg-dark position-absolute top-0 left-0"]Top left)
                  H5Div(["p-2 text-white bg-dark position-absolute top-0 right-0"]Top right)
                  H5Div(["p-2 text-white bg-dark position-absolute top-50 left-50"]Center (top left))
                  H5Div(["p-2 text-white bg-dark position-absolute bottom-50 right-50"]Center (bottom right))
                  H5Div(["p-2 text-white bg-dark position-absolute bottom-0 left-0"]Bottom left)
                  H5Div(["p-2 text-white bg-dark position-absolute bottom-0 right-0"]Bottom right)
                )
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Center elements", 
              H5Div(
                H5Div(["position-relative border m-5 w-50" "style":"height: 300px;"]
                  H5Div(["p-2 text-white bg-dark position-absolute top-0 left-0 translate-middle"]Top left)
                  H5Div(["p-2 text-white bg-dark position-absolute top-0 left-50 translate-middle"]Top center)
                  H5Div(["p-2 text-white bg-dark position-absolute top-0 left-100 translate-middle"]Top right)
                  H5Div(["p-2 text-white bg-dark position-absolute top-50 left-0 translate-middle"]Middle left)
                  H5Div(["p-2 text-white bg-dark position-absolute top-50 left-50 translate-middle"]Middle center)
                  H5Div(["p-2 text-white bg-dark position-absolute top-50 left-100 translate-middle"]Middle right)
                  H5Div(["p-2 text-white bg-dark position-absolute top-100 left-0 translate-middle"]Bottom left)
                  H5Div(["p-2 text-white bg-dark position-absolute top-100 left-50 translate-middle"]Bottom center)
                  H5Div(["p-2 text-white bg-dark position-absolute top-100 left-100 translate-middle"]Bottom right)
                )
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Examples", 
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Notification number")
                H5Button(["type":"button" ["btn btn-primary position-relative"]
                  Messages H5Span(["position-absolute top-0 left-100 translate-middle badge rounded-pill bg-secondary"]3 H5Span(["visually-hidden"]unread messages")")
                ")
                H5H4(["h5", "text-muted", "mt-3"], "Notification circle")
                H5Button(["type":"button" ["btn btn-primary position-relative"]
                  Messages H5Span(["position-absolute top-0 left-100 translate-middle badge border border-light rounded-circle bg-danger p-2"]H5Span(["visually-hidden"]unread messages")")
                ")
                H5H4(["h5", "text-muted", "mt-3"], "Progress with steps")
                H5Div(["position-relative m-4"]
                  H5Div(["progress" "style":"height: 1px;"]
                    H5Div(["progress-bar" role="progressbar" "style":"width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"])
                  )
                  H5Div(["position-absolute top-0 left-0 translate-middle badge bg-primary rounded-pill d-flex justify-content-center align-items-center" "style":"width: 2rem; height: 2rem;"]1)
                  H5Div(["position-absolute top-0 left-50 translate-middle badge bg-primary rounded-pill d-flex justify-content-center align-items-center" "style":"width: 2rem; height: 2rem;"]2)
                  H5Div(["position-absolute top-0 left-100 translate-middle badge", "bg-secondary", "rounded-pill d-flex justify-content-center align-items-center" "style":"width: 2rem; height: 2rem;"]3)
                )
              )
            )

          )
        )
      )
    </main>
      `;
    }
  });
}*/