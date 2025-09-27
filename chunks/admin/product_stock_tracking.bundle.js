(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/product_stock_tracking"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************************************************************************************/
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
  data: function data() {
    return {
      loading: true,
      start_date: "",
      end_date: "",
      product_code: "",
      reports: "",
      product: "",
      total_stocked: 0,
      total_stocked_amount: 0,
      total_ordered: 0,
      total_ordered_amount: 0,
      total_sold: 0,
      total_sold_amount: 0,
      base_url: this.$store.state.image_base_link,
      //date picker options ..........  
      options: {
        format: "YYYY-MM-DD",
        useCurrent: false
      }
    };
  },
  methods: {
    filter: function filter() {
      var _this = this;

      if (this.product_code.length < 3) {
        alert("product code required ");
        return;
      }

      this.$Progress.start();
      axios.get("/api/product/stock/tracking/report", {
        params: {
          product_code: this.product_code,
          start_date: this.start_date,
          end_date: this.end_date
        }
      }).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this.reports = resp.data.reports;
          _this.product = resp.data.product; //calculate purchase total

          var p_item = 0;
          var p_total = 0;

          if (_this.reports.purchase_records.length > 0) {
            _this.reports.purchase_records.forEach(function (item) {
              p_item += parseInt(item.stock);
              p_total += parseInt(item.stock) * parseInt(item.price);
            });
          }

          _this.total_stocked = p_item;
          _this.total_stocked_amount = p_total; //calculate order total

          var o_item = 0;
          var o_total = 0;

          if (_this.reports.order_records.length > 0) {
            _this.reports.order_records.forEach(function (item) {
              o_item += parseInt(item.quantity);
              o_total += parseInt(item.quantity) * parseInt(item.price);
            });
          }

          _this.total_ordered = o_item;
          _this.total_ordered_amount = o_total; //calculate sale total

          var s_item = 0;
          var s_total = 0;

          if (_this.reports.sale_records.length > 0) {
            _this.reports.sale_records.forEach(function (item) {
              s_item += parseInt(item.qty);
              s_total += parseInt(item.qty) * parseInt(item.price);
            });
          }

          _this.total_sold = s_item;
          _this.total_sold_amount = s_total;
        }

        _this.$Progress.finish();
      })["catch"](function (error) {
        _this.$toasted.show(error.response.data.message, {
          type: "error",
          position: "top-center",
          duration: 5000
        });
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.orders-heading {\r\n  text-align: center;\r\n  text-transform: uppercase;\r\n  border-bottom: 2px solid #000;\r\n  margin-bottom: 10px;\n}\n.box-primary {\r\n  overflow-x: scroll;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./productStockTracking.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c&":
/*!********************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c& ***!
  \********************************************************************************************************************************************************************************************************************************************/
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
        _vm._m(0),
        _vm._v(" "),
        _c("br"),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row" }, [
              _c("div", { staticClass: "col-lg-11 col-md-11" }, [
                _c("div", { staticClass: "box box-primary" }, [
                  _c(
                    "div",
                    { staticClass: "box-header with-border text-center" },
                    [
                      _c("h3", { staticClass: "box-title" }, [
                        _vm._v("Product Stock Tracking & Profit Report")
                      ]),
                      _vm._v(" "),
                      _c(
                        "div",
                        {
                          staticClass: "row",
                          staticStyle: { margin: "20px 0px" }
                        },
                        [
                          _c("div", { staticClass: "col-lg-4" }, [
                            _c("div", { staticClass: "form-group" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.product_code,
                                    expression: "product_code"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  required: "",
                                  type: "text",
                                  placeholder: "type product code "
                                },
                                domProps: { value: _vm.product_code },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.product_code = $event.target.value
                                  }
                                }
                              })
                            ])
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-6" }, [
                            _c("div", { staticClass: "row" }, [
                              _c(
                                "div",
                                { staticClass: "col-lg-5" },
                                [
                                  _c("date-picker", {
                                    attrs: {
                                      placeholder: "start-date",
                                      config: _vm.options
                                    },
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
                                {
                                  staticClass: "col-lg-5",
                                  staticStyle: { "margin-left": "-20px" }
                                },
                                [
                                  _c("date-picker", {
                                    attrs: {
                                      placeholder: "end-date",
                                      config: _vm.options
                                    },
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
                              _c("div", { staticClass: "col-lg-2" }, [
                                _c(
                                  "button",
                                  {
                                    staticClass: "btn btn-primary",
                                    attrs: { type: "submit " },
                                    on: {
                                      click: function($event) {
                                        $event.preventDefault()
                                        return _vm.filter($event)
                                      }
                                    }
                                  },
                                  [
                                    _c("i", { staticClass: "fa fa-filter" }),
                                    _vm._v(
                                      " Filter Stock\n                        "
                                    )
                                  ]
                                )
                              ])
                            ])
                          ])
                        ]
                      )
                    ]
                  ),
                  _vm._v(" "),
                  _c("div", { staticClass: "box-body" }, [
                    _c(
                      "div",
                      {
                        staticClass: "row",
                        staticStyle: { "margin-bottom": "20px" }
                      },
                      [
                        _c("div", { staticClass: "col-md-12 text-center" }, [
                          _c("h4", { staticClass: "table_heading" }, [
                            _vm._v("Purchase Records")
                          ]),
                          _vm._v(" "),
                          _c(
                            "table",
                            {
                              staticClass:
                                "\n                        table table-bordered table-striped table-centered\n                        text-center\n                        table-hover\n                      "
                            },
                            [
                              _vm._m(1),
                              _vm._v(" "),
                              _c(
                                "tbody",
                                _vm._l(_vm.reports.purchase_records, function(
                                  item
                                ) {
                                  return _c("tr", { key: item.id }, [
                                    _c("td", [
                                      _vm._v(_vm._s(item.purchase_date))
                                    ]),
                                    _vm._v(" "),
                                    _c(
                                      "td",
                                      [
                                        _c(
                                          "router-link",
                                          {
                                            attrs: {
                                              to: {
                                                name: "purchaseView",
                                                params: { id: item.id }
                                              }
                                            }
                                          },
                                          [
                                            _vm._v(
                                              "\n                              " +
                                                _vm._s(item.invoice_no)
                                            )
                                          ]
                                        )
                                      ],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.price))]),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.stock))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(
                                        "\n                            " +
                                          _vm._s(
                                            parseInt(item.price) *
                                              parseInt(item.stock)
                                          ) +
                                          "\n                          "
                                      )
                                    ])
                                  ])
                                }),
                                0
                              )
                            ]
                          )
                        ])
                      ]
                    ),
                    _vm._v(" "),
                    _c(
                      "div",
                      {
                        staticClass: "row",
                        staticStyle: { "margin-bottom": "20px" }
                      },
                      [
                        _c("div", { staticClass: "col-md-6 text-center" }, [
                          _c("h4", { staticClass: "table_heading" }, [
                            _vm._v("Order Records")
                          ]),
                          _vm._v(" "),
                          _c(
                            "table",
                            {
                              staticClass:
                                "\n                        table table-bordered table-striped table-centered\n                        text-center\n                        table-hover\n                      "
                            },
                            [
                              _vm._m(2),
                              _vm._v(" "),
                              _c(
                                "tbody",
                                _vm._l(_vm.reports.order_records, function(
                                  item
                                ) {
                                  return _c("tr", { key: item.id }, [
                                    _c("td", [_vm._v(_vm._s(item.created_at))]),
                                    _vm._v(" "),
                                    _c(
                                      "td",
                                      [
                                        _c(
                                          "router-link",
                                          {
                                            attrs: {
                                              to: {
                                                name: "viewOrder",
                                                params: { id: item.id }
                                              }
                                            }
                                          },
                                          [_vm._v(_vm._s(item.invoice_no))]
                                        )
                                      ],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.price))]),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.quantity))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(
                                        "\n                            " +
                                          _vm._s(
                                            parseInt(item.price) *
                                              parseInt(item.quantity)
                                          ) +
                                          "\n                          "
                                      )
                                    ])
                                  ])
                                }),
                                0
                              )
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-md-6 text-center" }, [
                          _c("h4", { staticClass: "table_heading" }, [
                            _vm._v("Sale Records")
                          ]),
                          _vm._v(" "),
                          _c(
                            "table",
                            {
                              staticClass:
                                "\n                        table table-bordered table-striped table-centered\n                        text-center\n                        table-hover\n                      "
                            },
                            [
                              _vm._m(3),
                              _vm._v(" "),
                              _c(
                                "tbody",
                                _vm._l(_vm.reports.sale_records, function(
                                  item
                                ) {
                                  return _c("tr", { key: item.id }, [
                                    _c("td", [_vm._v(_vm._s(item.created_at))]),
                                    _vm._v(" "),
                                    _c(
                                      "td",
                                      [
                                        _c(
                                          "router-link",
                                          {
                                            attrs: {
                                              to: {
                                                name: "ViewSale",
                                                params: { id: item.id }
                                              }
                                            }
                                          },
                                          [
                                            _vm._v(
                                              _vm._s(item.invoice_no) +
                                                "\n                            "
                                            )
                                          ]
                                        )
                                      ],
                                      1
                                    ),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.price))]),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(item.qty))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(
                                        "\n                            " +
                                          _vm._s(
                                            parseInt(item.price) *
                                              parseInt(item.qty)
                                          ) +
                                          "\n                          "
                                      )
                                    ])
                                  ])
                                }),
                                0
                              )
                            ]
                          )
                        ])
                      ]
                    ),
                    _vm._v(" "),
                    _vm.reports
                      ? _c(
                          "div",
                          {
                            staticClass: "row",
                            staticStyle: { "margin-bottom": "20px" }
                          },
                          [
                            _c(
                              "div",
                              { staticClass: "col-md-12 text-center" },
                              [
                                _c("h4", { staticClass: "table_heading" }, [
                                  _vm._v("Summary")
                                ]),
                                _vm._v(" "),
                                _c(
                                  "table",
                                  {
                                    staticClass:
                                      "\n                        table\n                        table-bordered\n                        table-striped\n                        table-centered\n                        table-hover\n                        text-center\n                      "
                                  },
                                  [
                                    _vm._m(4),
                                    _vm._v(" "),
                                    _c("tbody", [
                                      _c("tr", [
                                        _c("td", [
                                          _c(
                                            "div",
                                            { staticClass: "text-left" },
                                            [
                                              _c("img", {
                                                attrs: {
                                                  width: "120px",
                                                  height: "120px",
                                                  src:
                                                    _vm.base_url +
                                                    _vm.product.thumbnail_img
                                                }
                                              }),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Name: " +
                                                    _vm._s(_vm.product.name)
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Code: " +
                                                    _vm._s(
                                                      _vm.product.product_code
                                                    )
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Current Stock : " +
                                                    _vm._s(_vm.product.stock)
                                                )
                                              ])
                                            ]
                                          )
                                        ]),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c(
                                            "div",
                                            { staticClass: "text-left" },
                                            [
                                              _c("p", [
                                                _vm._v(
                                                  "Total Stocked : " +
                                                    _vm._s(_vm.total_stocked)
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Total Amount : " +
                                                    _vm._s(
                                                      _vm.total_stocked_amount
                                                    )
                                                )
                                              ])
                                            ]
                                          )
                                        ]),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c(
                                            "div",
                                            { staticClass: "text-left" },
                                            [
                                              _c("p", [
                                                _vm._v(
                                                  "Total Ordered : " +
                                                    _vm._s(_vm.total_ordered)
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Total Amount : " +
                                                    _vm._s(
                                                      _vm.total_ordered_amount
                                                    )
                                                )
                                              ])
                                            ]
                                          )
                                        ]),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c(
                                            "div",
                                            { staticClass: "text-left" },
                                            [
                                              _c("p", [
                                                _vm._v(
                                                  "Total Sold : " +
                                                    _vm._s(_vm.total_sold)
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "Total Amount : " +
                                                    _vm._s(
                                                      _vm.total_sold_amount
                                                    )
                                                )
                                              ])
                                            ]
                                          )
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("tr", [
                                        _c("td", { attrs: { colspan: "2" } }),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c(
                                            "div",
                                            { staticClass: "text-left" },
                                            [
                                              _c("p", [
                                                _vm._v(
                                                  "\n                                In Total Sold (Order + Sale) :\n                                " +
                                                    _vm._s(
                                                      parseInt(
                                                        _vm.total_ordered
                                                      ) +
                                                        parseInt(_vm.total_sold)
                                                    ) +
                                                    "\n                              "
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "\n                                In Total Amount (Order + Sale) :\n                                " +
                                                    _vm._s(
                                                      parseInt(
                                                        _vm.total_ordered_amount
                                                      ) +
                                                        parseInt(
                                                          _vm.total_sold_amount
                                                        )
                                                    ) +
                                                    "\n                              "
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "\n                                Profit = " +
                                                    _vm._s(
                                                      parseInt(
                                                        _vm.total_ordered_amount
                                                      ) +
                                                        parseInt(
                                                          _vm.total_sold_amount
                                                        ) -
                                                        parseInt(
                                                          _vm.total_stocked_amount
                                                        )
                                                    ) +
                                                    "\n                              "
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("p", [
                                                _vm._v(
                                                  "\n                                (total order and sale amount -  total purchase amount  )\n                              "
                                                )
                                              ])
                                            ]
                                          )
                                        ])
                                      ])
                                    ])
                                  ]
                                )
                              ]
                            )
                          ]
                        )
                      : _vm._e()
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
    return _c("section", { staticClass: "content-header" }, [
      _c("ol", { staticClass: "breadcrumb" }, [
        _c("li", [
          _c("a", { attrs: { href: "#" } }, [
            _c("i", { staticClass: "fa fa-dashboard" }),
            _vm._v("report ")
          ])
        ]),
        _vm._v(" "),
        _c("li", { staticClass: "active" }, [_vm._v("stock")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("Date")]),
        _vm._v(" "),
        _c("th", [_vm._v("Invoice No")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("Stock Qty")]),
        _vm._v(" "),
        _c("th", [_vm._v("Amount")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("Date")]),
        _vm._v(" "),
        _c("th", [_vm._v("Invoice No")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("Order Qty")]),
        _vm._v(" "),
        _c("th", [_vm._v("Amount")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("Date")]),
        _vm._v(" "),
        _c("th", [_vm._v("Invoice No")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("Sale Qty")]),
        _vm._v(" "),
        _c("th", [_vm._v("Amount")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("Product")]),
        _vm._v(" "),
        _c("th", [_vm._v("Purchase")]),
        _vm._v(" "),
        _c("th", [_vm._v("Order")]),
        _vm._v(" "),
        _c("th", [_vm._v("Sale")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/Report/productStockTracking.vue":
/*!*******************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/productStockTracking.vue ***!
  \*******************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./productStockTracking.vue?vue&type=template&id=47f4b39c& */ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c&");
/* harmony import */ var _productStockTracking_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./productStockTracking.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./productStockTracking.vue?vue&type=style&index=0&lang=css& */ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _productStockTracking_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__["render"],
  _productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/Report/productStockTracking.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./productStockTracking.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&":
/*!****************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css& ***!
  \****************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./productStockTracking.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c&":
/*!**************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c& ***!
  \**************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./productStockTracking.vue?vue&type=template&id=47f4b39c& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/productStockTracking.vue?vue&type=template&id=47f4b39c&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_productStockTracking_vue_vue_type_template_id_47f4b39c___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);