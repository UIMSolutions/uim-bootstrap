module source.uim.bootstrap.bs5.demos.complex.ecommerce.cardsanimation;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/ecommerce/cardsanimation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "eCommerce Cards - Bootstrap 5 Demo",
            ])
            .styles(`.wrapper {
    margin-top: 30px
}

.ecommerce {
    border: 1px solid #eee;
    cursor: pointer
}

.weight {
    margin-top: -65px;
    transition: all 0.5s
}

.weight small {
    color: #aaaaaa
}

.buttons {
    padding: 10px;
    background-color: #d6d4d44f;
    border-radius: 4px;
    position: relative;
    margin-top: 7px;
    opacity: 0;
    transition: all 0.8s
}

.dot {
    height: 14px;
    width: 14px;
    background-color: green;
    border-radius: 50%;
    position: absolute;
    left: 27%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 8px;
    color: #fff;
    opacity: 0
}

.cart-button {
    height: 48px
}

.cart-button:focus {
    box-shadow: none
}

.cart {
    position: relative;
    height: 48px !important;
    width: 50px;
    margin-right: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #fff;
    padding: 11px;
    border-radius: 5px;
    font-size: 14px;
    transition: 1s ease-in-out;
    overflow: hidden
}

.cart-button.clicked span.dot {
    animation: item 0.3s ease-in forwards
}

@keyframes item {
    0% {
        opacity: 1;
        top: 30%;
        left: 30%
    }

    25% {
        opacity: 1;
        left: 26%;
        top: 0%
    }

    50% {
        opacity: 1;
        left: 23%;
        top: -22%
    }

    75% {
        opacity: 1;
        left: 19%;
        top: -18%
    }

    100% {
        opacity: 1;
        left: 14%;
        top: 28%
    }
}

.ecommerce:hover .buttons {
    opacity: 1
}

.ecommerce:hover .weight {
    margin-top: 10px
}

.ecommerce:hover {
    transform: scale(1.04);
    z-index: 2;
    overflow: hidden
}`).scripts(`document.addEventListener("DOMContentLoaded", function(event) {
const cartButtons = document.querySelectorAll('.cart-button');
cartButtons.forEach(button => {
button.addEventListener('click',cartClick);
});

function cartClick(){
let button =this;
button.classList.add('clicked');
}
});`);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "eCommerce Cards with Animation")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "ecommercecardsanimation")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "eCommerce Cards with Animation"),
      H5Hr,

