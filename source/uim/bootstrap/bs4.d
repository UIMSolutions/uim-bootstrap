module uim.bootstrap.bs4;

import uim.bootstrap;

class DBS4 : DH5 {
    this() { super(); }

    mixin(BS4Def!"alert");
    unittest { 
        assert(BS4.alert == "<alert></alert>");
    }

    mixin(BS4Def!"badge");
    unittest { 
        assert(BS4.badge == "<badge></badge>");
    }

    mixin(BS4Def!"breadcrumb");
    unittest { 
        assert(BS4.breadcrumb == "<breadcrumb></breadcrumb>");
    }

    mixin(BS4Def!"button");
    unittest { 
        assert(BS4.button == "<button></button>");
    }

    mixin(BS4Def!"buttongroup");
    unittest { 
        assert(BS4.buttongroup == "<buttongroup></buttongroup>");
    }

    mixin(BS4Def!"card");
    unittest { 
        assert(BS4.card == "<card></card>");
    }

    mixin(BS4Def!"carousel");
    unittest { 
        assert(BS4.carousel == "<carousel></carousel>");
    }

    mixin(BS4Def!"dropdown");
    unittest { 
        assert(BS4.dropdown == "<dropdown></dropdown>");
    }

    mixin(BS4Def!"form");
    unittest { 
        assert(BS4.form == "<form></form>");
    }

    mixin(BS4Def!"formgroup");
    unittest { 
        assert(BS4.formgroup == "<formgroup></formgroup>");
    }

    mixin(BS4Def!"inputGroup");
    unittest { 
        assert(BS4.inputGroup == "<inputGroup></inputGroup>");
    }

    mixin(BS4Def!"jumbotron");
    unittest { 
        assert(BS4.jumbotron == "<jumbotron></jumbotron>");
    }

    mixin(BS4Def!"listGroup");
    unittest { 
        assert(BS4.listGroup == "<listGroup></listGroup>");
    }

    mixin(BS4Def!"modal");
    unittest { 
        assert(BS4.modal == "<modal></modal>");
    }

    mixin(BS4Def!"ModalDialog");
    unittest { 
        assert(BS4.modalDialog == "<modalDialog></modalDialog>");
    }

    mixin(BS4Def!"nav");
    unittest { 
        assert(BS4.nav == "<nav></nav>");
    }

    mixin(BS4Def!"navbar");
    unittest { 
        assert(BS4.navbar == "<navbar></navbar>");
    }

    mixin(BS4Def!"pagination");
    unittest { 
        assert(BS4.pagination == "<pagination></pagination>");
    }

    mixin(BS4Def!"progress");
    unittest { 
        assert(BS4.progress == "<progress></progress>");
    }

    mixin(BS4Def!"progressbar");
    unittest { 
        assert(BS4.progressbar == "<progressbar></progressbar>");
    }
}
auto BS4() { return new DBS4(); }

template BS4Def(string name) {	
    const char[] leftName = (name.length == 1 ? name.toLower : name.toLower[0]~name[1..$]);
    const char[] rightName = (name.length == 1 ? name.capitalize : name.capitalize[0]~name[1..$]);

	const char[] BS4Def = "
O "~leftName~"(this O)(string content) { this._objs ~=  BS4"~rightName~"(content); return cast(O)this; }
O "~leftName~"(this O)(DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(content); return cast(O)this; }
O "~leftName~"(this O)(DH5 content) { this._objs ~=  BS4"~rightName~"(content); return cast(O)this; }

O "~leftName~"(this O)(string id, string content) { this._objs ~=  BS4"~rightName~"(id, content); return cast(O)this; }
O "~leftName~"(this O)(string id, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(id, content); return cast(O)this; }
O "~leftName~"(this O)(string id, DH5 content) { this._objs ~=  BS4"~rightName~"(id, content); return cast(O)this; }

O "~leftName~"(this O)(string id, string[] classes) { this._objs ~=  BS4"~rightName~"(id, classes); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, string content) { this._objs ~=  BS4"~rightName~"(id, classes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(id, classes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, DH5 content) { this._objs ~=  BS4"~rightName~"(id, classes, content); return cast(O)this; }

O "~leftName~"(this O)(string[] classes) { this._objs ~=  BS4"~rightName~"(classes); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, string content) { this._objs ~=  BS4"~rightName~"(classes, content); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(classes, content); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, DH5 content) { this._objs ~=  BS4"~rightName~"(classes, content); return cast(O)this; }

O "~leftName~"(this O)(string[string] attributes) { this._objs ~=  BS4"~rightName~"(attributes); return cast(O)this; }
O "~leftName~"(this O)(string[string] attributes, string content) { this._objs ~=  BS4"~rightName~"(attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string[string] attributes, DH5 content) { this._objs ~=  BS4"~rightName~"(attributes, content); return cast(O)this; }

O "~leftName~"(this O)(string id, string[string] attributes) { this._objs ~=  BS4"~rightName~"(id, attributes); return cast(O)this; }
O "~leftName~"(this O)(string id, string[string] attributes, string content) { this._objs ~=  BS4"~rightName~"(id, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(id, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[string] attributes, DH5 content) { this._objs ~=  BS4"~rightName~"(id, attributes, content); return cast(O)this; }

O "~leftName~"(this O)(string id, string[] classes, string[string] attributes) { this._objs ~=  BS4"~rightName~"(id, classes, attributes); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, string[string] attributes, string content) { this._objs ~=  BS4"~rightName~"(id, classes, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(id, classes, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string id, string[] classes, string[string] attributes, DH5 content) { this._objs ~=  BS4"~rightName~"(id, classes, attributes, content); return cast(O)this; }

O "~leftName~"(this O)(string[] classes, string[string] attributes) { this._objs ~=  BS4"~rightName~"(classes, attributes); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, string[string] attributes, string content) { this._objs ~=  BS4"~rightName~"(classes, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4"~rightName~"(classes, attributes, content); return cast(O)this; }
O "~leftName~"(this O)(string[] classes, string[string] attributes, DH5 content) { this._objs ~=  BS4"~rightName~"(classes, attributes, content); return cast(O)this; }
 ";
}