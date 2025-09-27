(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/products"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js&":
/*!****************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js& ***!
  \****************************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
  mounted: function mounted() {
    this.productList();
    window.addEventListener('click', this.bodyClick);
  },
  data: function data() {
    return {
      products: {},
      loading: true,
      search: '',
      item: 30,
      status: 'all',
      base_url: this.$store.state.image_base_link,
      categories: '',
      sub_categories: '',
      sub_sub_categories: '',
      category_id: '',
      sub_category_id: '',
      sub_sub_category_id: ''
    };
  },
  methods: {
    productList: function productList() {
      var _this = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : this.$route.params.number_of_page;
      this.$Progress.start();
      axios.get('/list/product?page=' + page, {
        params: {
          item: this.item,
          search: this.search,
          status: this.status,
          category_id: this.category_id,
          sub_category_id: this.sub_category_id,
          sub_sub_category_id: this.sub_sub_category_id,
          category_type: this.category_type
        }
      }).then(function (resp) {
        console.log(resp);
        _this.products = resp.data.products;
        _this.categories = resp.data.categories;
        _this.sub_categories = resp.data.sub_categories;
        _this.sub_sub_categories = resp.data.sub_sub_categories;
        _this.loading = false;
        window.history.pushState('', '', '/admin/products/' + page);
        page++;

        _this.$Progress.finish();
      })["catch"](function (error) {
        _this.$toastr.e(error.response.data.message);
      });
    },
    categoryWiseReport: function categoryWiseReport() {
      this.loading = true;
      this.sub_category_id = '';
      this.sub_sub_category_id = '';
      this.category_type = 'category';
      this.productList();
    },
    subCategoryWiseReport: function subCategoryWiseReport() {
      this.loading = true;
      this.category_type = 'sub_category';
      this.productList();
    },
    subSubCategoryWiseReport: function subSubCategoryWiseReport() {
      this.loading = true;
      this.category_type = 'sub_sub_category';
      this.productList();
    },
    purchasePrice: function purchasePrice(items) {
      if (items.length > 0) {
        var total_price = 0;
        var total_purchase_time = 0;
        items.forEach(function (item) {
          total_price += parseInt(item.price);
          total_purchase_time += 1;
        });
        var average_price = total_price / total_purchase_time;
        return average_price.toFixed(0);
      } else {
        return 0;
      }
    },
    approved: function approved(product) {
      var _this2 = this;

      axios.get('/approved/product/' + product.id).then(function (resp) {
        //  console.log(resp)
        if (resp.data.status == 'SUCCESS') {
          _this2.productList();

          _this2.$toastr.s(resp.data.message);
        }
      })["catch"](function (error) {
        _this2.$toastr.e(error.response.data.message);
      });
    },
    pending: function pending(product) {
      var _this3 = this;

      axios.get('/pending/product/' + product.id).then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this3.productList();

          _this3.$toastr.s(resp.data.message);
        }
      })["catch"](function (error) {
        _this3.$toastr.e(error.response.data.message);
      });
    },
    deny: function deny(product) {
      var _this4 = this;

      axios.get('/deny/product/' + product.id).then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this4.productList();

          _this4.$toastr.s(resp.data.message);
        }
      })["catch"](function (error) {
        _this4.$toastr.e(error.response.data.message);
      });
    },
    "delete": function _delete(product) {
      var _this5 = this;

      Swal.fire({
        title: 'Are you sure?',
        text: "You won't deny this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then(function (result) {
        if (result.value) {
          axios.get('/delete/product/' + product.id).then(function (resp) {
            if (resp.data.status == 'SUCCESS') {
              _this5.productList();

              _this5.$toasted.show(resp.data.message, {
                position: 'top-center',
                type: 'success',
                duration: 4000
              });
            } else {
              _this5.$toasted.show('some thing went to wrong', {
                position: 'top-center',
                type: 'error',
                duration: 4000
              });
            }
          })["catch"](function (error) {
            _this5.$toasted.show('some thing went to wrong', {
              position: 'top-center',
              type: 'error',
              duration: 4000
            });
          });
        } else {
          _this5.$toasted.show('Ok ! no action here', {
            position: 'top-center',
            type: 'info',
            duration: 3000
          });
        }
      });
    },
    searchProducts: function searchProducts() {
      var _this6 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      console.log(this.search.length);

      if (this.search.length > 1) {
        axios.get('/api/search/suggested/product/with/code/name/' + this.search + '?page=' + page, {
          params: {
            item: this.item
          }
        }).then(function (resp) {
          console.log(resp);
          console.log('search product');

          if (resp.data) {
            console.log(resp.data);
            _this6.products = resp.data;
          } else {
            _this6.productList();
          }
        });
      } else {
        this.productList();
      }
    },
    changeDisplay: function changeDisplay(product) {
      var element = document.getElementById(product.id);
      element.classList.toggle('dropbtn-active');
    },
    print: function print(productId) {
      var how_many_times = prompt('How many time you went to print this product barcode?');
      var url = '/product/print/barcode/' + productId + '/' + how_many_times;
      window.open(url, '_blank');
    },
    DuplicateProduct: function DuplicateProduct(product_id) {
      var _this7 = this;

      var copyItems = parseInt(prompt('How  many times copy this items?'));

      if (copyItems > 0 && copyItems < 11) {
        axios.get('/api/copy/product/' + product_id + '/' + copyItems).then(function (resp) {
          if (resp.data.success == true) {
            _this7.$toastr.s(resp.data.message);

            _this7.productList();
          }
        })["catch"](function (error) {
          _this7.$toastr.e(error.response.data.message);
        });
      } else {
        this.$toastr.e("copy item can't be more than 10 and less than 1 ");
        return;
      }
    },
    bodyClick: function bodyClick(e) {
      var elements = document.getElementsByClassName('dropdown-action');

      for (var i = 0; i < elements.length; i++) {
        if (!elements[i].contains(e.target) && e.target !== elements[i]) {
          elements[i].classList.remove('dropbtn-active');
        }
      }
    },
    selectAction: function selectAction($event, product) {
      var value = $event.target.value;

      if (value == 'approved') {
        return this.approved(product);
      }

      if (value == 'pending') {
        return this.pending(product);
      }

      if (value == 'deny') {
        return this.deny(product);
      }

      if (value == 'print') {
        return this.print(product.id);
      }

      if (value == 'copy_product') {
        return this.DuplicateProduct(product.id);
      }

      if (value == 'delete') {
        return this["delete"](product);
      }

      if (value == 'Edit') {
        this.$router.push({
          name: 'productEdit',
          params: {
            id: product.id
          }
        });
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\ninput[type='text'][data-v-2c97bfb2] {\r\n    height: 40px !important;\n}\nselect[data-v-2c97bfb2] {\r\n    height: 40px !important;\n}\n.category_wise_stock h4[data-v-2c97bfb2] {\r\n    padding-left: 12%;\n}\n.category_wise_stock ul li[data-v-2c97bfb2] {\r\n    padding: 10px 0;\r\n    width: 100%;\r\n    display: flex;\r\n    border-bottom: 1px solid rgba(0, 0, 0, 0.08);\r\n    transition: all 0.2s ease;\n}\n.stock_edit_btn[data-v-2c97bfb2] {\r\n    color: #1abc9c;\n}\nb[data-v-2c97bfb2],\r\nstrong[data-v-2c97bfb2] {\r\n    font-weight: 600;\r\n    padding-top: 9px;\n}\nul[data-v-2c97bfb2] {\r\n    list-style-type: none;\n}\n.p_color_container > ul > li[data-v-2c97bfb2] {\r\n    margin: 25px 0px;\n}\n.c_item_container > img[data-v-2c97bfb2] {\r\n    max-width: 100px;\r\n    max-height: 100px;\r\n    cursor: pointer;\n}\n.c_item_container > img[data-v-2c97bfb2]:hover {\r\n    transform: scale(4, 4);\r\n    z-index: 99999;\n}\np[data-v-2c97bfb2] {\r\n    font-size: 15px;\n}\np > span[data-v-2c97bfb2] {\r\n    margin: 0px 5px;\r\n    padding-top: 4.5px;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true& ***!
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
        _c("section", { staticClass: "content-header" }, [
          _c(
            "h1",
            [
              _c(
                "router-link",
                {
                  staticClass: "btn btn-primary",
                  attrs: { to: { name: "productAdd" } }
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
            _c("div", { staticClass: "row" }, [
              _c(
                "div",
                { staticClass: "col-lg-12 col-xl-12 col-md-12 col-xs-12" },
                [
                  _c("div", { staticClass: "box box-primary" }, [
                    _c("div", { staticClass: "box-header with-border" }, [
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-lg-4" }, [
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.item,
                                  expression: "item"
                                }
                              ],
                              staticClass: "form-control",
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.item = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  },
                                  function($event) {
                                    _vm.search.length > 0
                                      ? _vm.searchProducts()
                                      : _vm.productList()
                                  }
                                ]
                              }
                            },
                            [
                              _c("option", { attrs: { value: "30" } }, [
                                _vm._v("30")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "50" } }, [
                                _vm._v("50")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "100" } }, [
                                _vm._v("100")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "150" } }, [
                                _vm._v("150")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "200" } }, [
                                _vm._v("200")
                              ])
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-lg-4" }, [
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.search,
                                expression: "search"
                              }
                            ],
                            staticClass: "form-control",
                            staticStyle: { height: "40px !important" },
                            attrs: {
                              placeholder: "search by product name || code  "
                            },
                            domProps: { value: _vm.search },
                            on: {
                              keyup: function($event) {
                                return _vm.searchProducts()
                              },
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.search = $event.target.value
                              }
                            }
                          })
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-lg-4" }, [
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.status,
                                  expression: "status"
                                }
                              ],
                              staticClass: "form-control",
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.status = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  },
                                  _vm.productList
                                ]
                              }
                            },
                            [
                              _c("option", { attrs: { value: "all" } }, [
                                _vm._v("All")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "1" } }, [
                                _vm._v("Publish")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "3" } }, [
                                _vm._v("Unpublish")
                              ]),
                              _vm._v(" "),
                              _c("option", { attrs: { value: "0" } }, [
                                _vm._v("Stock Out")
                              ])
                            ]
                          )
                        ])
                      ]),
                      _vm._v(" "),
                      _c("br"),
                      _vm._v(" "),
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-lg-4 col-md-4" }, [
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.category_id,
                                  expression: "category_id"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: { name: "category" },
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.category_id = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  },
                                  _vm.categoryWiseReport
                                ]
                              }
                            },
                            [
                              _c(
                                "option",
                                { attrs: { value: "", disabled: "" } },
                                [_vm._v("select category")]
                              ),
                              _vm._v(" "),
                              _vm._l(_vm.categories, function(category) {
                                return _c(
                                  "option",
                                  {
                                    key: category.id,
                                    domProps: { value: category.id }
                                  },
                                  [
                                    _vm._v(
                                      "\n                                                " +
                                        _vm._s(category.name) +
                                        "\n                                            "
                                    )
                                  ]
                                )
                              })
                            ],
                            2
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-lg-4 col-md-4" }, [
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.sub_category_id,
                                  expression: "sub_category_id"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: { name: "category" },
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.sub_category_id = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  },
                                  _vm.subCategoryWiseReport
                                ]
                              }
                            },
                            [
                              _c(
                                "option",
                                { attrs: { value: "", disabled: "" } },
                                [
                                  _vm._v(
                                    "\n                                                select sub category\n                                            "
                                  )
                                ]
                              ),
                              _vm._v(" "),
                              _vm._l(_vm.sub_categories, function(s_item) {
                                return _c(
                                  "option",
                                  {
                                    key: s_item.id,
                                    domProps: { value: s_item.id }
                                  },
                                  [
                                    _vm._v(
                                      "\n                                                " +
                                        _vm._s(s_item.name) +
                                        "\n                                            "
                                    )
                                  ]
                                )
                              })
                            ],
                            2
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-lg-4 col-md-4" }, [
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.sub_sub_category_id,
                                  expression: "sub_sub_category_id"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: { name: "category" },
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.sub_sub_category_id = $event.target
                                      .multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  },
                                  _vm.subSubCategoryWiseReport
                                ]
                              }
                            },
                            [
                              _c(
                                "option",
                                { attrs: { value: "", disabled: "" } },
                                [
                                  _vm._v(
                                    "\n                                                select sub sub category\n                                            "
                                  )
                                ]
                              ),
                              _vm._v(" "),
                              _vm._l(_vm.sub_sub_categories, function(
                                s_s_item
                              ) {
                                return _c(
                                  "option",
                                  {
                                    key: s_s_item.id,
                                    domProps: { value: s_s_item.id }
                                  },
                                  [
                                    _vm._v(
                                      "\n                                                " +
                                        _vm._s(s_s_item.name) +
                                        "\n                                            "
                                    )
                                  ]
                                )
                              })
                            ],
                            2
                          )
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "box-body" }, [
                      _c(
                        "table",
                        {
                          staticClass:
                            "table table-centered table-hover table-striped table-bordered"
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
                                : _vm._l(_vm.products.data, function(
                                    product,
                                    index
                                  ) {
                                    return _c("tr", { key: product.id }, [
                                      _c("td", { attrs: { scope: "row" } }, [
                                        _vm._v(_vm._s(index + 1))
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c("div", [
                                          _c("p", [
                                            _c(
                                              "a",
                                              {
                                                attrs: {
                                                  href:
                                                    "/product/" + product.slug,
                                                  target: "_blank"
                                                }
                                              },
                                              [
                                                _vm._v(
                                                  "\n                                                            " +
                                                    _vm._s(product.name) +
                                                    "\n                                                        "
                                                )
                                              ]
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("p", [
                                            _vm._v(
                                              "Code: " +
                                                _vm._s(product.product_code)
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("p", [
                                            _vm._v(
                                              "\n                                                        Position: " +
                                                _vm._s(
                                                  product.product_position
                                                ) +
                                                "\n                                                    "
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c(
                                            "div",
                                            {
                                              staticStyle: { display: "flex" }
                                            },
                                            [
                                              _c("p", [_vm._v("Status:")]),
                                              _vm._v(" "),
                                              _c(
                                                "p",
                                                {
                                                  staticStyle: {
                                                    display: "flex"
                                                  }
                                                },
                                                [
                                                  product.status == 1
                                                    ? _c(
                                                        "span",
                                                        {
                                                          staticClass:
                                                            "badge badge-success"
                                                        },
                                                        [_vm._v("Publish")]
                                                      )
                                                    : _c(
                                                        "span",
                                                        {
                                                          staticClass:
                                                            "badge badge-danger"
                                                        },
                                                        [_vm._v("Unpublish")]
                                                      ),
                                                  _vm._v(" "),
                                                  _c("br")
                                                ]
                                              )
                                            ]
                                          )
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        product.thumbnail_img
                                          ? _c("img", {
                                              staticClass: "table-image",
                                              attrs: {
                                                src:
                                                  _vm.base_url +
                                                  product.thumbnail_img
                                              }
                                            })
                                          : _vm._e()
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c("div", [
                                          _c("p", [
                                            _vm._v(
                                              "\n                                                        Price :\n                                                        "
                                            ),
                                            _c("strong", [
                                              _vm._v(
                                                " " +
                                                  _vm._s(product.price) +
                                                  " "
                                              )
                                            ])
                                          ]),
                                          _vm._v(" "),
                                          _c("p", [
                                            _vm._v(
                                              "\n                                                        Discount :\n                                                        "
                                            ),
                                            _c("strong", [
                                              _vm._v(
                                                "\n                                                            " +
                                                  _vm._s(product.discount) +
                                                  "\n                                                        "
                                              )
                                            ])
                                          ]),
                                          _vm._v(" "),
                                          _c("p", [
                                            _vm._v(
                                              "\n                                                        Sale Price :\n                                                        "
                                            ),
                                            _c("strong", [
                                              _vm._v(
                                                "\n                                                            " +
                                                  _vm._s(product.sale_price) +
                                                  "\n                                                        "
                                              )
                                            ])
                                          ]),
                                          _vm._v(" "),
                                          product.purchase_item.length > 0
                                            ? _c("p", [
                                                _vm._v(
                                                  "\n                                                        purchase price\n                                                        "
                                                ),
                                                _c("strong", [
                                                  _vm._v(
                                                    "\n                                                            " +
                                                      _vm._s(
                                                        _vm.purchasePrice(
                                                          product.purchase_item
                                                        )
                                                      ) +
                                                      "\n                                                        "
                                                  )
                                                ])
                                              ])
                                            : _vm._e()
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        product.stock <= 5
                                          ? _c(
                                              "span",
                                              {
                                                staticClass:
                                                  "badge badge-danger"
                                              },
                                              [_vm._v(_vm._s(product.stock))]
                                            )
                                          : _c(
                                              "span",
                                              {
                                                staticClass:
                                                  "badge badge-success"
                                              },
                                              [_vm._v(_vm._s(product.stock))]
                                            )
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c(
                                          "select",
                                          {
                                            on: {
                                              change: function($event) {
                                                return _vm.selectAction(
                                                  $event,
                                                  product
                                                )
                                              }
                                            }
                                          },
                                          [
                                            _c(
                                              "option",
                                              { attrs: { value: "" } },
                                              [
                                                _vm._v(
                                                  "\n                                                        ---Select Action---\n                                                    "
                                                )
                                              ]
                                            ),
                                            _vm._v(" "),
                                            product.status != 1
                                              ? _c(
                                                  "option",
                                                  {
                                                    attrs: { value: "approved" }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Publish\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            product.status != 3
                                              ? _c(
                                                  "option",
                                                  { attrs: { value: "deny" } },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Unpublish\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _c(
                                              "option",
                                              { attrs: { value: "Edit" } },
                                              [_vm._v("Edit")]
                                            ),
                                            _vm._v(" "),
                                            _c(
                                              "option",
                                              {
                                                attrs: { value: "copy_product" }
                                              },
                                              [_vm._v(" Copy Product ")]
                                            ),
                                            _vm._v(" "),
                                            _c(
                                              "option",
                                              { attrs: { value: "delete" } },
                                              [
                                                _vm._v(
                                                  "\n                                                        Delete\n                                                    "
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ])
                                    ])
                                  })
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
                            _vm.search.length <= 0
                              ? _c("pagination", {
                                  attrs: { data: _vm.products, limit: 3 },
                                  on: {
                                    "pagination-change-page": _vm.productList
                                  }
                                })
                              : _c("pagination", {
                                  attrs: { data: _vm.products, limit: 3 },
                                  on: {
                                    "pagination-change-page": _vm.searchProducts
                                  }
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
                                "\n                                            Showing\n                                            "
                              ),
                              _c("strong", [_vm._v(_vm._s(_vm.products.from))]),
                              _vm._v(
                                " to\n                                            "
                              ),
                              _c("strong", [_vm._v(_vm._s(_vm.products.to))]),
                              _vm._v(
                                " of total\n                                            "
                              ),
                              _c("strong", [
                                _vm._v(_vm._s(_vm.products.total))
                              ]),
                              _vm._v(
                                " entries\n                                        "
                              )
                            ])
                          ]
                        )
                      ])
                    ])
                  ])
                ]
              )
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
          _vm._v("Dashboard ")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("Product Table")])
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
        _c("th", { attrs: { width: "30%" } }, [_vm._v("Basic Info.")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "15%" } }, [_vm._v("Image")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "25%" } }, [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "10%" } }, [_vm._v("Stock")]),
        _vm._v(" "),
        _c("th", { attrs: { width: "15%" } }, [_vm._v("Action")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/product/Product.vue":
/*!*******************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Product.vue ***!
  \*******************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Product.vue?vue&type=template&id=2c97bfb2&scoped=true& */ "./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true&");
/* harmony import */ var _Product_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Product.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& */ "./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Product_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "2c97bfb2",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/product/Product.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js&":
/*!********************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Product.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&":
/*!****************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& ***!
  \****************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=style&index=0&id=2c97bfb2&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_style_index_0_id_2c97bfb2_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true&":
/*!**************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true& ***!
  \**************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Product.vue?vue&type=template&id=2c97bfb2&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Product.vue?vue&type=template&id=2c97bfb2&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Product_vue_vue_type_template_id_2c97bfb2_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);