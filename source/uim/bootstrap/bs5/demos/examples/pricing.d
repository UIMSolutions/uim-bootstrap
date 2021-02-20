module uim.bootstrap.bs5.demos.examples.pricing;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/pricing", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

      return 
`<style>
      .container {
  max-width: 960px;
}

.pricing-header {
  max-width: 700px;
}
.bd-placeholder-img {
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
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
  </head>
  <body>
    
<header class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  H5P(["h5 my-0 me-md-auto fw-normal">Company name")
  H5Nav(["my-2 my-md-0 me-md-3">
    H5A(["p-2 text-dark"], ["href":"#"], Features"),
    H5A(["p-2 text-dark"], ["href":"#"], Enterprise"),
    H5A(["p-2 text-dark"], ["href":"#"], Support"),
    H5A(["p-2 text-dark"], ["href":"#"], Pricing"),
  ),
  H5A(["btn btn-outline-primary"], ["href":"#"], Sign up"),
</header>

H5Main(["container"], 
  H5Div(["pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    H5H1(["display-4">Pricing"),
    H5P(["lead">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.")
  ),

  H5Div(["row row-cols-1 row-cols-md-3 mb-3 text-center">
    H5Div(["col">
      BS5Card(["mb-4 shadow-sm">
      H5Div(["card-header">
        H5H4(["my-0 fw-normal">Free</h4>
      ),
      BS5CardBody(
        H5H1(["card-title pricing-card-title">$0 <small class="text-muted">/ mo"),"),
        H5Ul(["list-unstyled mt-3 mb-4">
          H5Li("10 users included),
          H5Li("2 GB of storage),
          H5Li("Email support),
          H5Li("Help center access),
        ),
        <button "type":"button" class="w-100 btn btn-lg btn-outline-primary">Sign up for free)
      ),
    ),
    ),
    H5Div(["col">
      BS5Card(["mb-4 shadow-sm">
      H5Div(["card-header">
        H5H4(["my-0 fw-normal">Pro</h4>
      ),
      BS5CardBody(
        H5H1(["card-title pricing-card-title">$15 <small class="text-muted">/ mo"),"),
        H5Ul(["list-unstyled mt-3 mb-4">
          H5Li("20 users included),
          H5Li("10 GB of storage),
          H5Li("Priority email support),
          H5Li("Help center access),
        ),
        <button "type":"button" class="w-100 btn btn-lg btn-primary">Get started)
      ),
    ),
    ),
    H5Div(["col">
      BS5Card(["mb-4 shadow-sm">
      H5Div(["card-header">
        H5H4(["my-0 fw-normal">Enterprise</h4>
      ),
      BS5CardBody(
        H5H1(["card-title pricing-card-title">$29 <small class="text-muted">/ mo"),"),
        H5Ul(["list-unstyled mt-3 mb-4">
          H5Li("30 users included),
          H5Li("15 GB of storage),
          H5Li("Phone and email support),
          H5Li("Help center access),
        ),
        <button "type":"button" class="w-100 btn btn-lg btn-primary">Contact us)
      ),
    ),
    ),
  ),

  H5Footer(["pt-4 my-md-5 pt-md-5 border-top">
    H5Div(["row">
      H5Div(["col-12 col-md">
        H5Img(["mb-2" src="../assets/brand/bootstrap-logo.svg" alt="" "width":"24" "height":"19">
        <small class="d-block mb-3 text-muted">&copy; 2017-2020"),
      ),
      H5Div(["col-6 col-md">
        <h5>Features"),
        H5Ul(["list-unstyled text-small">
          H5Li("H5A(["link-secondary"], ["href":"#"], Cool stuff")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Random feature")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Team feature")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Stuff for developers")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Another one")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Last time")),
        ),
      ),
      H5Div(["col-6 col-md">
        <h5>Resources"),
        H5Ul(["list-unstyled text-small">
          H5Li("H5A(["link-secondary"], ["href":"#"], Resource")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Resource name")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Another resource")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Final resource")),
        ),
      ),
      H5Div(["col-6 col-md">
        <h5>About"),
        H5Ul(["list-unstyled text-small">
          H5Li("H5A(["link-secondary"], ["href":"#"], Team")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Locations")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Privacy")),
          H5Li("H5A(["link-secondary"], ["href":"#"], Terms")),
        ),
      ),
    ),
  )
)
`;

    }
  });
}
 
