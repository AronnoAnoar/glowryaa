(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/account_report"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
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
//
//
//
//
//
//
//
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    var _this = this;

    this.c_date();
    this.l_date();
    setTimeout(function () {
      _this.reportList();
    }, 100); // this.getResults();
  },
  data: function data() {
    return {
      credits: {},
      loading: true,
      item: 20,
      search: "",
      //for date picker
      options: {
        format: "YYYY-MM-DD",
        useCurrent: false
      },
      start_date: "",
      end_date: "",
      report: ""
    };
  },
  methods: {
    reportList: function reportList() {
      var _this2 = this;

      this.loading = true;
      axios.get("/account/monlthly/report", {
        params: {
          item: this.item,
          start_date: this.start_date,
          end_date: this.end_date
        }
      }).then(function (resp) {
        console.log(resp);
        _this2.report = resp.data; //   this.credits = resp.data;

        _this2.loading = false;
      })["catch"](function (error) {
        console.log(error);
      });
    },
    //method initial for  get current date
    c_date: function c_date() {
      //current date
      var d = new Date(); //current mount
      //current day

      console.log(d.getMonth());
      console.log("get month ...........");
      var month = d.getMonth() + 1;
      var day = d.getDate();
      var output = d.getFullYear() + "-" + (("" + month).length < 2 ? "0" : "") + month + "-" + (("" + day).length < 2 ? "0" : "") + day;
      console.log(output);
      this.end_date = output;
    },
    l_date: function l_date() {
      //current date
      var d = new Date(); //current mount
      //current day

      console.log(d.getMonth());
      console.log("get month ...........");
      var month = d.getMonth();
      var day = d.getDate();
      var output = d.getFullYear() + "-" + (("" + month).length < 2 ? "0" : "") + month + "-" + (("" + day).length < 2 ? "0" : "") + day;
      console.log(output);
      this.start_date = output;
    },
    totalAmount: function totalAmount() {
      var total = 0;
      this.credits.data.forEach(function (element) {
        total += parseInt(element.amount);
      });
      return total;
    },
    total_debit: function total_debit() {
      var debits = this.report.debits;
      var total = 0;
      Object.keys(debits).forEach(function (key) {
        total += debits[key]; // console.log();
      });
      return parseFloat(total);
    },
    total_credit: function total_credit() {
      var credits = this.report.credits;
      var total = 0;
      Object.keys(credits).forEach(function (key) {
        total += credits[key]; // console.log();
      });
      return parseFloat(total);
    }
  },
  watch: {
    start_date: function start_date(value) {
      this.reportList();
    },
    end_date: function end_date(value) {
      this.reportList();
    }
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true& ***!
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
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row justify-content-center" }, [
              _c(
                "div",
                { staticClass: "col-lg-3" },
                [
                  _c("label", { attrs: { for: "" } }, [_vm._v("Start Date")]),
                  _vm._v(" "),
                  _c("date-picker", {
                    attrs: {
                      autocomplete: "off",
                      config: _vm.options,
                      placeholder: "start_date"
                    },
                    on: { change: _vm.reportList },
                    model: {
                      value: _vm.start_date,
                      callback: function($$v) {
                        _vm.start_date = $$v
                      },
                      expression: "start_date"
                    }
                  })
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "col-lg-3" },
                [
                  _c("label", { attrs: { for: "" } }, [_vm._v("End Date")]),
                  _vm._v(" "),
                  _c("date-picker", {
                    attrs: {
                      autocomplete: "off",
                      config: _vm.options,
                      placeholder: "end_date"
                    },
                    on: { change: _vm.reportList },
                    model: {
                      value: _vm.end_date,
                      callback: function($$v) {
                        _vm.end_date = $$v
                      },
                      expression: "end_date"
                    }
                  })
                ],
                1
              ),
              _vm._v(" "),
              !_vm.loading
                ? _c(
                    "div",
                    {
                      staticClass: "col-lg-6",
                      staticStyle: {
                        background: "#fff",
                        padding: "20px",
                        "border-radius": "5px"
                      }
                    },
                    [
                      _c("div", [
                        _c("h4", [
                          _c("b", [
                            _vm._v("Total Credit=" + _vm._s(_vm.total_credit()))
                          ])
                        ]),
                        _vm._v(" "),
                        _c("h4", [
                          _c("b", [
                            _vm._v("Total Debit=" + _vm._s(_vm.total_debit()))
                          ])
                        ]),
                        _vm._v(" "),
                        _c("hr"),
                        _vm._v(" "),
                        _c(
                          "h4",
                          {
                            staticStyle: {
                              "margin-top": "-18px",
                              "margin-left": "85px"
                            }
                          },
                          [
                            _c("b", [
                              _vm._v(
                                "=" +
                                  _vm._s(_vm.total_credit() - _vm.total_debit())
                              )
                            ])
                          ]
                        )
                      ])
                    ]
                  )
                : _vm._e()
            ]),
            _vm._v(" "),
            _c("br"),
            _vm._v(" "),
            _c("div", { staticClass: "row justify-content-center" }, [
              _c("div", { staticClass: "col-lg-6" }, [
                _c("div", { staticClass: "box box-primary" }, [
                  _vm._m(0),
                  _vm._v(" "),
                  _c("div", { staticClass: "box-body" }, [
                    _c(
                      "table",
                      {
                        staticClass:
                          "table table-bordered table-responsive table-centered table-striped table-hover"
                      },
                      [
                        _vm._m(1),
                        _vm._v(" "),
                        _c(
                          "tbody",
                          [
                            _vm.loading
                              ? _c("h1", { staticClass: "text-center" }, [
                                  _c("i", {
                                    staticClass: "fa fa-spin fa-spinner"
                                  })
                                ])
                              : _vm._l(_vm.report.credits, function(
                                  credit,
                                  dix
                                ) {
                                  return _c("tr", { key: dix }, [
                                    _c("td", [
                                      _vm._v(
                                        "\n                        " +
                                          _vm._s(dix) +
                                          "\n                      "
                                      )
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(
                                        "\n                        " +
                                          _vm._s(credit) +
                                          "\n                      "
                                      )
                                    ])
                                  ])
                                }),
                            _vm._v(" "),
                            !_vm.loading && Object.keys(_vm.report).length > 0
                              ? _c("tr", [
                                  _c("td", { attrs: { colspan: "1" } }),
                                  _vm._v(" "),
                                  _c("td", [
                                    _c("b", [
                                      _vm._v("= " + _vm._s(_vm.total_credit()))
                                    ])
                                  ])
                                ])
                              : _vm._e()
                          ],
                          2
                        )
                      ]
                    )
                  ])
                ])
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "col-lg-6" }, [
                _c("div", { staticClass: "box box-primary" }, [
                  _c("div", { staticClass: "box-body" }, [
                    _vm._m(2),
                    _vm._v(" "),
                    _c("table", { staticClass: "table" }, [
                      _vm._m(3),
                      _vm._v(" "),
                      _c(
                        "tbody",
                        [
                          _vm.loading
                            ? _c("h1", { staticClass: "text-center" }, [
                                _c("i", {
                                  staticClass: "fa fa-spin fa-spinner"
                                })
                              ])
                            : _vm._l(_vm.report.debits, function(debit, dix) {
                                return _c("tr", { key: dix }, [
                                  _c("td", [
                                    _vm._v(
                                      "\n                        " +
                                        _vm._s(dix) +
                                        "\n                      "
                                    )
                                  ]),
                                  _vm._v(" "),
                                  _c("td", [
                                    _vm._v(
                                      "\n                        " +
                                        _vm._s(debit) +
                                        "\n                      "
                                    )
                                  ])
                                ])
                              }),
                          _vm._v(" "),
                          !_vm.loading && Object.keys(_vm.report).length > 0
                            ? _c("tr", [
                                _c("td", { attrs: { colspan: "1" } }),
                                _vm._v(" "),
                                _c("td", [
                                  _c("b", [
                                    _vm._v("= " + _vm._s(_vm.total_debit()))
                                  ])
                                ])
                              ])
                            : _vm._e()
                        ],
                        2
                      )
                    ])
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
    return _c("div", { staticClass: "box-header" }, [
      _c("h5", [_vm._v("CREDIT")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Purpose")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Amount")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header" }, [
      _c("h5", [_vm._v("DEBIT")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Purpose")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Amount")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/credit/Report.vue":
/*!*****************************************************************!*\
  !*** ./resources/microadmin/components/admin/credit/Report.vue ***!
  \*****************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Report.vue?vue&type=template&id=99acd326&scoped=true& */ "./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true&");
/* harmony import */ var _Report_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Report.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _Report_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "99acd326",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/credit/Report.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js&":
/*!******************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Report_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Report.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/credit/Report.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Report_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true&":
/*!************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true& ***!
  \************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Report.vue?vue&type=template&id=99acd326&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/credit/Report.vue?vue&type=template&id=99acd326&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Report_vue_vue_type_template_id_99acd326_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);