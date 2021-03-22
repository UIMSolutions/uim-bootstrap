module source.uim.bootstrap.bs5.demos.complex.ecommerce.cards;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/ecommerce/cards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "eCommerce Cards - Bootstrap 5 Demo",
            ])
            .styles(`@import url('https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300;400;500;600;700;800;900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

:root {
    --font1: 'Heebo', sans-serif;
    --font2: 'Fira Sans Extra Condensed', sans-serif;
    --font3: 'Roboto', sans-serif
}

body {
    font-family: var(--font3);
    background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%)
}

h2 {
    font-weight: 900
}

.ecom {
    background: #fff;
    box-shadow: 0 6px 10px rgba(0, 0, 0, .08), 0 0 6px rgba(0, 0, 0, .05);
    transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s box-shadow, .3s -webkit-transform cubic-bezier(.155, 1.105, .295, 1.12);
    border: 1;
    border-radius: 1rem
}

.ecom-img,
.ecom-img-top {
    border-top-left-radius: calc(1rem - 1px);
    border-top-right-radius: calc(1rem - 1px)
}

.ecom h5 {
    overflow: hidden;
    height: 56px;
    font-weight: 900;
    font-size: 1rem
}

.ecom-img-top {
    width: 100%;
    max-height: 180px;
    object-fit: contain;
    padding: 30px
}

.ecom h2 {
    font-size: 1rem
}

.ecom:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06)
}

.label-top {
    position: absolute;
    background-color: #8bc34a;
    color: #fff;
    top: 8px;
    right: 8px;
    padding: 5px 10px 5px 10px;
    font-size: .7rem;
    font-weight: 600;
    border-radius: 3px;
    text-transform: uppercase
}

.top-right {
    position: absolute;
    top: 24px;
    left: 24px;
    width: 90px;
    height: 90px;
    border-radius: 50%;
    font-size: 1rem;
    font-weight: 900;
    background: #ff5722;
    line-height: 90px;
    text-align: center;
    color: white
}

.top-right span {
    display: inline-block;
    vertical-align: middle
}

@media (max-width: 768px) {
    .ecom-img-top {
        max-height: 250px
    }
}

.over-bg {
    background: rgba(53, 53, 53, 0.85);
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(0.0px);
    -webkit-backdrop-filter: blur(0.0px);
    border-radius: 10px
}

.btn {
    font-size: 1rem;
    font-weight: 500;
    text-transform: uppercase;
    padding: 5px 50px 5px 50px
}

.box .btn {
    font-size: 1.5rem
}

@media (max-width: 1025px) {
    .btn {
        padding: 5px 40px 5px 40px
    }
}

@media (max-width: 250px) {
    .btn {
        padding: 5px 30px 5px 30px
    }
}

.btn-warning {
    background: none #f7810a;
    color: #ffffff;
    fill: #ffffff;
    border: none;
    text-decoration: none;
    outline: 0;
    box-shadow: -1px 6px 19px rgba(247, 129, 10, 0.25);
    border-radius: 100px
}

.btn-warning:hover {
    background: none #ff962b;
    color: #ffffff;
    box-shadow: -1px 6px 13px rgba(255, 150, 43, 0.35)
}

.bg-success {
    font-size: 1rem;
    background-color: #f7810a !important
}

.bg-danger {
    font-size: 1rem
}

.price-hp {
    font-size: 1rem;
    font-weight: 600;
    color: darkgray
}

.amz-hp {
    font-size: .7rem;
    font-weight: 600;
    color: darkgray
}

.fa-question-circle:before {
    color: darkgray
}

.fa-plus:before {
    color: darkgray
}

.box {
    border-radius: 1rem;
    background: #fff;
    box-shadow: 0 6px 10px rgb(0 0 0 / 8%), 0 0 6px rgb(0 0 0 / 5%);
    transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s box-shadow, .3s -webkit-transform cubic-bezier(.155, 1.105, .295, 1.12)
}

.box-img {
    max-width: 300px
}

.thumb-sec {
    max-width: 300px
}

@media (max-width: 576px) {
    .box-img {
        max-width: 200px
    }

    .thumb-sec {
        max-width: 200px
    }
}

.inner-gallery {
    width: 60px;
    height: 60px;
    border: 1px solid #ddd;
    border-radius: 3px;
    margin: 1px;
    display: inline-block;
    overflow: hidden;
    -o-object-fit: cover;
    object-fit: cover
}

@media (max-width: 370px) {
    .box .btn {
        padding: 5px 40px 5px 40px;
        font-size: 1rem
    }
}

.disclaimer {
    font-size: .9rem;
    color: darkgray
}

.related h3 {
    font-weight: 900
}

footer {
    background: #212529;
    height: 80px;
    color: #fff
}`);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/", "/demos/uim-bootstrap/5/complex/ecommerce/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex", "eCommerce"], "Cards")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "ecommerce"),
      listSections("complex", "ecommerce", "cards")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "eCommerce Cards"),
      H5Hr,

