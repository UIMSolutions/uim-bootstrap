module source.uim.bootstrap.bs5.demos.utilities.flex;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/flex", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Flex - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Flex")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Flex"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/*
<main>
  <div ["container-fluid mt-3 bg-light m-1"]
    <nav aria-label="Breadcrumb" >
      <ol ["breadcrumb"]
        <li ["breadcrumb-item"]<a href="/"]UI Manufaktur</a></li>
        <li ["breadcrumb-item"]<a href="/demos"]Demos</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap"]uim-bootstrap</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap/5"]Bootstrap 5</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap/5/utilities"]Utilities</a></li>
        <li ["breadcrumb-item active" aria-current="page"]Flex</li>
      </ol>
    </nav>
  )
  <div ["container mt-3"]
    <div ["row"]
      <div ["col-12 col-lg-2"]
      )
      <div ["col-12 col-lg-8"]
        <h2 ["component display-4"]Flex</h2>
        <hr>

  <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Container</h3>
              H5Div(
                <div ["d-flex"]Flexbox container)
                <div ["d-inline-flex"]Inline flexbox container)
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Direction</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Row")
                <div ["d-flex flex-row"]
                  H5Div(Flex direction row)
                  H5Div(Flex direction row)
                  H5Div(Flex direction row)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Row-reverse")
                <div ["d-flex flex-row-reverse"]
                  H5Div(Flex direction row-reverse)
                  H5Div(Flex direction row-reverse)
                  H5Div(Flex direction row-reverse)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Column")
                <div ["d-flex flex-column"]
                  H5Div(Flex direction column)
                  H5Div(Flex direction column)
                  H5Div(Flex direction column)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Column-reverse")
                <div ["d-flex flex-column-reverse"]
                  H5Div(Flex direction column-reverse)
                  H5Div(Flex direction column-reverse)
                  H5Div(Flex direction column-reverse)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Justify content</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Start")
                <div ["d-flex justify-content-start"]
                  H5Div(Justify content start)
                  H5Div(Justify content start)
                  H5Div(Justify content start)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Center")
                <div ["d-flex justify-content-center"]
                  H5Div(Justify content center)
                  H5Div(Justify content center)
                  H5Div(Justify content center)
                )
                H5H4(["h5", "text-muted", "mt-3"], "End")
                <div ["d-flex justify-content-end"]
                  H5Div(Justify content end)
                  H5Div(Justify content end)
                  H5Div(Justify content end)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Between")
                <div ["d-flex justify-content-between"]
                  H5Div(Justify content between)
                  H5Div(Justify content between)
                  H5Div(Justify content between)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Around")
                <div ["d-flex justify-content-around"]
                  H5Div(Justify content around)
                  H5Div(Justify content around)
                  H5Div(Justify content around)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Align items</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Start")
                <div ["d-flex align-items-start"]
                  H5Div(Align items start)
                  H5Div(Align items start)
                  H5Div(Align items start)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Center")
                <div ["d-flex align-items-center"]
                  H5Div(Align items center)
                  H5Div(Align items center)
                  H5Div(Align items center)
                )
                H5H4(["h5", "text-muted", "mt-3"], "End")
                <div ["d-flex align-items-end"]
                  H5Div(Align items end)
                  H5Div(Align items end)
                  H5Div(Align items end)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Baseline")
                <div ["d-flex align-items-baseline"]
                  H5Div(Align items baseline)
                  H5Div(Align items baseline)
                  H5Div(Align items baseline)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Stretch")
                <div ["d-flex align-items-stretch"]
                  H5Div(Align items stretch)
                  H5Div(Align items stretch)
                  H5Div(Align items stretch)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Align self</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Start")
                <div ["d-flex" data-example="alignSelf"]
                  <div ["align-self-start"]Align self start)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Center")
                <div ["d-flex" data-example="alignSelf"]
                  <div ["align-self-center"]Align self center)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                H5H4(["h5", "text-muted", "mt-3"], "End")
                <div ["d-flex" data-example="alignSelf"]
                  <div ["align-self-end"]Align self end)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Baseline")
                <div ["d-flex" data-example="alignSelf"]
                  <div ["align-self-baseline"]Align self baseline)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Stretch")
                <div ["d-flex" data-example="alignSelf"]
                  <div ["align-self-stretch"]Align self stretch)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Auto margins</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Horizontal")
                <div ["d-flex justify-content-start"]
                  H5Div(Flex item)
                  H5Div(Flex item)
                  <div ["ms-auto"]Margin left auto)
                )
                <div ["d-flex justify-content-end"]
                  <div ["me-auto"]Margin right auto)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Vertical")
                <div ["d-flex flex-column align-items-start"]
                  <div ["mb-auto"]Margin bottom auto)
                  H5Div(Flex item)
                  H5Div(Flex item)
                )
                <div ["d-flex flex-column align-items-end"]
                  H5Div(Flex item)
                  H5Div(Flex item)
                  <div ["mt-auto"]Margin top auto)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Fill</h3>
              H5Div(
                <div ["d-flex"]
                  <div ["flex-fill"]Flex fill)
                  <div ["flex-fill"]Flex fill)
                  <div ["flex-fill"]Flex fill)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Grow</h3>
              H5Div(
                <div ["d-flex"]
                  H5Div(Flex grow)
                  H5Div(Flex grow)
                  <div ["flex-grow-1"]Flex grow)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Shrink</h3>
              H5Div(
                <div ["d-flex"]
                  <div ["w-50"]Flex shrink)
                  <div ["w-50"]Flex shrink)
                  <div ["flex-shrink-1"]Flex shrink)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Wrap</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Nowrap")
                <div ["d-flex flex-nowrap"]
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                  H5Div(Flex-wrap nowrap)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Wrap")
                <div ["d-flex flex-wrap"]
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                  H5Div(Flex-wrap wrap)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Wrap-reverse")
                <div ["d-flex flex-wrap-reverse"]
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                  H5Div(Flex-wrap reverse)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Order</h3>
              <p>order-first (-1), order-0 to order-5 and order-last (6)</p>
              H5Div(
                <div ["d-flex"]
                  <div ["order-last"]First, but last)
                  <div ["order-3"]Second, but number 5)
                  <div ["order-2"]Third, but number 4)
                  <div ["order-1"]Fourth, but number 3)
                  <div ["order-first"]Fifth, but first)
                  H5Div(Last, but unordered, so number 2)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Align content</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Start")
                <div ["d-flex align-content-start flex-wrap"]
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                  H5Div(Align content start)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Center")
                <div ["d-flex align-content-center flex-wrap"]
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                  H5Div(Align content center)
                )
                H5H4(["h5", "text-muted", "mt-3"], "End")
                <div ["d-flex align-content-end flex-wrap"]
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                  H5Div(Align content end)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Between")
                <div ["d-flex align-content-between flex-wrap"]
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                  H5Div(Align content between)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Around")
                <div ["d-flex align-content-around flex-wrap"]
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                  H5Div(Align content around)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Stretch")
                <div ["d-flex align-content-stretch flex-wrap"]
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                  H5Div(Align content stretch)
                )
              )
            )

            <div ["mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 ["text-muted"]Responsive examples</h3>
              <p>Responsive utility classes exist for all the flexbox utilities: display, flex-direction, justify-content, align-items, align-self, flex-wrap, order and align-content. The examples are hidden on the screen, but can be viewed in the source code or by clicking "Toggle code" below.</p>
              H5Div(
                <div ["responsive-examples"]
                  <div ["d-sm-flex"]Display flex for small devices and up)
                  <div ["d-md-inline-flex"]Display inline-flex for medium devices and up)
                  <div ["d-flex flex-lg-row"]Display flex for all devices and set flex direction to row for large devices and up)
                  <div ["d-flex flex-xl-row-reverse"]Display flex for all devices and set flex direction to row-reverse for extra large devices and up)
                  <div ["d-flex flex-xxl-column"]Display flex for all devices and set flex direction to column for extra extra large devices and up)
                  <div ["d-flex flex-sm-column-reverse"]Display flex for all devices and set flex direction to column-reverse for small devices and up)
                  <div ["d-flex justify-content-md-start"]Display flex for all devices and justify content to the start for medium devices and up)
                  <div ["d-flex justify-content-lg-center"]Display flex for all devices and justify content to the center for large devices and up)
                  <div ["d-flex justify-content-xl-end"]Display flex for all devices and justify content to the end for extra large devices and up)
                  <div ["d-flex justify-content-xxl-between"]Display flex for all devices and justify content between for extra extra large devices and up)
                  <div ["d-flex justify-content-sm-around"]Display flex for all devices and justify content around for small devices and up)
                  <div ["d-flex align-items-md-start"]Display flex for all devices and align items to the start for medium devices and up)
                  <div ["d-flex align-items-lg-center"]Display flex for all devices and align items to the center for large devices and up)
                  <div ["d-flex align-items-xl-end"]Display flex for all devices and align items to the end for extra large devices and up)
                  <div ["d-flex align-items-xxl-baseline"]Display flex for all devices and align items to the baseline for extra extra large devices and up)
                  <div ["d-flex align-items-sm-stretch"]Display flex for all devices and align items to stretch for small devices and up)
                  <div ["d-flex"]
                    <div ["align-self-md-start"]Align self to the start for medium devices and up)
                  )
                  <div ["d-flex"]
                    <div ["align-self-lg-center"]Align self to the center for large devices and up)
                  )
                  <div ["d-flex"]
                    <div ["align-self-xl-end"]Align self to the end for extra large devices and up)
                  )
                  <div ["d-flex"]
                    <div ["align-self-xxl-baseline"]Align self to the baseline for extra extra large devices and up)
                  )
                  <div ["d-flex"]
                    <div ["align-self-sm-stretch"]Align self to stretch for small devices and up)
                  )
                  <div ["d-flex"]
                    <div ["flex-md-fill"]Fill item for medium devices and up)
                  )
                  <div ["d-flex"]
                    <div ["flex-lg-grow-1"]Grow item for large devices and up)
                  )
                  <div ["d-flex"]
                    <div ["flex-xl-shrink-1"]Shrink item for extra large devices and up)
                  )
                  <div ["d-flex flex-xxl-nowrap"]Display flex for all devices and make items not wrap for extra extra large devices and up)
                  <div ["d-flex flex-sm-wrap"]Display flex for all devices and make items wrap for small devices and up)
                  <div ["d-flex flex-md-wrap-reverse"]Display flex for all devices and make items wrap in reverse for medium devices and up)
                  <div ["d-flex"]
                    <div ["order-lg-3"]Set the order to 3 for large devices and up)
                    <div ["order-xl-2"]Set the order to 2 for extra large devices and up)
                    <div ["order-xxl-1"]Set the order to 1 for extra extra large devices and up)
                  )
                  <div ["d-flex align-content-sm-start"]Display flex for all devices and align content to the start for small devices and up)
                  <div ["d-flex align-content-md-center"]Display flex for all devices and align content to the center for medium devices and up)
                  <div ["d-flex align-content-lg-end"]Display flex for all devices and align content to the end for large devices and up)
                  <div ["d-flex align-content-xl-around"]Display flex for all devices and align content around for extra large devices and up)
                  <div ["d-flex align-content-xxl-stretch"]Display flex for all devices and align content to stretch for extra extra large devices and up)
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
} */