demoBs5Example("ecommercecardsanimation", "Fruits are healthy. Buy some", 
    BS5Container
    .row(["g-1"], 
        H5Div(["col-md-3"], 
            BS5Card(["p-3 ecommerce"], 
                H5Div(["text-center"],  
                    H5Img(["img-fluid"], ["src":"/img/strawberries_200x200.jpg"])),
                H5Div(["product-details"], 
                    H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                    H5Span("Strawberries")),
                H5Div(["buttons d-flex flex-row"], 
                    H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                    BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
                ),
                H5Div(["weight"], H5Small("1 piece 0,5kg"))
            )
        ),
        H5Div(["col-md-3"], 
            BS5Card(["p-3 ecommerce"], 
                H5Div(["text-center"],  
                    H5Img(["img-fluid"], ["src":"/img/blueberries_200x200.jpg"])),
                H5Div(["product-details"], 
                    H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                    H5Span("Blueberries")),
                H5Div(["buttons d-flex flex-row"], 
                    H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                    BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
                ),
                H5Div(["weight"], H5Small("100 piece 2.5kg"))
            )
        ),
        H5Div(["col-md-3"], 
            BS5Card(["p-3 ecommerce"], 
                H5Div(["text-center"],  
                    H5Img(["img-fluid"], ["src":"/img/pears_200x200.jpg"])),
                H5Div(["product-details"], 
                    H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                    H5Span("Pears")),
                H5Div(["buttons d-flex flex-row"], 
                    H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                    BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
                ),
                H5Div(["weight"], H5Small("1 piece 1,0kg"))
            )
        ),
        H5Div(["col-md-3"], 
            BS5Card(["p-3 ecommerce"], 
                H5Div(["text-center"],  
                    H5Img(["img-fluid"], ["src":"/img/tomatoes_200x200.jpg"])),
                H5Div(["product-details"], 
                    H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                    H5Span("Tomatoes")),
                H5Div(["buttons d-flex flex-row"], 
                    H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                    BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
                ),
                H5Div(["weight"], H5Small("20 piece 2.5kg"))
            )
        )
), `BS5Container
.row(["g-1"], 
    H5Div(["col-md-3"], 
        BS5Card(["p-3 ecommerce"], 
            H5Div(["text-center"],  
                H5Img(["img-fluid"], ["src":"/img/strawberries_200x200.jpg"])),
            H5Div(["product-details"], 
                H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                H5Span("Strawberries")),
            H5Div(["buttons d-flex flex-row"], 
                H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
            ),
            H5Div(["weight"], H5Small("1 piece 0,5kg"))
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-3 ecommerce"], 
            H5Div(["text-center"],  
                H5Img(["img-fluid"], ["src":"/img/blueberries_200x200.jpg"])),
            H5Div(["product-details"], 
                H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                H5Span("Blueberries")),
            H5Div(["buttons d-flex flex-row"], 
                H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
            ),
            H5Div(["weight"], H5Small("100 piece 2.5kg"))
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-3 ecommerce"], 
            H5Div(["text-center"],  
                H5Img(["img-fluid"], ["src":"/img/pears_200x200.jpg"])),
            H5Div(["product-details"], 
                H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                H5Span("Pears")),
            H5Div(["buttons d-flex flex-row"], 
                H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
            ),
            H5Div(["weight"], H5Small("1 piece 1,0kg"))
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-3 ecommerce"], 
            H5Div(["text-center"],  
                H5Img(["img-fluid"], ["src":"/img/tomatoes_200x200.jpg"])),
            H5Div(["product-details"], 
                H5Span(["font-weight-bold d-block"], "€ 7.00 "), 
                H5Span("Tomatoes")),
            H5Div(["buttons d-flex flex-row"], 
                H5Div(["cart"], H5I(["fa fa-shopping-cart"])), 
                BS5Button(["btn-success cart-button btn-block"], H5Span(["dot"], "1"), H5String("To cart"))
            ),
            H5Div(["weight"], H5Small("20 piece 2.5kg"))
        )
    )
)`, `<div class="container">
    <div class="g-1 row">
        <div class="col-md-3">
            <div class="card p-3 ecommerce">
                <div class="text-center">
                    <img class="img-fluid" src="/img/strawberries_200x200.jpg">
                </div>
                <div class="product-details">
                    <span class="font-weight-bold d-block">€ 7.00 </span>
                    <span>Strawberries</span>
                </div>
                <div class="buttons d-flex flex-row">
                    <div class="cart">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <button class="btn btn-success cart-button btn-block" type="button">
                        <span class="dot">1</span>To cart
                    </button>
                </div>
                <div class="weight">
                    <small>1 piece 0,5kg</small>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card p-3 ecommerce">
                <div class="text-center">
                    <img class="img-fluid" src="/img/blueberries_200x200.jpg">
                </div>
                <div class="product-details">
                    <span class="font-weight-bold d-block">€ 7.00 </span>
                    <span>Blueberries</span>
                </div>
                <div class="buttons d-flex flex-row">
                    <div class="cart">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <button class="btn btn-success cart-button btn-block" type="button">
                        <span class="dot">1</span>To cart
                    </button>
                </div>
                <div class="weight">
                    <small>100 piece 2.5kg</small>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card p-3 ecommerce">
                <div class="text-center">
                    <img class="img-fluid" src="/img/pears_200x200.jpg">
                </div>
                <div class="product-details">
                    <span class="font-weight-bold d-block">€ 7.00 </span>
                    <span>Pears</span>
                </div>
            <div class="buttons d-flex flex-row">
                <div class="cart">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <button class="btn btn-success cart-button btn-block" type="button">
                    <span class="dot">1</span>To cart
                </button>
                </div>
                <div class="weight">
                    <small>1 piece 1,0kg</small>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card p-3 ecommerce">
                <div class="text-center">
                    <img class="img-fluid" src="/img/tomatoes_200x200.jpg">
                </div>
                <div class="product-details">
                    <span class="font-weight-bold d-block">€ 7.00 </span>
                    <span>Tomatoes</span>
                </div>
                <div class="buttons d-flex flex-row">
                    <div class="cart">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <button class="btn btn-success cart-button btn-block" type="button">
                        <span class="dot">1</span>To cart
                    </button>
                </div>
                <div class="weight">
                    <small>20 piece 2.5kg</small>
                </div>
            </div>
        </div>
    </div>
</div>`)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
