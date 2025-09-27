(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/order_processing_report"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);


function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    this.adminsList();
  },
  data: function data() {
    return {
      loading: true,
      admins: {},
      item: 10,
      options: {
        format: "YYYY-MM-DD",
        useCurrent: false
      },
      start_date: "",
      end_date: "",
      basePath: this.$store.getters.image_base_link,
      today: true,
      yesterday: false,
      this_week: false,
      this_month: false,
      custom_date: false,
      filter_loading: false,
      filter_custom_date: false
    };
  },
  methods: {
    adminsList: function adminsList() {
      var _arguments = arguments,
          _this = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee() {
        var page;
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                page = _arguments.length > 0 && _arguments[0] !== undefined ? _arguments[0] : 1;

                _this.$Progress.start();

                _context.next = 4;
                return axios.get("/api/order/processors/list?page=" + page, {
                  params: {
                    item: _this.item,
                    start_date: _this.start_date,
                    end_date: _this.end_date
                  }
                }).then(function (resp) {
                  console.log(resp);

                  if (resp.data.success == true) {
                    _this.admins = resp.data.admins;
                    _this.loading = false;
                  }

                  _this.$Progress.finish();
                })["catch"](function (error) {
                  console.log(error);
                });

              case 4:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    activeToday: function activeToday() {
      this.loadingMethod();
      this.today = true;
      this.yesterday = false;
      this.this_week = false;
      this.this_month = false;
      this.custom_date = false;
    },
    activeYesterday: function activeYesterday() {
      this.loadingMethod();
      this.today = false;
      this.yesterday = true;
      this.this_week = false;
      this.this_month = false;
      this.custom_date = false;
    },
    activeThisWeek: function activeThisWeek() {
      this.loadingMethod();
      this.today = false;
      this.yesterday = false;
      this.this_week = true;
      this.this_month = false;
      this.custom_date = false;
    },
    activeThisMonth: function activeThisMonth() {
      this.loadingMethod();
      this.today = false;
      this.yesterday = false;
      this.this_week = false;
      this.this_month = true;
      this.custom_date = false;
    },
    activeCustomDate: function activeCustomDate() {
      this.adminsList();
      this.loadingMethod();
      this.today = false;
      this.yesterday = false;
      this.this_week = false;
      this.this_month = false;
      this.custom_date = true;
    },
    loadingMethod: function loadingMethod() {
      var _this2 = this;

      this.filter_loading = true;
      setTimeout(function () {
        _this2.filter_loading = false;
      }, 500);
    },
    goBack: function goBack() {
      window.history.back();
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.order_process_list[data-v-14b3e1e9] {\r\n  list-style-type: none;\r\n  width: 50%;\r\n  margin-left: 30%;\r\n  flex-wrap: wrap;\n}\n.order_process_list > li[data-v-14b3e1e9] {\r\n  position: relative;\r\n  margin: 10px;\n}\n.order_process_list > li > a[data-v-14b3e1e9] {\r\n  position: relative;\r\n  margin: 10px;\r\n  margin-right: 30px;\n}\n.order_process_list > li[data-v-14b3e1e9]::before {\r\n  content: \"\\2022\";\r\n  color: #6cac38;\r\n  position: absolute;\r\n  font-size: 25px;\r\n  left: -19px;\r\n  top: -3px;\n}\n.order_process_list > li[data-v-14b3e1e9]:before {\r\n  content: \"\\1F892\";\r\n  font-size: 30px;\r\n  left: -18px;\r\n  top: -12px;\n}\n._o_profile[data-v-14b3e1e9] {\r\n  width: 60px;\r\n  height: 60px;\r\n  border-radius: 50%;\r\n  margin-top: 30%;\r\n  border: 1px #ddd;\n}\n@media screen and (max-width: 768px) {\n.order_process_list[data-v-14b3e1e9] {\r\n      width: 10%;\r\n      margin-left: 0%;\n}\n.order_process_list > li[data-v-14b3e1e9] {\r\n      position: relative;\r\n      margin: 10px;\r\n      width: 150px;\n}\n}\n.col-lg-3.__c_box[data-v-14b3e1e9] {\r\n  padding: 10px;\r\n  background: #fff;\r\n  width: 250px;\r\n  height: 85px;\r\n  margin-right: 15px;\r\n  margin-bottom: 20px;\r\n  text-align: center;\r\n  box-shadow: 3px 3px 3px #ddd;\n}\n.box-title[data-v-14b3e1e9] {\r\n  padding: 5px 6px;\r\n  cursor: pointer;\n}\n.data_table_row[data-v-14b3e1e9] {\r\n  width: 95%;\r\n  overflow-x: scroll;\n}\n.over_view_row[data-v-14b3e1e9] {\r\n  width: 92%;\r\n  min-height: 120px;\r\n  margin-left: 0%;\r\n  box-shadow: 1px 1px 2px 1px #ddd;\r\n  margin-bottom: 20px;\n}\n.account_container[data-v-14b3e1e9] {\r\n  height: 150px;\r\n  margin-bottom: 20px;\r\n  overflow-y: auto;\n}\n.btn_account[data-v-14b3e1e9] {\r\n  padding: 3px 20px;\r\n  border: none;\r\n  min-width: 225px;\r\n  background: #eee;\n}\n.btn_account[data-v-14b3e1e9]:hover {\r\n  transition: 3s;\r\n  background: blueviolet;\r\n  color: #fff;\n}\n.active_border[data-v-14b3e1e9] {\r\n  color: #000;\r\n  border-bottom: 2px dashed #000;\n}\n.btn_conditional[data-v-14b3e1e9] {\r\n  box-shadow: 0 1pt 12pt rgb(150 165 237);\r\n  font-size: 16px;\r\n  font-weight: bold;\r\n  font-family: serif;\r\n  margin: 10px 10px;\n}\n@media screen and (max-width: 480px) {\n.data_table_row[data-v-14b3e1e9] {\r\n    width: 100%;\r\n    overflow-x: scroll;\n}\n}\r\n\r\n\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../../node_modules/css-loader??ref--5-1!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../../node_modules/vue-loader/lib??vue-loader-options!./AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************************************/
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
          _c("h1", [
            _c(
              "a",
              { staticClass: "btn btn-primary", on: { click: _vm.goBack } },
              [_c("i", { staticClass: "fa fa-arrow-left" })]
            )
          ]),
          _vm._v(" "),
          _vm._m(0)
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row data_table_row" }, [
              _c("div", { staticClass: "col-md-12 col-sm-12" }, [
                _c("div", { staticClass: "box box-primary" }, [
                  _c(
                    "div",
                    { staticClass: "box-header with-border text-center" },
                    [
                      _c(
                        "a",
                        {
                          staticClass: "btn btn_conditional",
                          class: { active_border: _vm.today == true },
                          on: { click: _vm.activeToday }
                        },
                        [_vm._v("\n                  Today\n                ")]
                      ),
                      _vm._v(" "),
                      _c(
                        "a",
                        {
                          staticClass: "btn btn_conditional",
                          class: { active_border: _vm.yesterday == true },
                          on: { click: _vm.activeYesterday }
                        },
                        [
                          _vm._v(
                            "\n                  Yesterday\n                "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "a",
                        {
                          staticClass: "btn btn_conditional",
                          class: { active_border: _vm.this_week == true },
                          on: { click: _vm.activeThisWeek }
                        },
                        [
                          _vm._v(
                            "\n                  This Week\n                "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "a",
                        {
                          staticClass: "btn btn_conditional",
                          class: { active_border: _vm.this_month == true },
                          on: { click: _vm.activeThisMonth }
                        },
                        [
                          _vm._v(
                            "\n                  This Month\n                "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "a",
                        {
                          staticClass: "btn btn_conditional",
                          class: { active_border: _vm.custom_date == true },
                          on: {
                            click: function($event) {
                              _vm.filter_custom_date = true
                            }
                          }
                        },
                        [
                          _vm._v(
                            "\n                  Custom Date\n                "
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _vm.filter_custom_date
                        ? _c(
                            "div",
                            {
                              staticClass: "row",
                              staticStyle: { "margin-top": "20px" }
                            },
                            [
                              _c("div", { staticClass: "col-lg-5" }),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "col-lg-3" },
                                [
                                  _c("date-picker", {
                                    attrs: {
                                      autocomplete: "off",
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
                                { staticClass: "col-lg-3" },
                                [
                                  _c("date-picker", {
                                    attrs: {
                                      autocomplete: "off",
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
                              _c("div", { staticClass: "col-lg-1" }, [
                                _c(
                                  "button",
                                  {
                                    staticClass: "btn btn-success",
                                    on: { click: _vm.activeCustomDate }
                                  },
                                  [
                                    _vm._v(
                                      "\n                      submit\n                    "
                                    )
                                  ]
                                )
                              ])
                            ]
                          )
                        : _vm._e()
                    ]
                  ),
                  _vm._v(" "),
                  _c("div", { staticClass: "box-body" }, [
                    _vm.loading
                      ? _c(
                          "h1",
                          {
                            staticStyle: {
                              "text-align": "center",
                              "font-size": "30px"
                            }
                          },
                          [_c("i", { staticClass: "fa fa-spinner fa-spin" })]
                        )
                      : _c(
                          "table",
                          {
                            staticClass:
                              "\n                    text-center\n                    table\n                    table-bordered\n                    table-centered\n                    table-striped\n                    table-hover\n                  "
                          },
                          [
                            _vm._m(1),
                            _vm._v(" "),
                            _c(
                              "tbody",
                              _vm._l(_vm.admins.data, function(admin, index) {
                                return _c("tr", { key: index }, [
                                  _c("td", [_vm._v(_vm._s(index + 1))]),
                                  _vm._v(" "),
                                  _c(
                                    "td",
                                    [
                                      _c(
                                        "router-link",
                                        {
                                          attrs: {
                                            to: {
                                              name:
                                                "order_processing_report_view",
                                              params: { id: admin.id }
                                            }
                                          }
                                        },
                                        [
                                          _c("img", {
                                            staticClass: "_o_profile",
                                            attrs: {
                                              src: _vm.basePath + admin.image
                                            }
                                          }),
                                          _vm._v(" "),
                                          _c("p", [_vm._v(_vm._s(admin.name))])
                                        ]
                                      )
                                    ],
                                    1
                                  ),
                                  _vm._v(" "),
                                  _c("td", [
                                    _vm.filter_loading
                                      ? _c(
                                          "h1",
                                          {
                                            staticStyle: {
                                              "text-align": "center",
                                              "font-size": "30px"
                                            }
                                          },
                                          [
                                            _c("i", {
                                              staticClass:
                                                "fa fa-spinner fa-spin"
                                            })
                                          ]
                                        )
                                      : _c("div", [
                                          _vm.today == true
                                            ? _c(
                                                "ul",
                                                {
                                                  staticClass:
                                                    "order_process_list"
                                                },
                                                [
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("created")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .created
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("pending")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .pending
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("approved")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .approved
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("shipment")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .shipment
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("delivered")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .delivered
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("returned")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .returned
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("canceled")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .today_report
                                                                    .canceled
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ])
                                                ]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.yesterday == true
                                            ? _c(
                                                "ul",
                                                {
                                                  staticClass:
                                                    "order_process_list"
                                                },
                                                [
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("created")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .created
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("pending")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .pending
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("approved")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .approved
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("shipment")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .shipment
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("delivered")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .delivered
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("returned")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .returned
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("canceled")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .yesterday_report
                                                                    .canceled
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ])
                                                ]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.this_week == true
                                            ? _c(
                                                "ul",
                                                {
                                                  staticClass:
                                                    "order_process_list"
                                                },
                                                [
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("created")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .created
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("pending")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .pending
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("approved")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .approved
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("shipment")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .shipment
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("delivered")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .delivered
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("returned")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .returned
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("canceled")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_week_report
                                                                    .canceled
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ])
                                                ]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.this_month == true
                                            ? _c(
                                                "ul",
                                                {
                                                  staticClass:
                                                    "order_process_list"
                                                },
                                                [
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("created")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .created
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("pending")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .pending
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("approved")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .approved
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("shipment")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .shipment
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("delivered")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .delivered
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("returned")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .returned
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("canceled")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .this_month_report
                                                                    .canceled
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ])
                                                ]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.custom_date == true
                                            ? _c(
                                                "ul",
                                                {
                                                  staticClass:
                                                    "order_process_list"
                                                },
                                                [
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("created")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .created
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("pending")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .pending
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("approved")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .approved
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("shipment")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .shipment
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("delivered")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .delivered
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("returned")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .returned
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ]),
                                                  _vm._v(" "),
                                                  _c("li", [
                                                    _c(
                                                      "div",
                                                      { staticClass: "row" },
                                                      [
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-2 col-xs-6"
                                                          },
                                                          [_vm._v("canceled")]
                                                        ),
                                                        _vm._v(" "),
                                                        _c(
                                                          "div",
                                                          {
                                                            staticClass:
                                                              "col-md-10 col-xs-6"
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                  : " +
                                                                _vm._s(
                                                                  admin
                                                                    .custom_date_report
                                                                    .canceled
                                                                ) +
                                                                "\n                                "
                                                            )
                                                          ]
                                                        )
                                                      ]
                                                    )
                                                  ])
                                                ]
                                              )
                                            : _vm._e()
                                        ])
                                  ])
                                ])
                              }),
                              0
                            )
                          ]
                        )
                  ]),
                  _vm._v(" "),
                  !_vm.loading
                    ? _c("div", { staticClass: "box-footer" }, [
                        _c("div", { staticClass: "row" }, [
                          _c(
                            "div",
                            { staticClass: "col-lg-6" },
                            [
                              _c("pagination", {
                                attrs: { data: _vm.admins, limit: 5 },
                                on: { "pagination-change-page": _vm.adminsList }
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
                                  "\n                      Showing\n                      "
                                ),
                                _c("strong", [_vm._v(_vm._s(_vm.admins.from))]),
                                _vm._v(" to\n                      "),
                                _c("strong", [_vm._v(_vm._s(_vm.admins.to))]),
                                _vm._v(" of total\n                      "),
                                _c("strong", [
                                  _vm._v(_vm._s(_vm.admins.total))
                                ]),
                                _vm._v(" entries\n                    ")
                              ])
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
          _vm._v("order processing")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("report")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { width: "5%" } }, [_vm._v("#")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "25%" } }, [_vm._v("Name")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "70%" } }, [_vm._v("Reports")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue":
/*!*************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue ***!
  \*************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true& */ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true&");
/* harmony import */ var _AllPerson_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./AllPerson.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& */ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _AllPerson_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "14b3e1e9",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/Report/order_processing/AllPerson.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../../node_modules/vue-loader/lib??vue-loader-options!./AllPerson.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&":
/*!**********************************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& ***!
  \**********************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/style-loader!../../../../../../node_modules/css-loader??ref--5-1!../../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../../node_modules/vue-loader/lib??vue-loader-options!./AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=style&index=0&id=14b3e1e9&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_style_index_0_id_14b3e1e9_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true&":
/*!********************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true& ***!
  \********************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../../node_modules/vue-loader/lib??vue-loader-options!./AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/Report/order_processing/AllPerson.vue?vue&type=template&id=14b3e1e9&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AllPerson_vue_vue_type_template_id_14b3e1e9_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);