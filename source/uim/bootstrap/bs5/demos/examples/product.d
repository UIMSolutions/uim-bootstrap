module uim.bootstrap.bs5.demos.examples.product;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/starter", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
				"pageTitle": "Starter Page - Bootstrap 5 Demo",
      ])
      .styles(`.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }`)
      .styles(["href":"product.css", "rel":"stylesheet"]);
		} 
			
    override string content() { 

      return 
H5Header(["site-header sticky-top py-1"], 
  H5Nav(["container d-flex", "flex-column flex-md-row justify-content-between"], 
    H5A(["py-2"], ["href":"#", "aria-label":"Product"], 
/*       <svg xmlns="http://www.w3.org/2000/svg" "width":"24" "height":"24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-"width":"2" class="d-block mx-auto" "role":"img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
 */ ),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Tour"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Product"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Features"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Enterprise"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Support"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Pricing"),
    H5A(["py-2 d-none d-md-inline-block"], ["href":"#"], "Cart"),
  )
).toString~
H5Main(
  H5Div(["position-relative overflow-hidden p-3", "p-md-5 m-md-3 text-center bg-light"], 
    H5Div(["col-md-5 p-lg-5 mx-auto my-5"], 
      H5H1(["display-4 fw-normal"], "Punny headline"),
      H5P(["lead fw-normal"], "And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple’s marketing pages."),
      H5A(["btn btn-outline-secondary"], ["href":"#"], "Coming soon"),
    ),
    H5Div(["product-device", "shadow-sm d-none d-md-block"]),
    H5Div(["product-device product-device-2", "shadow-sm d-none d-md-block"]),
  ),
  H5Div(["d-md-flex", "flex-md-equal w-100", "my-md-3", "ps-md-3"], 
    H5Div(["bg-dark", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center text-white overflow-hidden"], 
      H5Div(["my-3", "py-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-light", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    ),
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"], 
      H5Div(["my-3", "p-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-dark", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    )
  ),
  H5Div(["d-md-flex", "flex-md-equal w-100", "my-md-3", "ps-md-3"], 
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"],
      H5Div(["my-3", "p-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-dark", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    ),
    H5Div(["bg-primary", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center text-white overflow-hidden"],
      H5Div(["my-3", "py-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-light", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    )
  ),
  H5Div(["d-md-flex", "flex-md-equal w-100", "my-md-3", "ps-md-3"],
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"],
      H5Div(["my-3", "p-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-white", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    ),
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"], 
      H5Div(["my-3", "py-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-white", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    )
  ),
  H5Div(["d-md-flex", "flex-md-equal w-100", "my-md-3", "ps-md-3"], 
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"],
      H5Div(["my-3", "p-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-white", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    ),
    H5Div(["bg-light", "me-md-3", "pt-3", "px-3", "pt-md-5", "px-md-5", "text-center", "overflow-hidden"], 
      H5Div(["my-3", "py-3"], 
        H5H2(["display-5"], "Another headline"),
        H5P(["lead"], "And an even wittier subheading.")
      ),
      H5Div(["bg-white", "shadow-sm mx-auto"], ["style":"width: 80%; height: 300px; border-radius: 21px 21px 0 0;"])
    )
  )
).toString~
H5Footer(["container py-5"], 
  H5Div(["row"], 
    H5Div(["col-12 col-md"], 
/*       <svg xmlns="http://www.w3.org/2000/svg" "width":"24" "height":"24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-"width":"2" class="d-block mb-2" "role":"img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
 */      
      H5Small(["d-block mb-3 text-muted"], "&copy; 2017-2020")
    ),
    H5Div(["col-6 col-md"], 
      H5H5("Features"),
      H5Ul(["list-unstyled text-small"], 
        H5Li(H5A(["link-secondary"], ["href":"#"], "Cool stuff")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Random feature")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Team feature")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Stuff for developers")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Another one")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Last time"))
      )
    ),
    H5Div(["col-6 col-md"], 
      H5H5("Resources"),
      H5Ul(["list-unstyled text-small"], 
        H5Li(H5A(["link-secondary"], ["href":"#"], "Resource name")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Resource")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Another resource")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Final resource"))
      )
    ),
    H5Div(["col-6 col-md"], 
      H5H5("Resources"),
      H5Ul(["list-unstyled text-small"], 
        H5Li(H5A(["link-secondary"], ["href":"#"], "Business")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Education")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Government")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Gaming"))
      )
    ),
    H5Div(["col-6 col-md"], 
      H5H5("About"),
      H5Ul(["list-unstyled text-small"], 
        H5Li(H5A(["link-secondary"], ["href":"#"], "Team")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Locations")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Privacy")),
        H5Li(H5A(["link-secondary"], ["href":"#"], "Terms"))
      )
    )
  )
).toString;

    }
  });
}
 
