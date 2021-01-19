module uim.bootstrap;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.web;

// packages
public import uim.bootstrap.bs4;
public import uim.bootstrap.bs5;

auto bs5Breadcrumbs(string[] links, string[] titles, string activeTitle) {
  string bcrumbs;
  foreach(index, link; links) bcrumbs ~= BS5BreadcrumbItem.link(["href":link], titles[index]).toString;
  bcrumbs ~= BS5BreadcrumbItem(["active"], activeTitle).toString;  

  return 
    H5Div(["container-fluid"], ["style":"background-color: #ddd; margin-top:10px;"],  
      BS5Row(
        BS5Container(["pt-1"]).row( 
          H5Div(["col-sm-12", "col-md-8", "col-lg-10", "ml-auto", "mr-auto"],                
            H5Nav(["aria-label":"breadcrumb", "role":"navigation"], 
              H5Ol(["breadcrumb", "pl-0", "my-1"], ["style":"background-color: #ddd;margin-top:10px;"], bcrumbs))))));
} 

string demoBs5Page(DH5Obj title, DH5Obj breadcrumbs, DH5Obj leftContent, DH5Obj mainContent, DH5Obj rightContent) {
  return 
BS5Navbar(["navbar-expand-lg bg-info fixed-top"], 
  BS5Container(
    BS5NavbarBrand(["href":"/"], H5Img(["height":"40", "src":"/img/logo.png", "alt":"UI Manufaktur"])),
    BS5Button(["navbar-toggler"], ["data-toggle":"collapse", "data-target":"#navbarNavDropdown", "aria-controls":"navbarNavDropdown", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
      H5Span(["sr-only"], "Toggle navigation"),
      H5Span(["navbar-toggler-icon"]),
      H5Span(["navbar-toggler-icon"]),
      H5Span(["navbar-toggler-icon"])),
      BS5NavbarNav(
        BS5NavItem(["dropdown", "text-light"], "Demo Bootstrap 5 using uim-bootstrap")))).toString~
H5Div(["container-fluid", "bg-light"], ["style":"margin-top:60px;margin-right:0px;margin-left:0px;"], breadcrumbs).toString~
H5Main( 
  BS5Container.row(
    title,
    H5Hr,    
    leftContent,
    H5Div(["col-12", "col-lg-8"], mainContent),
      rightContent
  )).toString;
}