demoBs5Example("ecommercecards", "Time for a ride", 
    H5Div(["container-fluid bg-trasparent my-4 p-3"], ["style":"position: relative;"], 
        BS5Row(["row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3"], 
            BS5Col(["col"],
                BS5Card(["h-100 shadow-sm ecom"], 
                    BS5CardImage(["ecom-img-top"], ["src":"/img/bluebike_200x200.jpg", "alt":"..."]), 
                    H5Div(["label-top shadow-sm ecom"], "Superbike"),
                    BS5CardBody(
                        H5Div(["clearfix mb-3"], 
                            H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                            H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                        H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                        H5Div(["text-center my-4"],  
                            BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                        H5Div(["clearfix mb-1"], 
                            H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                            H5Span(["float-end"], H5I(["fas fa-plus"])))
                    )
                )
            ),
            BS5Col(["col"],
                BS5Card(["h-100 shadow-sm ecom"],  
                    BS5CardImage(["ecom-img-top"], ["src":"/img/bmwbike_200x200.jpg", "alt":"..."]), 
                    H5Div(["label-top shadow-sm ecom"], "Superbike"),
                    BS5CardBody(
                        H5Div(["clearfix mb-3"], 
                            H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                            H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                        H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                        H5Div(["text-center my-4"],  
                            BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                        H5Div(["clearfix mb-1"], 
                            H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                            H5Span(["float-end"], H5I(["fas fa-plus"])))
                    )
                )
            ),
            BS5Col(["col"],
                BS5Card(["h-100 shadow-sm ecom"],  
                    BS5CardImage(["ecom-img-top"], ["src":"/img/yellowbike_200x200.jpg", "alt":"..."]), 
                    H5Div(["label-top shadow-sm ecom"], "Superbike"),
                    BS5CardBody(
                        H5Div(["clearfix mb-3"], 
                            H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                            H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                        H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                        H5Div(["text-center my-4"],  
                            BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                        H5Div(["clearfix mb-1"], 
                            H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                            H5Span(["float-end"], H5I(["fas fa-plus"])))
                    )
                )
            ),
            BS5Col(["col"],
                BS5Card(["h-100 shadow-sm ecom"],  
                    BS5CardImage(["ecom-img-top"], ["src":"/img/hondarebel_200x200.jpg", "alt":"..."]), 
                    H5Div(["label-top shadow-sm ecom"], "Superbike"),
                    BS5CardBody(
                        H5Div(["clearfix mb-3"], 
                            H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                            H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                        H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                        H5Div(["text-center my-4"],  
                            BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                        H5Div(["clearfix mb-1"], 
                            H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                            H5Span(["float-end"], H5I(["fas fa-plus"])))
                    )
                )
            )
        )
), `H5Div(["container-fluid bg-trasparent my-4 p-3"], ["style":"position: relative;"], 
    BSRow(["row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3"], 
        BS5Col(["col"],
            BS5Card(["h-100 shadow-sm ecom"], 
                BS5CardImage(["ecom-img-top"], ["src":"/img/bluebike_200x200.jpg", "alt":"..."]), 
                H5Div(["label-top shadow-sm ecom"], "Superbike"),
                BS5CardBody(
                    H5Div(["clearfix mb-3"], 
                        H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                        H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                    H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                    H5Div(["text-center my-4"],  
                        BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                    H5Div(["clearfix mb-1"], 
                        H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                        H5Span(["float-end"], H5I(["fas fa-plus"])))
                )
            )
        ),
        BS5Col(["col"],
            BS5Card(["h-100 shadow-sm ecom"],  
                BS5CardImage(["ecom-img-top"], ["src":"/img/bmwbike_200x200.jpg", "alt":"..."]), 
                H5Div(["label-top shadow-sm ecom"], "Superbike"),
                BS5CardBody(
                    H5Div(["clearfix mb-3"], 
                        H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                        H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                    H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                    H5Div(["text-center my-4"],  
                        BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                    H5Div(["clearfix mb-1"], 
                        H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                        H5Span(["float-end"], H5I(["fas fa-plus"])))
                )
            )
        ),
        BS5Col(["col"],
            BS5Card(["h-100 shadow-sm ecom"],  
                BS5CardImage(["ecom-img-top"], ["src":"/img/yellowbike_200x200.jpg", "alt":"..."]), 
                H5Div(["label-top shadow-sm ecom"], "Superbike"),
                BS5CardBody(
                    H5Div(["clearfix mb-3"], 
                        H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                        H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                    H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                    H5Div(["text-center my-4"],  
                        BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                    H5Div(["clearfix mb-1"], 
                        H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                        H5Span(["float-end"], H5I(["fas fa-plus"])))
                )
            )
        ),
        BS5Col(["col"],
            BS5Card(["h-100 shadow-sm ecom"],  
                BS5CardImage(["ecom-img-top"], ["src":"/img/hondarebel_200x200.jpg", "alt":"..."]), 
                H5Div(["label-top shadow-sm ecom"], "Superbike"),
                BS5CardBody(
                    H5Div(["clearfix mb-3"], 
                        H5Span(["float-start badge rounded-pill bg-success"], "1354.00€"), 
                        H5Span(["float-end"], H5A(["small text-muted"], ["href":"#"], "Reviews"))),
                    H5H5(["card-title"], "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi."), 
                    H5Div(["text-center my-4"],  
                        BS5ButtonLink(["btn-warning"], ["href":"#"], "Check offer")),
                    H5Div(["clearfix mb-1"], 
                        H5Span(["float-start"], H5I(["far fa-question-circle"])), 
                        H5Span(["float-end"], H5I(["fas fa-plus"])))
                )
            )
        )
    )
)`, `<div class="container-fluid bg-trasparent my-4 p-3" style="position: relative;">
    <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
        <div class="col">
            <div class="card h-100 shadow-sm ecom">
                <img class="card-img-top ecom-img-top" alt="..." src="/img/bluebike_200x200.jpg">
                <div class="label-top shadow-sm ecom">Superbike</div>
                <div class="card-body">
                    <div class="clearfix mb-3">
                        <span class="float-start badge rounded-pill bg-success">1354.00€</span>
                        <span class="float-end"><a class="small text-muted" href="#">Reviews</a></span>
                    </div>
                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi.</h5>
                    <div class="text-center my-4">
                        <a class="btn btn-warning" href="#" role="button" type="button">Check offer</a>
                    </div>
                    <div class="clearfix mb-1">
                        <span class="float-start"><i class="far fa-question-circle"></i></span>
                        <span class="float-end"><i class="fas fa-plus"></i></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100 shadow-sm ecom">
                <img class="card-img-top ecom-img-top" alt="..." src="/img/bmwbike_200x200.jpg">
                <div class="label-top shadow-sm ecom">Superbike</div>
                <div class="card-body">
                    <div class="clearfix mb-3">
                        <span class="float-start badge rounded-pill bg-success">1354.00€</span>
                        <span class="float-end"><a class="small text-muted" href="#">Reviews</a></span>
                    </div>
                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi.</h5>
                    <div class="text-center my-4">
                        <a class="btn btn-warning" href="#" role="button" type="button">Check offer</a>
                    </div>
                    <div class="clearfix mb-1">
                        <span class="float-start"><i class="far fa-question-circle"></i></span>
                        <span class="float-end"><i class="fas fa-plus"></i></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100 shadow-sm ecom">
                <img class="card-img-top ecom-img-top" alt="..." src="/img/yellowbike_200x200.jpg">
                <div class="label-top shadow-sm ecom">Superbike</div>
                <div class="card-body">
                    <div class="clearfix mb-3">
                        <span class="float-start badge rounded-pill bg-success">1354.00€</span>
                        <span class="float-end"><a class="small text-muted" href="#">Reviews</a></span>
                    </div>
                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi.</h5>
                    <div class="text-center my-4">
                        <a class="btn btn-warning" href="#" role="button" type="button">Check offer</a>
                    </div>
                    <div class="clearfix mb-1">
                        <span class="float-start"><i class="far fa-question-circle"></i></span>
                        <span class="float-end"><i class="fas fa-plus"></i></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100 shadow-sm ecom">
                <img class="card-img-top ecom-img-top" alt="..." src="/img/hondarebel_200x200.jpg">
                <div class="label-top shadow-sm ecom">Superbike</div>
                <div class="card-body">
                    <div class="clearfix mb-3">
                        <span class="float-start badge rounded-pill bg-success">1354.00€</span>
                        <span class="float-end"><a class="small text-muted" href="#">Reviews</a></span>
                    </div>
                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi.</h5>
                    <div class="text-center my-4">
                        <a class="btn btn-warning" href="#" role="button" type="button">Check offer</a>
                    </div>
                    <div class="clearfix mb-1">
                        <span class="float-start"><i class="far fa-question-circle"></i></span>
                        <span class="float-end"><i class="fas fa-plus"></i></span>
                    </div>
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
