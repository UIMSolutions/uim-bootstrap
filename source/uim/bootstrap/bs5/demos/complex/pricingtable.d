module source.uim.bootstrap.bs5.demos.complex.pricingtable;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/pricingtable", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Pricing Table - Bootstrap 5 Demo",
            ])
            .styles(`section.pricing {
    background: #007bff;
    background: linear-gradient(to right, #0062E6, #33AEFF);
}

.pricing .card {
    border: none;
    border-radius: 1rem;
    transition: all 0.2s;
    box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.pricing hr {
    margin: 1.5rem 0;
}

.pricing .card-title {
    margin: 0.5rem 0;
    font-size: 0.9rem;
    letter-spacing: .1rem;
    font-weight: bold;
}

.pricing .card-price {
    font-size: 3rem;
    margin: 0;
}

.pricing .card-price .period {
    font-size: 0.8rem;
}

.pricing ul li {
    margin-bottom: 1rem;
}

.pricing .text-muted {
    opacity: 0.7;
}

.pricing .btn {
    font-size: 80%;
    border-radius: 5rem;
    letter-spacing: .1rem;
    font-weight: bold;
    padding: 1rem;
    opacity: 0.7;
    transition: all 0.2s;
}

/* Hover Effects on Card */

@media (min-width: 992px) {
    .pricing .card:hover {
        margin-top: -.25rem;
        margin-bottom: .25rem;
        box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.3);
    }

    .pricing .card:hover .btn {
        opacity: 1;
    }
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Pricing Table")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "pricingtable")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Pricing Table"),
      H5Hr,

demoBs5Example("pricingtable", "Right prices for great stuff", 
    BS5Container.row(
        H5Div(["col-lg-4"], 
        BS5Card(["mb-5 mb-lg-0"]).body_(
            H5H5(["card-title text-muted text-uppercase text-center"], "Free"),
            H5H6(["card-price text-center"], H5String("$0"), H5Span(["period"], "/month")),
            H5Hr,
            H5Ul(["fa-ul"])
            .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Single User"))
            .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("5GB Storage"))
            .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Unlimited Public Projects"))
            .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Community ]ccess"))
            .item(["text-muted"], H5Span(["fa-li"], H5H5(["fas fa-times"])), H5String("Unlimited Private Projects"))
            .item(["text-muted"], H5Span(["fa-li"], H5H5(["fas fa-times"])), H5String("Dedicated Phone Support"))
            .item(["text-muted"], H5Span(["fa-li"], H5H5(["fas fa-times"])), H5String("Free Subdomain"))
            .item(["text-muted"], H5Span(["fa-li"], H5H5(["fas fa-times"])), H5String("Monthly Status Reports")),
            BS5ButtonLink(["btn-block btn-primary text-uppercase"], ["href":"#"], "Button")
            )
        ),
        H5Div(["col-lg-4"], 
            BS5Card(["mb-5 mb-lg-0"]).body_(
                H5H5(["card-title text-muted text-uppercase text-center"], "Plus"),
                H5H6(["card-price text-center"], H5String("$9"), H5Span(["period"], "/month")),
                H5Hr,
                H5Ul(["fa-ul"])
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5Strong("5 Users"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("50GB Storage"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Unlimited Public Projects"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Community Access"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Unlimited Private Projects"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Dedicated Phone Support"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Free Subdomain"))
                .item(["text-muted"], H5Span(["fa-li"], H5H5(["fas fa-times"])), H5String("Monthly Status Reports")),
                BS5ButtonLink(["btn-block btn-primary text-uppercase"], ["href":"#"], "Button")
            )
        ),
        H5Div(["col-lg-4"], 
            BS5Card.body_(
                H5H5(["card-title text-muted text-uppercase text-center"], "Pro"),
                H5H6(["card-price text-center"], H5String("$49"), H5Span(["period"], "/month")),
                H5Hr,
                H5Ul(["fa-ul"]) 
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5Strong("Unlimited Users"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("150GB Storage"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Unlimited Public Projects"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Community Access"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Unlimited Private Projects"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Dedicated Phone Support"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5Strong("Unlimited"), H5String("Free Subdomains"))
                .item(H5Span(["fa-li"], H5H5(["fas fa-check"])), H5String("Monthly Status Reports")),
                BS5ButtonLink(["btn-block btn-primary text-uppercase"], ["href":"#"], "Button")
            )
        )
    ), ``, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
