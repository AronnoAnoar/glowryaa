(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/company_sale_details"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js&":
/*!************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_1__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    this.saleList();
    this.balanceList();
    this.todayDate();
  },
  data: function data() {
    return {
      sales: {},
      company: '',
      loading: true,
      item: 20,
      sale_type: 2,
      paid_amount: 0,
      total_purchase: 0,
      total_discount: 0,
      paid_records: {},
      start_date: '',
      end_date: '',
      data_search: '',
      sales_history: true,
      paid_history: false,
      form: new vform__WEBPACK_IMPORTED_MODULE_1__["Form"]({
        date: '',
        company_id: this.$route.params.id,
        credit_in: 'Cash',
        comment: '',
        amount: ''
      }),
      balance: '',
      //date picker options ..........
      options: {
        format: 'YYYY-MM-DD',
        useCurrent: false
      }
    };
  },
  methods: {
    todayDate: function todayDate() {
      var date = new Date();
      var day = date.getDate();
      var month = date.getMonth() + 1;
      var year = date.getFullYear(); // This arrangement can be altered based on how we want the date's format to appear.

      var currentDate = "".concat(year, "-").concat(month, "-").concat(day);
      this.form.date = currentDate;
    },
    balanceList: function balanceList() {
      var _this = this;

      axios.get('/api/balance/list').then(function (resp) {
        _this.balance = resp.data.balance;
      });
    },
    showModal: function showModal() {
      this.$modal.show('payment_modal');
    },
    salesHistory: function salesHistory() {
      this.sales_history = true;
      this.paid_history = false;
    },
    paidHistory: function paidHistory() {
      this.sales_history = false;
      this.paid_history = true;
    },
    totalPartialPayment: function totalPartialPayment() {
      if (this.paid_records.data.length > 0) {
        var partial_paid = 0;
        this.paid_records.data.forEach(function (item) {
          partial_paid += parseInt(item.amount);
        });
        return partial_paid;
      }
    },
    saleList: function saleList() {
      var _this2 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      axios.get('/api/company/sale/details/' + this.$route.params.id + '?page=' + page).then(function (resp) {
        console.log(resp);
        _this2.sales = resp.data.sales;
        _this2.company = resp.data.company;
        _this2.total_purchase = resp.data.total_purchase;
        _this2.total_discount = resp.data.total_discount;
        _this2.paid_amount = resp.data.paid_amount;
        _this2.paid_records = resp.data.paid_records;
        _this2.loading = false;
      });
    },
    getPayment: function getPayment() {
      var _this3 = this;

      this.form.post('/api/get/company/sale/payment', {
        transformRequest: [function (data, headers) {
          return objectToFormData(data);
        }]
      }).then(function (resp) {
        console.log(resp);

        if (resp.data.status == 'OK') {
          _this3.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 4000
          });

          _this3.form.date = '';
          _this3.form.amount = '';
          _this3.form.comment = '';

          _this3.$modal.hide('payment_modal');

          _this3.saleList();
        }
      });
    },
    saleSearch: function saleSearch() {
      var _this4 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;

      if (this.data_search.length > 1) {
        this.loading = true;
        axios.get('/api/company/sale/search/data/' + this.data_search + '?page=' + page).then(function (resp) {
          if (resp.data.status == 'OK') {
            _this4.sales = resp.data.sales;
            _this4.loading = false;
          }
        })["catch"](function (error) {
          _this4.$toastr.e(error.response.data.message);
        });
      } else {
        this.saleList();
      }
    },
    filterCompanySale: function filterCompanySale() {
      var _this5 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      //fetch data
      axios.get('/api/company/sale/date/wise/filter?page=' + page, {
        //send data
        params: {
          start_date: this.start_date,
          end_date: this.end_date,
          item: this.item
        }
      }).then(function (resp) {
        console.log(resp);

        if (resp.data.status == 'OK') {
          _this5.sales = resp.data.sales;
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    totalPaid: function totalPaid() {
      var sale_paid = 0;
      this.sales.data.forEach(function (sale) {
        sale_paid += parseInt(sale.paid);
      });
      return sale_paid;
    },
    totalPurchase: function totalPurchase() {
      var total = 0;
      this.sales.data.forEach(function (sale) {
        total += parseInt(sale.total);
      });
      return total;
    },
    totalDue: function totalDue() {
      var due = 0;
      this.sales.data.forEach(function (sale) {
        due += parseInt(sale.total) - (parseInt(sale.paid) + parseInt(sale.discount));
      });
      return due;
    },
    //method iniitial for sale paid
    paid: function paid(sale_id, index) {
      var _this6 = this;

      Swal.fire({
        title: 'Are you sure?',
        text: "You wan't make this paid",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then(function (result) {
        if (result.value) {
          axios.get('/sale/paid/' + sale_id).then(function (resp) {
            if (resp.data.success == 'OK') {
              _this6.sales.data[index].status = 2;

              _this6.$toasted.show(resp.data.message, {
                position: 'top-center',
                type: 'success',
                duration: 2000
              });
            } //  console.log(sale_id);

          })["catch"](function (error) {
            _this6.$toastr.e(error.response.data.message);
          });
        } else {
          _this6.$toasted.show('Ok ! no action here', {
            position: 'top-center',
            type: 'info',
            duration: 3000
          });
        }
      });
    },
    returned: function returned(sale_id, index) {
      var _this7 = this;

      Swal.fire({
        title: 'Are you sure?',
        text: "You wan't make this return",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then(function (result) {
        if (result.value) {
          axios.get('/sale/returned/' + sale_id).then(function (resp) {
            // console.log(resp)
            if (resp.data.success == 'OK') {
              _this7.sales.data[index].status = 2;

              _this7.$toasted.show(resp.data.message, {
                position: 'top-center',
                type: 'success',
                duration: 2000
              });
            }
          })["catch"](function (error) {// console.log(error)
          });
        } else {
          _this7.$toasted.show('Ok ! no action here', {
            position: 'top-center',
            type: 'info',
            duration: 3000
          });
        }
      });
    }
  },
  watch: {
    start_date: function start_date(value) {
      if (value.length > 1) {
        this.filterCompanySale();
      }
    },
    end_date: function end_date(value) {
      if (value.length > 1) {
        this.filterCompanySale();
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&":
/*!*******************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.box_container[data-v-0434cba9] {\r\n    background: #fff;\r\n    padding: 10px;\r\n    box-shadow: 3px 3px 3px #ddd;\r\n    border-radius: 5px;\r\n    height: 200px;\n}\n.c-name[data-v-0434cba9] {\r\n    text-align: center;\r\n    height: 50px;\r\n    font-weight: bold;\n}\n.total_row[data-v-0434cba9] {\r\n    margin-bottom: 50px;\n}\n.btn_paid_purchase[data-v-0434cba9] {\r\n    margin: 5px 20;\r\n    padding: 10px 50px;\r\n    font-size: 16px;\r\n    font-weight: bold;\n}\n.border_active[data-v-0434cba9] {\r\n    border-bottom: 2px dashed #000;\r\n    background: #fff;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true&":
/*!****************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true& ***!
  \****************************************************************************************************************************************************************************************************************************************************/
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
                  attrs: { to: { name: "compnaySale" } }
                },
                [_c("i", { staticClass: "fa fa-arrow-left" })]
              )
            ],
            1
          ),
          _vm._v(" "),
          _c("ol", { staticClass: "breadcrumb" }, [
            _vm._m(0),
            _vm._v(" "),
            _c("li", { staticClass: "active" }, [
              _vm._v(_vm._s(_vm.company.name))
            ])
          ])
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row" }, [
              _c("div", { staticClass: "col-lg-11 col-md-11" }, [
                _c("div", { staticClass: "row" }, [
                  _c(
                    "div",
                    {
                      staticClass: "col-lg-12",
                      staticStyle: {
                        background: "#fff",
                        "margin-bottom": "13px",
                        "font-weight": "bolder",
                        "text-align": "center",
                        "box-shadow": "3px 3px 3px #ddd"
                      }
                    },
                    [
                      _c(
                        "h3",
                        {
                          staticClass: "text-uppercase",
                          staticStyle: { "font-weight": "bold" }
                        },
                        [
                          _vm._v(
                            "\n                                    Company:" +
                              _vm._s(_vm.company.name) +
                              "\n                                "
                          )
                        ]
                      )
                    ]
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "row total_row" }, [
                  _c("div", { staticClass: "col-md-4" }, [
                    _c("div", { staticClass: "box_container" }, [
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v("Total Sales Amount")
                      ]),
                      _vm._v(" "),
                      _c("hr"),
                      _vm._v(" "),
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v(
                          "\n                                        " +
                            _vm._s(_vm.total_purchase) +
                            "\n                                    "
                        )
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-md-4" }, [
                    _c("div", { staticClass: "box_container" }, [
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v("Total Paid Amount")
                      ]),
                      _vm._v(" "),
                      _c("hr"),
                      _vm._v(" "),
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v(
                          "\n                                        " +
                            _vm._s(_vm.paid_amount) +
                            "\n                                    "
                        )
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-md-4" }, [
                    _c("div", { staticClass: "box_container" }, [
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v("Total Due Amount")
                      ]),
                      _vm._v(" "),
                      _c("hr"),
                      _vm._v(" "),
                      _c("h3", { staticClass: "c-name text-uppercase" }, [
                        _vm._v(
                          "\n                                        " +
                            _vm._s(
                              parseFloat(_vm.total_purchase) -
                                (parseFloat(_vm.paid_amount) +
                                  parseFloat(_vm.total_discount))
                            ) +
                            "\n                                    "
                        )
                      ])
                    ])
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "box box-primary" }, [
                  _c("div", { staticClass: "row" }, [
                    _c("div", { staticClass: "col-md-8" }, [
                      _c(
                        "button",
                        {
                          staticClass: "btn btn_paid_purchase",
                          class: { border_active: _vm.sales_history == true },
                          on: { click: _vm.salesHistory }
                        },
                        [
                          _vm._v(
                            "\n                                        Sale History\n                                    "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "button",
                        {
                          staticClass: "btn btn_paid_purchase",
                          class: { border_active: _vm.paid_history == true },
                          on: { click: _vm.paidHistory }
                        },
                        [
                          _vm._v(
                            "\n                                        Paid History\n                                    "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "button",
                        {
                          staticClass: "btn btn-success",
                          staticStyle: { "margin-left": "20px" },
                          on: { click: _vm.showModal }
                        },
                        [
                          _vm._v(
                            "\n                                        Get Paid\n                                    "
                          )
                        ]
                      )
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "col-md-4" })
                  ]),
                  _vm._v(" "),
                  _vm.sales_history == true
                    ? _c("div", [
                        _c("div", { staticClass: "box-body" }, [
                          _c(
                            "table",
                            {
                              staticClass:
                                "table table-hover table-striped table-bordered"
                            },
                            [
                              _vm._m(1),
                              _vm._v(" "),
                              _c(
                                "tbody",
                                [
                                  _vm.loading
                                    ? _c("h1", [
                                        _c("i", {
                                          staticClass: "fa fa-spin fa-spinner"
                                        })
                                      ])
                                    : _vm._l(_vm.sales.data, function(
                                        sale,
                                        index
                                      ) {
                                        return _c("tr", { key: index }, [
                                          _c(
                                            "td",
                                            { attrs: { scope: "row" } },
                                            [_vm._v(_vm._s(index + 1))]
                                          ),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(_vm._s(sale.created_at))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(_vm._s(sale.invoice_no))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v("৳ " + _vm._s(sale.total))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v("৳ " + _vm._s(sale.paid))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(
                                              "\n                                                    ৳\n                                                    " +
                                                _vm._s(
                                                  sale.total -
                                                    (sale.paid + sale.discount)
                                                ) +
                                                "\n                                                "
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            sale.status == 1
                                              ? _c(
                                                  "span",
                                                  {
                                                    staticClass:
                                                      "badge badge-primary"
                                                  },
                                                  [_vm._v("Initial")]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            sale.status == 2
                                              ? _c(
                                                  "span",
                                                  {
                                                    staticClass:
                                                      "badge badge-success"
                                                  },
                                                  [_vm._v("Paid")]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            sale.status == 3
                                              ? _c(
                                                  "span",
                                                  {
                                                    staticClass:
                                                      "badge badge-danger"
                                                  },
                                                  [_vm._v("Retruned")]
                                                )
                                              : _vm._e()
                                          ]),
                                          _vm._v(" "),
                                          _c(
                                            "td",
                                            [
                                              _c(
                                                "router-link",
                                                {
                                                  staticClass:
                                                    "btn btn-primary btn-sm",
                                                  attrs: {
                                                    to: {
                                                      name: "ViewSale",
                                                      params: { id: sale.id }
                                                    }
                                                  }
                                                },
                                                [
                                                  _c("i", {
                                                    staticClass: "fa fa-eye"
                                                  })
                                                ]
                                              )
                                            ],
                                            1
                                          )
                                        ])
                                      }),
                                  _vm._v(" "),
                                  _c("tr", [
                                    _c("td", { attrs: { colspan: "3" } }),
                                    _vm._v(" "),
                                    _c("td", [
                                      _c(
                                        "span",
                                        { staticClass: "badge badge-success" },
                                        [
                                          _vm._v(
                                            "\n                                                        ৳ " +
                                              _vm._s(_vm.totalPurchase())
                                          )
                                        ]
                                      )
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _c(
                                        "span",
                                        { staticClass: "badge badge-warning" },
                                        [
                                          _vm._v(
                                            "\n                                                        ৳ " +
                                              _vm._s(_vm.totalPaid()) +
                                              "\n                                                    "
                                          )
                                        ]
                                      )
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _c(
                                        "span",
                                        { staticClass: "badge badge-warning" },
                                        [
                                          _vm._v(
                                            "\n                                                        ৳ " +
                                              _vm._s(_vm.totalDue()) +
                                              "\n                                                    "
                                          )
                                        ]
                                      )
                                    ])
                                  ])
                                ],
                                2
                              )
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-footer" }, [
                          _c("div", { staticClass: "row" }, [
                            _c(
                              "div",
                              { staticClass: "col-lg-6" },
                              [
                                _c("pagination", {
                                  attrs: { data: _vm.sales },
                                  on: { "pagination-change-page": _vm.saleList }
                                })
                              ],
                              1
                            ),
                            _vm._v(" "),
                            _c(
                              "div",
                              {
                                staticClass: "col-lg-6 mt-1",
                                staticStyle: {
                                  "margin-top": "25px",
                                  "text-align": "right"
                                }
                              },
                              [
                                _c("p", [
                                  _vm._v(
                                    "\n                                                Showing "
                                  ),
                                  _c("strong", [
                                    _vm._v(_vm._s(_vm.sales.from))
                                  ]),
                                  _vm._v(
                                    " to\n                                                "
                                  ),
                                  _c("strong", [_vm._v(_vm._s(_vm.sales.to))]),
                                  _vm._v(
                                    " of total\n                                                "
                                  ),
                                  _c("strong", [
                                    _vm._v(_vm._s(_vm.sales.total))
                                  ]),
                                  _vm._v(
                                    " entries\n                                            "
                                  )
                                ])
                              ]
                            )
                          ])
                        ])
                      ])
                    : _vm._e(),
                  _vm._v(" "),
                  _vm.paid_history == true
                    ? _c("div", [
                        _c("div", { staticClass: "box-body" }, [
                          _c(
                            "table",
                            {
                              staticClass:
                                "table table-hover table-striped table-bordered"
                            },
                            [
                              _vm._m(2),
                              _vm._v(" "),
                              _c(
                                "tbody",
                                [
                                  _vm.loading
                                    ? _c("h1", [
                                        _c("i", {
                                          staticClass: "fa fa-spin fa-spinner"
                                        })
                                      ])
                                    : _vm._l(_vm.paid_records.data, function(
                                        payment,
                                        index
                                      ) {
                                        return _c("tr", { key: index }, [
                                          _c("td", [_vm._v(_vm._s(index + 1))]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(_vm._s(payment.date))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(_vm._s(payment.comment))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(_vm._s(payment.credit_in))
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(
                                              "৳ " + _vm._s(payment.amount)
                                            )
                                          ])
                                        ])
                                      }),
                                  _vm._v(" "),
                                  _c("tr", [
                                    _c("td", { attrs: { colspan: "4" } }),
                                    _vm._v(" "),
                                    _c("td", [
                                      _c(
                                        "span",
                                        { staticClass: "badge badge-success" },
                                        [
                                          _vm._v(
                                            "\n                                                        ৳\n                                                        " +
                                              _vm._s(_vm.totalPartialPayment())
                                          )
                                        ]
                                      )
                                    ])
                                  ])
                                ],
                                2
                              )
                            ]
                          )
                        ])
                      ])
                    : _vm._e()
                ])
              ])
            ])
          ])
        ])
      ]),
      _vm._v(" "),
      _c(
        "modal",
        { attrs: { name: "payment_modal", width: 400, height: 370 } },
        [
          _c(
            "form",
            {
              on: {
                submit: function($event) {
                  $event.preventDefault()
                  return _vm.getPayment($event)
                }
              }
            },
            [
              _c(
                "div",
                { staticClass: "card", staticStyle: { padding: "20px" } },
                [
                  _c("div", { staticClass: "card-body" }, [
                    _c(
                      "div",
                      { staticClass: "form-group" },
                      [
                        _c("label", [_vm._v("Date")]),
                        _vm._v(" "),
                        _c("date-picker", {
                          class: { "is-invaid": _vm.form.errors.has("date") },
                          attrs: { required: "", config: _vm.options },
                          model: {
                            value: _vm.form.date,
                            callback: function($$v) {
                              _vm.$set(_vm.form, "date", $$v)
                            },
                            expression: "form.date"
                          }
                        }),
                        _vm._v(" "),
                        _c("has-error", {
                          attrs: { form: _vm.form, field: "date" }
                        })
                      ],
                      1
                    ),
                    _vm._v(" "),
                    _c("div", { staticClass: "form-group" }, [
                      _c("label", [_vm._v("Amount")]),
                      _vm._v(" "),
                      _c("input", {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.form.amount,
                            expression: "form.amount"
                          }
                        ],
                        staticClass: "form-control",
                        attrs: { type: "text", required: "" },
                        domProps: { value: _vm.form.amount },
                        on: {
                          input: function($event) {
                            if ($event.target.composing) {
                              return
                            }
                            _vm.$set(_vm.form, "amount", $event.target.value)
                          }
                        }
                      })
                    ]),
                    _vm._v(" "),
                    _c(
                      "div",
                      { staticClass: "form-group" },
                      [
                        _c("label", [_vm._v(" Credit In ")]),
                        _vm._v(" "),
                        _c(
                          "select",
                          {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.form.credit_in,
                                expression: "form.credit_in"
                              }
                            ],
                            staticClass: "form-control",
                            class: {
                              "is-invalid": _vm.form.errors.has("credit_in")
                            },
                            attrs: { name: "credit_in" },
                            on: {
                              change: function($event) {
                                var $$selectedVal = Array.prototype.filter
                                  .call($event.target.options, function(o) {
                                    return o.selected
                                  })
                                  .map(function(o) {
                                    var val = "_value" in o ? o._value : o.value
                                    return val
                                  })
                                _vm.$set(
                                  _vm.form,
                                  "credit_in",
                                  $event.target.multiple
                                    ? $$selectedVal
                                    : $$selectedVal[0]
                                )
                              }
                            }
                          },
                          _vm._l(_vm.balance, function(balance, index) {
                            return _c(
                              "option",
                              { key: index, domProps: { value: balance.name } },
                              [
                                _vm._v(
                                  "\n                                " +
                                    _vm._s(balance.name) +
                                    "\n                            "
                                )
                              ]
                            )
                          }),
                          0
                        ),
                        _vm._v(" "),
                        _c("has-error", {
                          attrs: { form: _vm.form, field: "credit_in" }
                        })
                      ],
                      1
                    ),
                    _vm._v(" "),
                    _c("div", { staticClass: "form-group" }, [
                      _c("label", [_vm._v("Comment")]),
                      _vm._v(" "),
                      _c("input", {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.form.comment,
                            expression: "form.comment"
                          }
                        ],
                        staticClass: "form-control",
                        attrs: { type: "text" },
                        domProps: { value: _vm.form.comment },
                        on: {
                          input: function($event) {
                            if ($event.target.composing) {
                              return
                            }
                            _vm.$set(_vm.form, "comment", $event.target.value)
                          }
                        }
                      })
                    ]),
                    _vm._v(" "),
                    _c(
                      "button",
                      {
                        staticClass: "btn btn-success btn-block",
                        attrs: { type: "submit" }
                      },
                      [_vm._v("Submit")]
                    )
                  ])
                ]
              )
            ]
          )
        ]
      )
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("a", { attrs: { href: "#" } }, [
        _c("i", { staticClass: "fa fa-dashboard" }),
        _vm._v("Dashboard")
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
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Date")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Invoice")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Purchase")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("sale Paid")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Due")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Status")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Action")])
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
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Date")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Comment")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Paid By")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Amount")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue":
/*!***************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/CompanySaleDetails.vue ***!
  \***************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true& */ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true&");
/* harmony import */ var _CompanySaleDetails_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./CompanySaleDetails.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& */ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _CompanySaleDetails_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "0434cba9",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/sale/CompanySaleDetails.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./CompanySaleDetails.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&":
/*!************************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& ***!
  \************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=style&index=0&id=0434cba9&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_style_index_0_id_0434cba9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true&":
/*!**********************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true& ***!
  \**********************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/CompanySaleDetails.vue?vue&type=template&id=0434cba9&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_CompanySaleDetails_vue_vue_type_template_id_0434cba9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);