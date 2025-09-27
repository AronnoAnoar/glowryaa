(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/benefits"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Index__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../Index */ "./resources/microadmin/components/admin/Index.vue");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
  components: {
    Index: _Index__WEBPACK_IMPORTED_MODULE_0__["default"]
  },
  created: function created() {
    this.benefit();
  },
  data: function data() {
    return {
      benefits: '',
      search: ''
    };
  },
  methods: {
    benefit: function benefit() {
      var _this = this;

      axios.get('/api/list/benefit/' + this.$route.params.slug).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this.benefits = resp.data.benefits.data;
        }
      })["catch"](function (error) {
        _this.$toastr.e(error.response.data.message);
      });
    },
    status: function status(benefit) {
      var _this2 = this;

      axios.get('/api/benefit/status/' + benefit.id).then(function (resp) {
        //   console.log(resp)
        if (resp.data.success == true) {
          _this2.benefit();

          _this2.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 4000
          });
        }
      })["catch"](function (error) {
        _this2.$toastr.e(error.response.data.message);
      });
    },
    searchResult: function searchResult() {
      var _this3 = this;

      if (this.search.length > 3) {
        axios.get('/api/search/benefit/' + this.search).then(function (resp) {
          console.log(resp);

          if (resp.data.status == 'SUCCESS') {
            _this3.benefits = resp.data.benefits;
          }
        })["catch"](function (error) {
          _this3.$toastr.e(error.response.data.message);
        });
      } else {
        this.benefit();
      }
    },
    destroy: function destroy(benefit) {
      var _this4 = this;

      Swal.fire({
        title: 'Are you sure?',
        text: 'Delete this benefit!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then(function (result) {
        if (result.value) {
          axios.get('/api/delete/benefit/' + benefit.id).then(function (resp) {
            //console.log(resp)
            if (resp.data.success == true) {
              _this4.benefit();

              _this4.$toasted.show(resp.data.message, {
                position: 'top-center',
                type: 'success',
                duration: 4000
              });
            }
          })["catch"](function (error) {
            _this4.$toastr.e(error.response.data.message);
          });
        } else {
          _this4.$toasted.show('Ok ! no action here', {
            position: 'top-center',
            type: 'info',
            duration: 3000
          });
        }
      });
    } // getPagination(page = 1) {
    //     axios.get('/api/list/benefit?page=' + page)
    //     .then(response => {
    //         this.benefits = response.data.benefits;
    //     });
    // }

  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    [
      _c("admin-main"),
      _vm._v(" "),
      _c("div", { staticClass: "content-wrapper" }, [
        _c("section", { staticClass: "content-header" }, [
          _c(
            "h1",
            [
              _c(
                "router-link",
                {
                  staticClass: "btn btn-primary",
                  attrs: {
                    to: {
                      name: "benefit_add",
                      params: { slug: _vm.$route.params.slug }
                    }
                  }
                },
                [_c("i", { staticClass: "fa fa-plus" })]
              )
            ],
            1
          ),
          _vm._v(" "),
          _vm._m(0)
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row justify-content-center" }, [
              _c("div", { staticClass: "col-lg-12 col-lg-12" }, [
                _c("div", { staticClass: "box box-primary" }, [
                  _vm._m(1),
                  _vm._v(" "),
                  _c("div", { staticClass: "box-body" }, [
                    _c(
                      "table",
                      {
                        staticClass:
                          "table table-centered table-hover table-striped table-bordered"
                      },
                      [
                        _vm._m(2),
                        _vm._v(" "),
                        _c(
                          "tbody",
                          _vm._l(_vm.benefits, function(benefit, index) {
                            return _c("tr", { key: index }, [
                              _c("td", { attrs: { scope: "row" } }, [
                                _vm._v(_vm._s(index + 1))
                              ]),
                              _vm._v(" "),
                              _c("td", [
                                _vm._v(_vm._s(benefit.landing_page.page_name))
                              ]),
                              _vm._v(" "),
                              _c("td", [_vm._v(_vm._s(benefit.title))]),
                              _vm._v(" "),
                              _c("td", [
                                _vm._v(
                                  "\n                                                " +
                                    _vm._s(
                                      benefit.description.substring(0, 120)
                                    )
                                ),
                                benefit.description.length > 120
                                  ? _c("span", [
                                      _vm._v(
                                        "\n                                                    ..."
                                      )
                                    ])
                                  : _vm._e()
                              ]),
                              _vm._v(" "),
                              _c("td", [
                                _vm._v(
                                  "\n                                                " +
                                    _vm._s(benefit.position) +
                                    "\n                                            "
                                )
                              ]),
                              _vm._v(" "),
                              _c("td", [
                                benefit.status == 1
                                  ? _c("span", { staticClass: "badge" }, [
                                      _vm._v("Active")
                                    ])
                                  : _c("span", { staticClass: "badge" }, [
                                      _vm._v("De-active")
                                    ])
                              ]),
                              _vm._v(" "),
                              _c(
                                "td",
                                [
                                  _c(
                                    "router-link",
                                    {
                                      staticClass: "btn btn-success btn-sm",
                                      attrs: {
                                        to: {
                                          name: "benefit_edit",
                                          params: {
                                            slug: _vm.$route.params.slug,
                                            benefitId: benefit.id
                                          }
                                        }
                                      }
                                    },
                                    [_c("i", { staticClass: "fa fa-edit" })]
                                  ),
                                  _vm._v(" "),
                                  benefit.status == 1
                                    ? _c(
                                        "a",
                                        {
                                          staticClass: "btn btn-warning",
                                          attrs: { title: "De-active" },
                                          on: {
                                            click: function($event) {
                                              return _vm.status(benefit)
                                            }
                                          }
                                        },
                                        [_c("i", { staticClass: "fa fa-ban" })]
                                      )
                                    : _c(
                                        "a",
                                        {
                                          staticClass: "btn btn-primary",
                                          attrs: { title: "active" },
                                          on: {
                                            click: function($event) {
                                              return _vm.status(benefit)
                                            }
                                          }
                                        },
                                        [
                                          _c("i", {
                                            staticClass: "fa fa-check"
                                          })
                                        ]
                                      ),
                                  _vm._v(" "),
                                  _c(
                                    "a",
                                    {
                                      staticClass: "btn btn-danger",
                                      on: {
                                        click: function($event) {
                                          return _vm.destroy(benefit)
                                        }
                                      }
                                    },
                                    [_c("i", { staticClass: "fa fa-trash" })]
                                  )
                                ],
                                1
                              )
                            ])
                          }),
                          0
                        )
                      ]
                    )
                  ])
                ])
              ])
            ])
          ])
        ])
      ])
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("ol", { staticClass: "breadcrumb" }, [
      _c("li", [
        _c("a", { attrs: { href: "#" } }, [
          _c("i", { staticClass: "fa fa-dashboard" }),
          _vm._v("Dashboard")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("Benefit")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("div", { staticClass: "row" }, [
        _c("div", { staticClass: "col-lg-6" }, [
          _c("h3", { staticClass: "box-title" }, [_vm._v("Benefit table")])
        ])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("#")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Page Name")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Title")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Description")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Position")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Status")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Action")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/Index.vue":
/*!*********************************************************!*\
  !*** ./resources/microadmin/components/admin/Index.vue ***!
  \*********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");
var render, staticRenderFns
var script = {}


/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_0__["default"])(
  script,
  render,
  staticRenderFns,
  false,
  null,
  null,
  null
  
)

component.options.__file = "resources/microadmin/components/admin/Index.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/benefit/Index.vue":
/*!*****************************************************************!*\
  !*** ./resources/microadmin/components/admin/benefit/Index.vue ***!
  \*****************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Index.vue?vue&type=template&id=3100d67d&scoped=true& */ "./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true&");
/* harmony import */ var _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Index.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "3100d67d",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/benefit/Index.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js&":
/*!******************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Index.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true&":
/*!************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true& ***!
  \************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Index.vue?vue&type=template&id=3100d67d&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/benefit/Index.vue?vue&type=template&id=3100d67d&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_3100d67d_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);