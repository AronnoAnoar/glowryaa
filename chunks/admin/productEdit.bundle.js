(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/productEdit"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @ckeditor/ckeditor5-build-classic */ "./node_modules/@ckeditor/ckeditor5-build-classic/build/ckeditor.js");
/* harmony import */ var _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_3__);


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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



vue__WEBPACK_IMPORTED_MODULE_1___default.a.component(vform__WEBPACK_IMPORTED_MODULE_2__["HasError"].name, vform__WEBPACK_IMPORTED_MODULE_2__["HasError"]);
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    this.getProductDetails();
    this.getCategories();
    this.getAttributes();
    this.attributeWiseVariants();
    this.getBrand();
  },
  data: function data() {
    return {
      form: new vform__WEBPACK_IMPORTED_MODULE_2__["Form"]({
        product_id: "",
        name: '',
        video_url: '',
        slug: '',
        product_position: '',
        product_code: '',
        merchant_id: '',
        category_id: '',
        sub_category_id: '',
        sub_sub_category_id: '',
        merchant_price: '',
        sale_price: '',
        reselling_price: '',
        is_manual_stock: 1,
        stock: '',
        discount: '',
        price: '',
        details: '',
        images: [0, 1, 2, 3, 4, 5],
        size_chart: '',
        combo_products: [],
        is_combo: 0,
        variants: [],
        attribute_id: 1,
        brand_id: '',
        is_free_delivery: 0,
        product_attributes: [],
        meta_title: "",
        meta_description: "",
        meta_key: ""
      }),
      img_items: [0, 1, 2, 3, 4, 5],
      base_url: this.$store.state.image_base_link,
      preview_images: [0, 1, 2, 3, 4, 5],
      upload_index: 0,
      loading: true,
      existing_images: '',
      combo_product_code: '',
      exist_combo_products: [],
      error: '',
      categories: '',
      subcategories: '',
      subSubCategories: '',
      attributes: '',
      editor: _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_3___default.a,
      editorConfig: {},
      sizes: '',
      colors: '',
      variants: '',
      brands: ''
    };
  },
  methods: {
    addVariant: function addVariant(variant) {
      var add_variant = {
        variant_id: variant.id,
        price: 0
      };
      this.form.variants.push(add_variant);
    },
    checkExistItem: function checkExistItem(variant_id, variant_index) {
      var _this = this;

      var exist_item = false;
      this.form.variants.forEach(function (item) {
        if (item.variant_id == variant_id) {
          exist_item = true;
          _this.variants[variant_index].status = 0;
        }
      });
      return exist_item;
    },
    updateProduct: function updateProduct() {
      var _this2 = this;

      this.$Progress.start();
      this.form.post('/api/update/product/' + this.$route.params.id).then(function (resp) {
        // console.log(resp);
        if (resp.data.success == true) {
          _this2.$toastr.s(resp.data.message);

          return window.history.back();
        }

        _this2.$Progress.finish();
      })["catch"](function (error) {
        _this2.$toastr.e(error.response.data.message);
      });
    },
    getProductDetails: function getProductDetails() {
      var _this3 = this;

      axios.get('/edit/product/' + this.$route.params.id).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          var product = resp.data.product; //combo products

          _this3.combo_product_code = product.product_code;
          _this3.exist_combo_products = resp.data.combo_products;
          _this3.form.combo_products = resp.data.combo_products;
          _this3.form.name = product.name;
          _this3.form.product_id = product.id;
          _this3.form.video_url = product.video_url ? product.video_url : '';
          _this3.form.product_code = product.product_code;
          _this3.form.slug = product.slug;
          _this3.form.category_id = product.category_id;
          _this3.form.is_combo = product.is_combo;
          _this3.form.sub_category_id = product.sub_category_id ? product.sub_category_id : '';
          _this3.form.brand_id = product.brand_id ? product.brand_id : '';
          _this3.form.price = product.price;
          _this3.form.discount = product.discount ? product.discount : 0;
          _this3.form.sale_price = product.sale_price;
          _this3.form.is_manual_stock = product.is_manual_stock;
          _this3.form.stock = product.stock;
          _this3.form.is_free_delivery = product.is_free_delivery;
          _this3.form.reselling_price = product.reselling_price;
          _this3.form.product_position = product.product_position;
          _this3.form.details = product.details;
          _this3.form.meta_title = product.meta_title;
          _this3.form.meta_description = product.meta_description;
          _this3.form.meta_key = product.meta_key;

          if (product.sub_category_id !== null) {
            _this3.categoryWiseSubCategory();
          }

          if (product.sub_sub_category_id !== null) {
            _this3.subCategoryWiseSubSUbCategory();

            _this3.form.sub_sub_category_id = product.sub_sub_category_id;
          }

          var images = resp.data.images;

          for (var i = 0; i < images.length; i++) {
            _this3.preview_images.splice(i, 1, images[i].image);
          }

          _this3.existing_images = images;

          if (resp.data.product.product_variant.length > 0) {
            for (var _i = 0; _i <= resp.data.product.product_variant.length; _i++) {
              var selectedVariant = {
                variant_id: resp.data.product.product_variant[_i].variant_id,
                price: resp.data.product.product_variant[_i].price
              };

              _this3.form.variants.push(selectedVariant);
            }
          }
        }
      });
    },
    deleteProductImage: function deleteProductImage(img, idx) {
      var _this4 = this;

      Swal.fire({
        title: 'Are you sure?',
        text: "You wan't to permanent delete this ?",
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes!'
      }).then(function (result) {
        if (result.value) {
          // console.log(result.value);
          _this4.existing_images.forEach(function (element) {
            element.image;

            if (element.image == img) {
              axios.get('/api/delete/product/image/' + element.id).then(function (resp) {
                // console.log(resp);
                if (resp.data.success == true) {
                  _this4.$toastr.s(resp.data.message);

                  _this4.preview_images.splice(idx, 1, idx);
                }
              })["catch"](function (error) {
                _this4.$toastr.s(error.response.data.message);
              });
            }
          });
        } else {
          _this4.$toastr.w('OK ! no action here');
        }
      });
    },
    salePrice: function salePrice() {
      var price = this.form.price.length <= 0 ? 0 : parseInt(this.form.price);
      var discount = this.form.discount.length <= 0 ? 0 : parseInt(this.form.discount);

      if (price < discount) {
        this.$toastr.e('discount is greater than sale price ');
        this.form.discount = 0;
        this.form.sale_price = price;
      } else {
        this.form.sale_price = price - discount;
      }
    },
    getCategories: function getCategories() {
      var _this5 = this;

      axios.get('/api/common/data/fetch', {
        params: {
          type: 1,
          table: 'categories'
        }
      }).then(function (resp) {
        if (resp.data.success == true) {
          _this5.categories = resp.data.data;
          _this5.loading = false;
        }
      });
    },
    getAttributes: function getAttributes() {
      var _this6 = this;

      axios.get('/api/common/data/fetch', {
        params: {
          type: 1,
          table: 'attributes'
        }
      }).then(function (resp) {
        if (resp.data.success == true) {
          _this6.attributes = resp.data.data;
        }
      });
    },
    categoryWiseSubCategory: function categoryWiseSubCategory() {
      var _this7 = this;

      axios.get('/category/wise/subCategory/' + this.form.category_id).then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          if (resp.data.subCategories.length > 0) {
            _this7.subcategories = resp.data.subCategories;
          } else {
            _this7.subcategories = '';
          }
        }
      })["catch"](function (error) {
        _this7.$toastr.s(error.response.data.message);
      });
    },
    subCategoryWiseSubSUbCategory: function subCategoryWiseSubSUbCategory() {
      var _this8 = this;

      axios.get('/subCategory/wise/subSubCategory/' + this.form.sub_category_id).then(function (resp) {
        // console.log(resp.data.subsubcategories);
        if (resp.data.status == 'SUCCESS') {
          if (resp.data.subsubcategories.length > 0) {
            _this8.subSubCategories = resp.data.subsubcategories;
          } else {
            _this8.subSubCategories = '';
          }
        } else {
          // console.log('error');
          _this8.subSubCategories = '';
        }
      })["catch"](function (error) {
        _this8.$toastr.s(error.response.data.message);
      });
    },
    getBrand: function getBrand() {
      var _this9 = this;

      axios.get('/api/brand/list').then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this9.brands = resp.data.brands;
        }
      })["catch"](function (error) {
        _this9.$toastr.e(error.response.data.message);
      });
    },
    attributeWiseVariants: function attributeWiseVariants() {
      var _this10 = this;

      axios.get('/attribute/wise/variant/' + this.form.attribute_id).then(function (resp) {
        console.log(resp);

        if (resp.data.status == 'SUCCESS') {
          _this10.variants = resp.data.variants;
        }
      });
    },
    actionToImageUpload: function actionToImageUpload(index) {
      this.upload_index = index;
      document.getElementById('admin_product_add_img_upload_' + index).click();
    },
    uploadImage: function uploadImage(e) {
      var _this11 = this;

      var file = e.target.files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);

      reader.onload = function (evt) {
        var img = new Image();

        img.onload = function () {
          _this11.form.images.splice(_this11.upload_index, 1, evt.target.result);

          _this11.preview_images.splice(_this11.upload_index, 1, evt.target.result);
        };

        img.src = evt.target.result;
      };
    },
    uploadSizeChart: function uploadSizeChart(e) {
      var file = e.target.files[0];
      this.form.size_chart = file;
    },
    deleteProductVariant: function deleteProductVariant(product_id, variant, index) {
      var _this12 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return axios.get("/api/delete/product/variant/" + product_id + "/" + variant.variant_id).then(function (resp) {
                  console.log(resp);

                  if (resp.data.success == true) {
                    _this12.$toastr.s(resp.data.message);

                    _this12.form.variants.splice(index, 1);
                  }
                })["catch"](function (error) {
                  _this12.$toastr.e(error.response.data.message);
                });

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    goBack: function goBack() {
      return window.history.back();
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.img_dlt[data-v-51845852] {\r\n    font-size: 13px;\r\n    padding: 3px 5px;\r\n    background: #dd4747;\r\n    color: #fff;\r\n    width: 30px;\r\n    height: 30px;\r\n    border-radius: 50%;\r\n    transition: 0.5s;\r\n    cursor: pointer;\n}\n.img_dlt[data-v-51845852]:hover {\r\n    background: red;\n}\n.p_img_upload_field[data-v-51845852] {\r\n    display: none;\n}\n.img_caption[data-v-51845852] {\r\n    margin-top: 5px;\r\n    margin-left: 35px;\n}\n.upload_img_container[data-v-51845852] {\r\n    width: 150px;\r\n    height: 150px;\r\n    border: 2px dotted #259dab;\r\n    cursor: pointer;\n}\n.plus_img[data-v-51845852] {\r\n    position: absolute;\r\n    width: 40px !important;\r\n    height: 40px !important;\r\n    margin: 18% !important;\n}\n.upload_img_container > img[data-v-51845852] {\r\n    width: 140px;\r\n    height: 140px;\r\n    margin: 2px;\n}\n.upload_img_container > p[data-v-51845852] {\r\n    margin-bottom: 0px;\n}\ninput[data-v-51845852],\r\nselect[data-v-51845852] {\r\n    height: 40px !important ;\n}\n.mb-2[data-v-51845852] {\r\n    margin-bottom: 5px !important;\n}\ni.fa.fa-cloud-upload[data-v-51845852] {\r\n    font-size: 85px;\n}\n#file[data-v-51845852] {\r\n    opacity: 0;\r\n    z-index: -1;\n}\n.images-preview[data-v-51845852] {\r\n    display: flex;\r\n    flex-wrap: wrap;\r\n    margin-top: 20px;\n}\ninput[data-v-51845852] {\r\n    height: 40px !important ;\n}\n.mb-2[data-v-51845852] {\r\n    margin-bottom: 5px !important;\n}\n.height[data-v-51845852] {\r\n    height: 360px !important;\n}\ni.fa.fa-cloud-upload[data-v-51845852] {\r\n    font-size: 85px;\n}\n.form-check-input[data-v-51845852] {\r\n    height: 12px !important;\n}\n@media screen and (max-width: 1500px) {\n.plus_img[data-v-51845852] {\r\n        position: absolute;\r\n        width: 40px !important;\r\n        height: 40px !important;\r\n        margin: 30% !important;\n}\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true&":
/*!*****************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true& ***!
  \*****************************************************************************************************************************************************************************************************************************************/
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
          _vm.loading
            ? _c(
                "h1",
                {
                  staticStyle: { "text-align": "center", "font-size": "50px" }
                },
                [_c("i", { staticClass: "fa fa-spinner fa-spin" })]
              )
            : _c(
                "form",
                {
                  attrs: { enctype: "multipart/form-data" },
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.updateProduct($event)
                    }
                  }
                },
                [
                  _vm.error
                    ? _c(
                        "div",
                        {
                          staticClass: "alert alert-danger alert-dismissible",
                          attrs: { role: "alert" }
                        },
                        [
                          _vm._v(
                            "\n                    " +
                              _vm._s(_vm.error) +
                              "\n                    "
                          ),
                          _c(
                            "span",
                            {
                              staticClass: "close",
                              staticStyle: { color: "#fff" },
                              attrs: {
                                "aria-hidden": "true",
                                "data-dismiss": "alert",
                                "aria-label": "Close"
                              }
                            },
                            [_vm._v("×")]
                          )
                        ]
                      )
                    : _vm._e(),
                  _vm._v(" "),
                  _c("div", { staticClass: "row justify-content-center" }, [
                    _c("div", { staticClass: "col-lg-12" }, [
                      _c("div", { staticClass: "box box-primary" }, [
                        _vm._m(1),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "row" }, [
                            _vm._m(2),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-10" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.name,
                                    expression: "form.name"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  required: "",
                                  placeholder: "Ex: formal shirt"
                                },
                                domProps: { value: _vm.form.name },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "name",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ])
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _vm._m(3),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.slug,
                                    expression: "form.slug"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  required: "",
                                  placeholder: "slug"
                                },
                                domProps: { value: _vm.form.slug },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "slug",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _vm.brands.length
                              ? _c("div", { staticClass: "col-md-3" }, [
                                  _c(
                                    "select",
                                    {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.brand_id,
                                          expression: "form.brand_id"
                                        }
                                      ],
                                      staticClass: "form-control",
                                      on: {
                                        change: function($event) {
                                          var $$selectedVal = Array.prototype.filter
                                            .call(
                                              $event.target.options,
                                              function(o) {
                                                return o.selected
                                              }
                                            )
                                            .map(function(o) {
                                              var val =
                                                "_value" in o
                                                  ? o._value
                                                  : o.value
                                              return val
                                            })
                                          _vm.$set(
                                            _vm.form,
                                            "brand_id",
                                            $event.target.multiple
                                              ? $$selectedVal
                                              : $$selectedVal[0]
                                          )
                                        }
                                      }
                                    },
                                    [
                                      _c(
                                        "option",
                                        { attrs: { value: "", disabled: "" } },
                                        [_vm._v("select brand")]
                                      ),
                                      _vm._v(" "),
                                      _vm._l(_vm.brands, function(
                                        brand,
                                        index
                                      ) {
                                        return _c(
                                          "option",
                                          {
                                            key: index,
                                            domProps: { value: brand.id }
                                          },
                                          [
                                            _vm._v(
                                              "\n                                                " +
                                                _vm._s(brand.name) +
                                                "\n                                            "
                                            )
                                          ]
                                        )
                                      })
                                    ],
                                    2
                                  )
                                ])
                              : _vm._e()
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _vm._m(4),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.video_url,
                                    expression: "form.video_url"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  placeholder:
                                    "Only youtube embed link  is accepted - Upload short videos to showcase your products."
                                },
                                domProps: { value: _vm.form.video_url },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "video_url",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.product_code,
                                    expression: "form.product_code"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  placeholder: "product code"
                                },
                                domProps: { value: _vm.form.product_code },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "product_code",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-4" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.product_position,
                                    expression: "form.product_position"
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  placeholder: "product position"
                                },
                                domProps: { value: _vm.form.product_position },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "product_position",
                                      $event.target.value
                                    )
                                  }
                                }
                              })
                            ])
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _vm._m(5),
                            _vm._v(" "),
                            _c(
                              "div",
                              { staticClass: "col-md-3" },
                              [
                                _c(
                                  "select",
                                  {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.category_id,
                                        expression: "form.category_id"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    class: {
                                      "is-invalid": _vm.form.errors.has(
                                        "category_id"
                                      )
                                    },
                                    attrs: {
                                      name: "category_id",
                                      required: ""
                                    },
                                    on: {
                                      change: [
                                        function($event) {
                                          var $$selectedVal = Array.prototype.filter
                                            .call(
                                              $event.target.options,
                                              function(o) {
                                                return o.selected
                                              }
                                            )
                                            .map(function(o) {
                                              var val =
                                                "_value" in o
                                                  ? o._value
                                                  : o.value
                                              return val
                                            })
                                          _vm.$set(
                                            _vm.form,
                                            "category_id",
                                            $event.target.multiple
                                              ? $$selectedVal
                                              : $$selectedVal[0]
                                          )
                                        },
                                        function($event) {
                                          return _vm.categoryWiseSubCategory()
                                        }
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
                                    _vm._l(_vm.categories, function(
                                      category,
                                      category_index
                                    ) {
                                      return _c(
                                        "option",
                                        {
                                          key: category_index,
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
                                ),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: {
                                    form: _vm.form,
                                    field: "category_id"
                                  }
                                })
                              ],
                              1
                            ),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.sub_category_id,
                                      expression: "form.sub_category_id"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  on: {
                                    change: [
                                      function($event) {
                                        var $$selectedVal = Array.prototype.filter
                                          .call($event.target.options, function(
                                            o
                                          ) {
                                            return o.selected
                                          })
                                          .map(function(o) {
                                            var val =
                                              "_value" in o ? o._value : o.value
                                            return val
                                          })
                                        _vm.$set(
                                          _vm.form,
                                          "sub_category_id",
                                          $event.target.multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        )
                                      },
                                      function($event) {
                                        return _vm.subCategoryWiseSubSUbCategory()
                                      }
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
                                  _vm._l(_vm.subcategories, function(
                                    subcategory,
                                    sub_index
                                  ) {
                                    return _c(
                                      "option",
                                      {
                                        key: sub_index,
                                        domProps: { value: subcategory.id }
                                      },
                                      [
                                        _vm._v(
                                          "\n                                                " +
                                            _vm._s(subcategory.name) +
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
                            _c("div", { staticClass: "col-md-4" }, [
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.sub_sub_category_id,
                                      expression: "form.sub_sub_category_id"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  on: {
                                    change: function($event) {
                                      var $$selectedVal = Array.prototype.filter
                                        .call($event.target.options, function(
                                          o
                                        ) {
                                          return o.selected
                                        })
                                        .map(function(o) {
                                          var val =
                                            "_value" in o ? o._value : o.value
                                          return val
                                        })
                                      _vm.$set(
                                        _vm.form,
                                        "sub_sub_category_id",
                                        $event.target.multiple
                                          ? $$selectedVal
                                          : $$selectedVal[0]
                                      )
                                    }
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
                                  _vm._l(_vm.subSubCategories, function(
                                    subSubCategory,
                                    sub_sub_index
                                  ) {
                                    return _c(
                                      "option",
                                      {
                                        key: sub_sub_index,
                                        domProps: { value: subSubCategory.id }
                                      },
                                      [
                                        _vm._v(
                                          "\n                                                " +
                                            _vm._s(subSubCategory.name) +
                                            "\n                                            "
                                        )
                                      ]
                                    )
                                  })
                                ],
                                2
                              )
                            ])
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _vm._m(6),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model.number",
                                    value: _vm.form.price,
                                    expression: "form.price",
                                    modifiers: { number: true }
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  required: "",
                                  placeholder: "price"
                                },
                                domProps: { value: _vm.form.price },
                                on: {
                                  keyup: _vm.salePrice,
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "price",
                                      _vm._n($event.target.value)
                                    )
                                  },
                                  blur: function($event) {
                                    return _vm.$forceUpdate()
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model.number",
                                    value: _vm.form.discount,
                                    expression: "form.discount",
                                    modifiers: { number: true }
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  placeholder: "discount price"
                                },
                                domProps: { value: _vm.form.discount },
                                on: {
                                  keyup: _vm.salePrice,
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "discount",
                                      _vm._n($event.target.value)
                                    )
                                  },
                                  blur: function($event) {
                                    return _vm.$forceUpdate()
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-4" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model.number",
                                    value: _vm.form.sale_price,
                                    expression: "form.sale_price",
                                    modifiers: { number: true }
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  type: "text",
                                  required: "",
                                  readonly: "",
                                  placeholder: "sale price"
                                },
                                domProps: { value: _vm.form.sale_price },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "sale_price",
                                      _vm._n($event.target.value)
                                    )
                                  },
                                  blur: function($event) {
                                    return _vm.$forceUpdate()
                                  }
                                }
                              })
                            ])
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-md-2" }, [
                              _vm._v("Stock Manage, Free Delivery")
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.is_manual_stock,
                                      expression: "form.is_manual_stock"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  on: {
                                    change: function($event) {
                                      var $$selectedVal = Array.prototype.filter
                                        .call($event.target.options, function(
                                          o
                                        ) {
                                          return o.selected
                                        })
                                        .map(function(o) {
                                          var val =
                                            "_value" in o ? o._value : o.value
                                          return val
                                        })
                                      _vm.$set(
                                        _vm.form,
                                        "is_manual_stock",
                                        $event.target.multiple
                                          ? $$selectedVal
                                          : $$selectedVal[0]
                                      )
                                    }
                                  }
                                },
                                [
                                  _c("option", { attrs: { value: "1" } }, [
                                    _vm._v("manual stock")
                                  ]),
                                  _vm._v(" "),
                                  _c("option", { attrs: { value: "0" } }, [
                                    _vm._v("stock by purchase")
                                  ])
                                ]
                              )
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model.number",
                                    value: _vm.form.stock,
                                    expression: "form.stock",
                                    modifiers: { number: true }
                                  }
                                ],
                                staticClass: "form-control",
                                attrs: {
                                  placeholder: "stock quantity",
                                  readonly:
                                    _vm.form.is_manual_stock == 0
                                      ? true
                                      : false,
                                  type: "text"
                                },
                                domProps: { value: _vm.form.stock },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "stock",
                                      _vm._n($event.target.value)
                                    )
                                  },
                                  blur: function($event) {
                                    return _vm.$forceUpdate()
                                  }
                                }
                              })
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-4" }, [
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.is_free_delivery,
                                      expression: "form.is_free_delivery"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  on: {
                                    change: function($event) {
                                      var $$selectedVal = Array.prototype.filter
                                        .call($event.target.options, function(
                                          o
                                        ) {
                                          return o.selected
                                        })
                                        .map(function(o) {
                                          var val =
                                            "_value" in o ? o._value : o.value
                                          return val
                                        })
                                      _vm.$set(
                                        _vm.form,
                                        "is_free_delivery",
                                        $event.target.multiple
                                          ? $$selectedVal
                                          : $$selectedVal[0]
                                      )
                                    }
                                  }
                                },
                                [
                                  _c("option", { attrs: { value: "1" } }, [
                                    _vm._v("Yes")
                                  ]),
                                  _vm._v(" "),
                                  _c("option", { attrs: { value: "0" } }, [
                                    _vm._v("No")
                                  ])
                                ]
                              )
                            ])
                          ]),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _vm._m(7),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-md-3" }, [
                              _c(
                                "div",
                                { staticStyle: { "margin-top": "15%" } },
                                [
                                  _c(
                                    "select",
                                    {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.attribute_id,
                                          expression: "form.attribute_id"
                                        }
                                      ],
                                      staticClass: "form-control",
                                      attrs: { name: "attribute" },
                                      on: {
                                        change: [
                                          function($event) {
                                            var $$selectedVal = Array.prototype.filter
                                              .call(
                                                $event.target.options,
                                                function(o) {
                                                  return o.selected
                                                }
                                              )
                                              .map(function(o) {
                                                var val =
                                                  "_value" in o
                                                    ? o._value
                                                    : o.value
                                                return val
                                              })
                                            _vm.$set(
                                              _vm.form,
                                              "attribute_id",
                                              $event.target.multiple
                                                ? $$selectedVal
                                                : $$selectedVal[0]
                                            )
                                          },
                                          function($event) {
                                            return _vm.attributeWiseVariants()
                                          }
                                        ]
                                      }
                                    },
                                    [
                                      _c(
                                        "option",
                                        { attrs: { value: "", disabled: "" } },
                                        [
                                          _vm._v(
                                            "\n                                                    select attribute\n                                                "
                                          )
                                        ]
                                      ),
                                      _vm._v(" "),
                                      _vm._l(_vm.attributes, function(
                                        attribute,
                                        index
                                      ) {
                                        return _c(
                                          "option",
                                          {
                                            key: index,
                                            domProps: { value: attribute.id }
                                          },
                                          [
                                            _vm._v(
                                              "\n                                                    " +
                                                _vm._s(attribute.name) +
                                                "\n                                                "
                                            )
                                          ]
                                        )
                                      })
                                    ],
                                    2
                                  )
                                ]
                              )
                            ]),
                            _vm._v(" "),
                            _vm.variants
                              ? _c(
                                  "div",
                                  { staticClass: "col-md-7" },
                                  _vm._l(_vm.variants, function(
                                    variant,
                                    v_idx
                                  ) {
                                    return _c(
                                      "div",
                                      { key: v_idx, staticClass: "v_check" },
                                      [
                                        _c(
                                          "label",
                                          { staticClass: "v_check_label" },
                                          [
                                            _c("input", {
                                              staticClass: "v_check_input",
                                              attrs: {
                                                type: "checkbox",
                                                name: "variant[]",
                                                disabled:
                                                  _vm.checkExistItem(
                                                    variant.id,
                                                    v_idx
                                                  ) == true
                                              },
                                              domProps: { value: variant.id },
                                              on: {
                                                click: function($event) {
                                                  return _vm.addVariant(variant)
                                                }
                                              }
                                            }),
                                            _vm._v(" "),
                                            _c(
                                              "span",
                                              { staticClass: "v_check_name" },
                                              [
                                                _vm._v(
                                                  "\n                                                    " +
                                                    _vm._s(variant.name) +
                                                    "\n                                                "
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ]
                                    )
                                  }),
                                  0
                                )
                              : _vm._e()
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-6" }, [
                              _c(
                                "table",
                                {
                                  staticClass:
                                    "table table-bordered table-striped table-bordered table-hover text-center"
                                },
                                [
                                  _vm._m(8),
                                  _vm._v(" "),
                                  _c(
                                    "tbody",
                                    _vm._l(_vm.form.variants, function(
                                      variant,
                                      v_index
                                    ) {
                                      return _c("tr", { key: v_index }, [
                                        _c("td", [_vm._v(_vm._s(v_index + 1))]),
                                        _vm._v(" "),
                                        _c(
                                          "td",
                                          _vm._l(_vm.variants, function(
                                            all_variant,
                                            var_index
                                          ) {
                                            return _c(
                                              "span",
                                              { key: var_index },
                                              [
                                                variant.variant_id ==
                                                all_variant.id
                                                  ? _c("span", [
                                                      _vm._v(
                                                        "\n                                                                " +
                                                          _vm._s(
                                                            all_variant.name
                                                          ) +
                                                          "\n                                                            "
                                                      )
                                                    ])
                                                  : _vm._e()
                                              ]
                                            )
                                          }),
                                          0
                                        ),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c("input", {
                                            directives: [
                                              {
                                                name: "model",
                                                rawName: "v-model",
                                                value:
                                                  _vm.form.variants[v_index]
                                                    .price,
                                                expression:
                                                  "\n                                                                form.variants[v_index].price\n                                                            "
                                              }
                                            ],
                                            staticClass: "form-control",
                                            attrs: {
                                              type: "number",
                                              placeholder: "101"
                                            },
                                            domProps: {
                                              value:
                                                _vm.form.variants[v_index].price
                                            },
                                            on: {
                                              input: function($event) {
                                                if ($event.target.composing) {
                                                  return
                                                }
                                                _vm.$set(
                                                  _vm.form.variants[v_index],
                                                  "price",
                                                  $event.target.value
                                                )
                                              }
                                            }
                                          })
                                        ]),
                                        _vm._v(" "),
                                        _c("td", [
                                          _c("i", {
                                            staticClass:
                                              "fa fa-trash variant_dlt",
                                            on: {
                                              click: function($event) {
                                                $event.preventDefault()
                                                return _vm.deleteProductVariant(
                                                  _vm.form.product_id,
                                                  variant,
                                                  v_index
                                                )
                                              }
                                            }
                                          })
                                        ])
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
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "row" }, [
                    _c("div", { staticClass: "col-lg-12" }, [
                      _c("div", { staticClass: "box box-primary" }, [
                        _vm._m(9),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-body" }, [
                          _vm._m(10),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "row img_upload_section" },
                            _vm._l(_vm.img_items, function(index, idx) {
                              return _c(
                                "div",
                                { key: idx, staticClass: "col-md-2" },
                                [
                                  _c(
                                    "div",
                                    {
                                      staticClass: "upload_img_container",
                                      on: {
                                        click: function($event) {
                                          return _vm.actionToImageUpload(index)
                                        }
                                      }
                                    },
                                    [
                                      _c("img", {
                                        staticClass: "plus_img",
                                        attrs: {
                                          src:
                                            _vm.base_url +
                                            "images/static/plus.png"
                                        }
                                      }),
                                      _vm._v(" "),
                                      _c("input", {
                                        staticClass: "p_img_upload_field",
                                        attrs: {
                                          type: "file",
                                          id:
                                            "admin_product_add_img_upload_" +
                                            index
                                        },
                                        on: { change: _vm.uploadImage }
                                      }),
                                      _vm._v(" "),
                                      _vm.preview_images[index].length > 10
                                        ? _c("img", {
                                            attrs: {
                                              src:
                                                _vm.preview_images[
                                                  index
                                                ].includes("images/products") ==
                                                true
                                                  ? _vm.base_url +
                                                    _vm.preview_images[index]
                                                  : _vm.preview_images[index]
                                            }
                                          })
                                        : _vm._e()
                                    ]
                                  ),
                                  _vm._v(" "),
                                  index == 0
                                    ? _c("p", { staticClass: "img_caption" }, [
                                        _vm._v(
                                          "\n                                            Cover Photo\n                                            "
                                        ),
                                        _vm.preview_images[index].length > 10 &&
                                        _vm.preview_images[index].match(
                                          "images/products"
                                        )
                                          ? _c(
                                              "span",
                                              { staticClass: "img_dlt" },
                                              [
                                                _c("i", {
                                                  staticClass: "fa fa-trash",
                                                  on: {
                                                    click: function($event) {
                                                      return _vm.deleteProductImage(
                                                        _vm.preview_images[
                                                          index
                                                        ],
                                                        idx
                                                      )
                                                    }
                                                  }
                                                })
                                              ]
                                            )
                                          : _vm._e()
                                      ])
                                    : _c("p", { staticClass: "img_caption" }, [
                                        _vm._v(
                                          "\n                                            Image " +
                                            _vm._s(index + 1) +
                                            "\n                                            "
                                        ),
                                        _vm.preview_images[index].length > 10 &&
                                        _vm.preview_images[index].match(
                                          "images/products"
                                        )
                                          ? _c(
                                              "span",
                                              { staticClass: "img_dlt" },
                                              [
                                                _c("i", {
                                                  staticClass: "fa fa-trash",
                                                  on: {
                                                    click: function($event) {
                                                      return _vm.deleteProductImage(
                                                        _vm.preview_images[
                                                          index
                                                        ],
                                                        idx
                                                      )
                                                    }
                                                  }
                                                })
                                              ]
                                            )
                                          : _vm._e()
                                      ])
                                ]
                              )
                            }),
                            0
                          )
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "col-lg-12" }, [
                      _c("div", { staticClass: "box box-primary" }, [
                        _vm._m(11),
                        _vm._v(" "),
                        _c(
                          "div",
                          { staticClass: "box-body" },
                          [
                            _c("ckeditor", {
                              class: {
                                "is-invalid": _vm.form.errors.has("details")
                              },
                              attrs: {
                                editor: _vm.editor,
                                name: "details",
                                config: _vm.editorConfig
                              },
                              model: {
                                value: _vm.form.details,
                                callback: function($$v) {
                                  _vm.$set(_vm.form, "details", $$v)
                                },
                                expression: "form.details"
                              }
                            }),
                            _vm._v(" "),
                            _c("has-error", {
                              attrs: { form: _vm.form, field: "details" }
                            })
                          ],
                          1
                        )
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "row" }, [
                    _c("div", { staticClass: "col-lg-12" }, [
                      _c("div", { staticClass: "box box-primary" }, [
                        _vm._m(12),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "col-12" }, [
                            _c(
                              "div",
                              { staticClass: "form-group" },
                              [
                                _c("label", [_vm._v("Meta Title")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.meta_title,
                                      expression: "form.meta_title"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has(
                                      "meta_title"
                                    )
                                  },
                                  attrs: {
                                    type: "text",
                                    name: "meta_title",
                                    autofocus: "",
                                    autocomplete: "off",
                                    placeholder:
                                      "Enter Title Max: 70 characters"
                                  },
                                  domProps: { value: _vm.form.meta_title },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "meta_title",
                                        $event.target.value
                                      )
                                    }
                                  }
                                }),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: { form: _vm.form, field: "meta_title" }
                                })
                              ],
                              1
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-12" }, [
                            _c(
                              "div",
                              { staticClass: "form-group" },
                              [
                                _c("label", [_vm._v("Meta Description")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.meta_description,
                                      expression: "form.meta_description"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has(
                                      "meta_description"
                                    )
                                  },
                                  attrs: {
                                    type: "text",
                                    name: "meta_description",
                                    autofocus: "",
                                    autocomplete: "off",
                                    placeholder:
                                      "Enter Description Max: 170 characters"
                                  },
                                  domProps: {
                                    value: _vm.form.meta_description
                                  },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "meta_description",
                                        $event.target.value
                                      )
                                    }
                                  }
                                }),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: {
                                    form: _vm.form,
                                    field: "meta_description"
                                  }
                                })
                              ],
                              1
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-12" }, [
                            _c(
                              "div",
                              { staticClass: "form-group" },
                              [
                                _c("label", [_vm._v("Meta Key")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.meta_key,
                                      expression: "form.meta_key"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has(
                                      "meta_key"
                                    )
                                  },
                                  attrs: {
                                    type: "text",
                                    name: "meta_key",
                                    autofocus: "",
                                    autocomplete: "off",
                                    placeholder: "Enter Key"
                                  },
                                  domProps: { value: _vm.form.meta_key },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "meta_key",
                                        $event.target.value
                                      )
                                    }
                                  }
                                }),
                                _vm._v(" "),
                                _c("has-error", {
                                  attrs: { form: _vm.form, field: "meta_key" }
                                })
                              ],
                              1
                            )
                          ])
                        ])
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _vm._m(13)
                ]
              )
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
          _c("i", { staticClass: "fa fa-list" }),
          _vm._v("product ")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("edit")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [_vm._v("Basic Information")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                                    Having accurate product information rises discover ability\n                                "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", [
        _vm._v("Product Name "),
        _c("b", { staticClass: "text-danger" }, [_vm._v("*")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", [
        _vm._v("Product Slug "),
        _c("b", { staticClass: "text-danger" }, [_vm._v("*")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", [_vm._v("Video URL, Code, Position")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", [
        _vm._v("Category "),
        _c("b", { staticClass: "text-danger" }, [_vm._v("*")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", [
        _vm._v("Price setup "),
        _c("b", { staticClass: "text-danger" }, [_vm._v("*")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "col-md-2" }, [
      _c("p", { staticStyle: { "margin-top": "26%" } }, [
        _vm._v("Attribute(size/color)")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("#")]),
        _vm._v(" "),
        _c("th", [_vm._v("Size")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("Delete")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("Product Images & Size Chart")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "row" }, [
      _c("div", { staticClass: "col-md-12" }, [
        _c("h4", [_vm._v("Images")]),
        _vm._v(" "),
        _c("p", [_vm._v("upload between 1 to 6 images")]),
        _vm._v(" "),
        _c("p", [
          _c("small", [
            _c("b", [
              _c("i", [
                _vm._v("(Every image can't be bigger than  2400px*2400px px)")
              ])
            ])
          ])
        ])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v(
          "\n                                    Product Details\n                                    "
        ),
        _c("b", { staticClass: "text-danger" }, [_vm._v("*")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v(
          "\n                                    SEO Info\n                                "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group text-center" }, [
      _c("button", { staticClass: "btn btn-primary" }, [_vm._v("Save")])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/product/Edit.vue":
/*!****************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Edit.vue ***!
  \****************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Edit.vue?vue&type=template&id=51845852&scoped=true& */ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true&");
/* harmony import */ var _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Edit.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& */ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "51845852",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/product/Edit.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&":
/*!*************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& ***!
  \*************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=style&index=0&id=51845852&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_51845852_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true&":
/*!***********************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true& ***!
  \***********************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=template&id=51845852&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/product/Edit.vue?vue&type=template&id=51845852&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_51845852_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);