module uim.bootstrap.bs5.demos.examples.checkout;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/checkout", new class DH5AppPage {
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
`    <style>
 .container {
  max-width: 960px;
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
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
H5Div(["container">
  <main>
    H5Div(["py-5 text-center">
      H5Img(["d-block mx-auto mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" "width":"72" "height":"57">
      H5H2("Checkout form")
      H5P(["lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.")
    ),

    H5Div(["row g-3">
      H5Div(["col-md-5 col-lg-4 order-md-last">
        H5H4(["d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">Your cart"),
          <span class="badge bg-secondary rounded-pill">3"),
        </h4>
        H5Ul(["list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            H5Div(
              <h6 class="my-0">Product name</h6>
              <small class="text-muted">Brief description"),
            ),
            <span class="text-muted">$12"),
          ),
          <li class="list-group-item d-flex justify-content-between lh-sm">
            H5Div(
              <h6 class="my-0">Second product</h6>
              <small class="text-muted">Brief description"),
            ),
            <span class="text-muted">$8"),
          ),
          <li class="list-group-item d-flex justify-content-between lh-sm">
            H5Div(
              <h6 class="my-0">Third item</h6>
              <small class="text-muted">Brief description"),
            ),
            <span class="text-muted">$5"),
          ),
          <li class="list-group-item d-flex justify-content-between bg-light">
            H5Div(["text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE"),
            ),
            <span class="text-success">−$5"),
          ),
          <li class="list-group-item d-flex justify-content-between">
            H5Span("Total (USD)"),
            <strong>$20")
          ),
        ),

        H5Form(["card p-2">
          H5Div(["input-group">
            <input "type":"text" class="form-control" "placeholder":"Promo code">
            BS5ButtonSubmit(["btn-secondary"], "Redeem")
          ),
        )
      ),
      H5Div(["col-md-7 col-lg-8">
        H5H4(["mb-3">Billing address</h4>
        H5Form(["needs-validation" novalidate>
          H5Div(["row g-3">
            H5Div(["col-sm-6">
              <label for="firstName" class="form-label">First name</label>
              <input "type":"text" class="form-control" id="firstName" "placeholder":"" value="" required>
              H5Div(["invalid-feedback">
                Valid first name is required.
              ),
            ),

            H5Div(["col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input "type":"text" class="form-control" id="lastName" "placeholder":"" value="" required>
              H5Div(["invalid-feedback">
                Valid last name is required.
              ),
            ),

            H5Div(["col-12">
              <label for="username" class="form-label">Username</label>
              H5Div(["input-group">
                <span class="input-group-text">@"),
                <input "type":"text" class="form-control" id="username" "placeholder":"Username" required>
              H5Div(["invalid-feedback">
                  Your username is required.
                ),
              ),
            ),

            H5Div(["col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)"),</label>
              BS5InputEmail("email", ["placeholder":"you@example.com"]),
              H5Div(["invalid-feedback">
                Please enter a valid email address for shipping updates.
              ),
            ),

            H5Div(["col-12">
              <label for="address" class="form-label">Address</label>
              <input "type":"text" class="form-control" id="address" "placeholder":"1234 Main St" required>
              H5Div(["invalid-feedback">
                Please enter your shipping address.
              ),
            ),

            H5Div(["col-12">
              <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)"),</label>
              <input "type":"text" class="form-control" id="address2" "placeholder":"Apartment or suite">
            ),

            H5Div(["col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" id="country" required>
                <option value="">Choose...</option>
                <option>United States</option>
              </select>
              H5Div(["invalid-feedback">
                Please select a valid country.
              ),
            ),

            H5Div(["col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" required>
                <option value="">Choose...</option>
                <option>California</option>
              </select>
              H5Div(["invalid-feedback">
                Please provide a valid state.
              ),
            ),

            H5Div(["col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input "type":"text" class="form-control" id="zip" "placeholder":"" required>
              H5Div(["invalid-feedback">
                Zip code required.
              ),
            ),
          ),

          <hr class="my-4">

          H5Div(["form-check">
            <input "type":"checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          ),

          H5Div(["form-check">
            <input "type":"checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          ),

          <hr class="my-4">

          H5H4(["mb-3">Payment</h4>

          H5Div(["my-3">
            H5Div(["form-check">
              <input id="credit" name="paymentMethod" "type":"radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            ),
            H5Div(["form-check">
              <input id="debit" name="paymentMethod" "type":"radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            ),
            H5Div(["form-check">
              <input id="paypal" name="paymentMethod" "type":"radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            ),
          ),

          H5Div(["row gy-3">
            H5Div(["col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input "type":"text" class="form-control" id="cc-name" "placeholder":"" required>
              <small class="text-muted">Full name as displayed on card"),
              H5Div(["invalid-feedback">
                Name on card is required
              ),
            ),

            H5Div(["col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input "type":"text" class="form-control" id="cc-number" "placeholder":"" required>
              H5Div(["invalid-feedback">
                Credit card number is required
              ),
            ),

            H5Div(["col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input "type":"text" class="form-control" id="cc-expiration" "placeholder":"" required>
              H5Div(["invalid-feedback">
                Expiration date required
              ),
            ),

            H5Div(["col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input "type":"text" class="form-control" id="cc-cvv" "placeholder":"" required>
              H5Div(["invalid-feedback">
                Security code required
              ),
            ),
          ),

          <hr class="my-4">

          H5Button(["w-100 btn btn-primary btn-lg" "type":"submit">Continue to checkout)
        )
      ),
    ),
  )

  H5Footer(["my-5 pt-5 text-muted text-center text-small">
    H5P(["mb-1">&copy; 2017–2020 Company Name")
    H5Ul(["list-inline">
      <li class="list-inline-item">H5A(["href":"#"], Privacy")),
      <li class="list-inline-item">H5A(["href":"#"], Terms")),
      <li class="list-inline-item">H5A(["href":"#"], Support")),
    ),
  )
),


    <script>// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

    </script>

`;

    }
  });
}
 
