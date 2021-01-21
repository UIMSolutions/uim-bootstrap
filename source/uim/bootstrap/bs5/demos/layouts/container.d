module source.uim.bootstrap.bs5.demos.layouts.container;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts/container", new class DH5AppPage {
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
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Contents"], "Container")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Container"),
      H5Hr,

      demoBs5Example("default", "Default",
        H5Div(
          BS5Container(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. 
            Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. 
            Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.")
        ), ``, ``),

      demoBs5Example("responsive", "Responsive",
        H5Div(
          H5H4(["h5", "text-muted", "mt-3",  "container"], "Small"),
          H5Div(["container-sm"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi."),
          H5H4(["h5", "text-muted", "mt-3", "container"], "Medium"),
          H5Div(["container-md"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi."),
          H5H4(["h5", "text-muted", "mt-3", "container"], "Large"),
          H5Div(["container-lg"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi."),
          H5H4(["h5", "text-muted", "mt-3", "container"], "Extra large"),
          H5Div(["container-xl"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi."),
          H5H4(["h5", "text-muted", "mt-3", "container"], "Extra extra large"),
          H5Div(["container-xxl"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi."),
        ), ``, ``),

      demoBs5Example("fluid", "Fluid",
        H5Div(
          H5Div(["container-fluid"],
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.")
        ), ``, ``),

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}