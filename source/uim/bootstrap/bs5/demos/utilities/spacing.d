module source.uim.bootstrap.bs5.demos.utilities.spacing;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/spacing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spacing - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Sizing")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Sizing"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/* <div ["container mt-3"]
    <div ["row"]
      <div ["col-12 col-lg-2"]
      )
      <div ["col-12 col-lg-8"]
        <h2 ["component display-4"]Spacing</h2>
        <hr>

        <div ["mb-5"]
              <h3 ["text-muted"]Notation</h3>
              H5Div(
                <pre>{property}{sides}-{size} for all breakpoints
{property}{sides}-{breakpoint}-{size} for specific breakpoints and up

Properties:
m - margin
p - padding

Sides:
t - top
e - right (end)
b - bottom
s - left (start)
x - left and right
y - top and bottom
[blank] - all four sides

Breakpoints:
sm - small
md - medium
lg - large
xl - extra large
xxl - extra extra large

Sizes:
0 - 0
1 - 0.25rem
2 - 0.5rem
3 - 1rem
4 - 1.5rem
5 - 3rem
auto - auto (only for margins)
n1 - -0.25rem (only for margins and disabled by default)
n2 - -0.5rem (only for margins and disabled by default)
n3 - -1rem (only for margins and disabled by default)
n4 - -1.5rem (only for margins and disabled by default)
n5 - -3rem (only for margins and disabled by default)</pre>
              )
            )

            <div ["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Margin</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Top")
                <div ["mt-1"]mt-1)
                <div ["mt-2"]mt-2)
                <div ["mt-3"]mt-3)
                <div ["mt-4"]mt-4)
                <div ["mt-5"]mt-5)
                H5H4(["h5", "text-muted", "mt-3"], "Right")
                <div ["me-1"]me-1)
                <div ["me-2"]me-2)
                <div ["me-3"]me-3)
                <div ["me-4"]me-4)
                <div ["me-5"]me-5)
                H5H4(["h5", "text-muted", "mt-3"], "Bottom")
                <div ["mb-1"]mb-1)
                <div ["mb-2"]mb-2)
                <div ["mb-3"]mb-3)
                <div ["mb-4"]mb-4)
                <div ["mb-5"]mb-5)
                H5H4(["h5", "text-muted", "mt-3"], "Left")
                <div ["ms-1"]ms-1)
                <div ["ms-2"]ms-2)
                <div ["ms-3"]ms-3)
                <div ["ms-4"]ms-4)
                <div ["ms-5"]ms-5)
                H5H4(["h5", "text-muted", "mt-3"], "Horizontal")
                <div ["mx-1"]mx-1)
                <div ["mx-2"]mx-2)
                <div ["mx-3"]mx-3)
                <div ["mx-4"]mx-4)
                <div ["mx-5"]mx-5)
                H5H4(["h5", "text-muted", "mt-3"], "Vertical")
                <div ["my-1"]my-1)
                <div ["my-2"]my-2)
                <div ["my-3"]my-3)
                <div ["my-4"]my-4)
                <div ["my-5"]my-5)
                H5H4(["h5", "text-muted", "mt-3"], "All sides")
                <div ["m-1"]m-1)
                <div ["m-2"]m-2)
                <div ["m-3"]m-3)
                <div ["m-4"]m-4)
                <div ["m-5"]m-5)
              )
            )

            <div ["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Auto margin examples</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Auto margin left")
                <div ["w-50 ms-auto"]ms-auto)
                H5H4(["h5", "text-muted", "mt-3"], "Horizontal centering")
                <div ["w-50 mx-auto"]mx-auto)
              )
            )

            <div ["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Padding</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Top")
                <div ["pt-1"]pt-1)
                <div ["pt-2"]pt-2)
                <div ["pt-3"]pt-3)
                <div ["pt-4"]pt-4)
                <div ["pt-5"]pt-5)
                H5H4(["h5", "text-muted", "mt-3"], "Right")
                <div ["pe-1"]pe-1)
                <div ["pe-2"]pe-2)
                <div ["pe-3"]pe-3)
                <div ["pe-4"]pe-4)
                <div ["pe-5"]pe-5)
                H5H4(["h5", "text-muted", "mt-3"], "Bottom")
                <div ["pb-1"]pb-1)
                <div ["pb-2"]pb-2)
                <div ["pb-3"]pb-3)
                <div ["pb-4"]pb-4)
                <div ["pb-5"]pb-5)
                H5H4(["h5", "text-muted", "mt-3"], "Left")
                <div ["ps-1"]ps-1)
                <div ["ps-2"]ps-2)
                <div ["ps-3"]ps-3)
                <div ["ps-4"]ps-4)
                <div ["ps-5"]ps-5)
                H5H4(["h5", "text-muted", "mt-3"], "Horizontal")
                <div ["px-1"]px-1)
                <div ["px-2"]px-2)
                <div ["px-3"]px-3)
                <div ["px-4"]px-4)
                <div ["px-5"]px-5)
                H5H4(["h5", "text-muted", "mt-3"], "Vertical")
                <div ["py-1"]py-1)
                <div ["py-2"]py-2)
                <div ["py-3"]py-3)
                <div ["py-4"]py-4)
                <div ["py-5"]py-5)
                H5H4(["h5", "text-muted", "mt-3"], "All sides")
                <div ["p-1"]p-1)
                <div ["p-2"]p-2)
                <div ["p-3"]p-3)
                <div ["p-4"]p-4)
                <div ["p-5"]p-5)
              )
            )

            <div ["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Responsive examples</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Margin")
                <div ["ms-0"]ms-0)
                <div ["ms-sm-1"]ms-sm-1)
                <div ["ms-md-2"]ms-md-2)
                <div ["ms-lg-3"]ms-lg-3)
                <div ["ms-xl-4"]ms-xl-4)
                <div ["ms-xxl-5"]ms-xxl-5)
                H5H4(["h5", "text-muted", "mt-3"], "Padding")
                <div ["ps-0"]ps-0)
                <div ["ps-sm-1"]ps-sm-1)
                <div ["ps-md-2"]ps-md-3)
                <div ["ps-lg-3"]ps-lg-3)
                <div ["ps-xl-4"]ps-xl-4)
                <div ["ps-xxl-5"]ps-xxl-5)
              )
            )

            <div ["mb-5" data-css='div:not(.d-grid) {&#10;&#9;border: 5px solid #dee2e6;&#10;&#9;background-image:linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%), linear-gradient(to bottom, #bbbcbc 0%, #bbbcbc 100%);&#10;&#9;background-clip: content-box, padding-box;&#10;}'>
              <h3 ["text-muted"]Gap</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Gap size 1")
                <div ["d-grid gap-1"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Gap size 2")
                <div ["d-grid gap-2"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Gap size 3")
                <div ["d-grid gap-3"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Gap size 4")
                <div ["d-grid gap-4"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Gap size 5")
                <div ["d-grid gap-5"]
                  H5Div(Grid item 1)
                  H5Div(Grid item 2)
                  H5Div(Grid item 3)
                )
              )
            )

          )
        )
      )
    </main>
 */