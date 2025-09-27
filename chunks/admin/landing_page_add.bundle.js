(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/landing_page_add"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @ckeditor/ckeditor5-build-classic */ "./node_modules/@ckeditor/ckeditor5-build-classic/build/ckeditor.js");
/* harmony import */ var _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_2__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



vue__WEBPACK_IMPORTED_MODULE_0___default.a.component(vform__WEBPACK_IMPORTED_MODULE_1__["HasError"].name, vform__WEBPACK_IMPORTED_MODULE_1__["HasError"]);
/* harmony default export */ __webpack_exports__["default"] = ({
  name: "Setup",
  created: function created() {},
  data: function data() {
    return {
      form: new vform__WEBPACK_IMPORTED_MODULE_1__["Form"]({
        main_title: "",
        main_banner: "",
        hotline_title: "",
        hotline_phone: "",
        hotline_image: "",
        video_title: "",
        video_title_two: "",
        video_title_three: "",
        video_url: "",
        video_url_two: "",
        video_url_three: "",
        why_us_title: "",
        why_us_description: "",
        file: this.$store.state.image_base_link + 'images/static/no_image.png',
        hotline_image_preview: this.$store.state.image_base_link + 'images/static/no_image.png',
        image: "",
        solution_title: "",
        benefit_title: "",
        benefit_image_preview: this.$store.state.image_base_link + 'images/static/no_image.png',
        benefit_image: "",
        page_name: "",
        page_slug: ""
      }),
      error: "",
      image: "",
      disabled: true,
      image_size_text: "Image size must be 1440*800",
      base_url: this.$store.state.image_base_link,
      image_size: 1024,
      editor: _ckeditor_ckeditor5_build_classic__WEBPACK_IMPORTED_MODULE_2___default.a,
      editorConfig: {}
    };
  },
  methods: {
    add: function add() {
      var _this = this;

      this.form.post("/api/page/basic/setup/add", {
        transformRequest: [function (data, headers) {
          return objectToFormData(data);
        }]
      }).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this.$router.push({
            name: 'landing_page'
          });

          _this.$toasted.show(resp.data.message, {
            type: "success",
            position: "top-center",
            duration: 4000
          });
        }
      })["catch"](function (error) {
        _this.$toastr.e(error.response.data.message);
      });
    },
    uploadImage: function uploadImage(e) {
      var _this2 = this;

      var file = e.target.files[0];

      if (!file.type.match("image.*")) {
        Swal.fire({
          type: 'warning',
          text: 'this is not any kind of image'
        });
        return;
      }

      if (file.size / 1024 > this.image_size) {
        Swal.fire({
          type: 'warning',
          text: "File size can not be bigger then ".concat(this.image_size, "KB.Reference file size is'+file.size/1024 +'KB")
        });
        return;
      }

      var reader = new FileReader();
      reader.readAsDataURL(file);

      reader.onload = function (evt) {
        var img = new Image();

        img.onload = function () {
          console.log(img.width, img.height);

          _this2.setImage(file, evt);
        };

        img.src = evt.target.result;
      };
    },
    setImage: function setImage(file, evt) {
      this.disabled = false;
      this.form.image = file;
      this.form.file = evt.target.result;
    },
    uploadHotlineImg: function uploadHotlineImg(e) {
      var _this3 = this;

      var file = e.target.files[0];

      if (!file.type.match("image.*")) {
        Swal.fire({
          type: "warning",
          text: "this is not any kind of image"
        });
        return;
      }

      var reader = new FileReader();
      reader.readAsDataURL(file);

      reader.onload = function (evt) {
        var img = new Image();

        img.onload = function () {
          console.log(img.width, img.height);

          _this3.setHotline(file, evt);

          return;
        };

        img.src = evt.target.result;
      };
    },
    setHotline: function setHotline(file, evt) {
      this.disabled = false;
      this.form.hotline_image = file;
      this.form.hotline_image_preview = evt.target.result;
    },
    clickHotlineBg: function clickHotlineBg() {
      var hotline_bg_file = document.getElementById("upload_hotline_bg");
      hotline_bg_file.click();
    },
    uploadBenefitImg: function uploadBenefitImg(e) {
      var _this4 = this;

      var file = e.target.files[0];

      if (!file.type.match("image.*")) {
        Swal.fire({
          type: "warning",
          text: "this is not any kind of image"
        });
        return;
      }

      var reader = new FileReader();
      reader.readAsDataURL(file);

      reader.onload = function (evt) {
        var img = new Image();

        img.onload = function () {
          console.log(img.width, img.height);

          _this4.setBenefit(file, evt);

          return;
        };

        img.src = evt.target.result;
      };
    },
    setBenefit: function setBenefit(file, evt) {
      this.disabled = false;
      this.form.benefit_image = file;
      this.form.benefit_image_preview = evt.target.result;
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n#upload_icon[data-v-633de8b6] {\r\n  display: none;\n}\n.preview-image[data-v-633de8b6]{\r\n    height: 250px;\n}\n.preview-image img[data-v-633de8b6]{\r\n    height: 250px;\n}\n.mb-2[data-v-633de8b6] {\r\n    margin-bottom: 5px !important;\n}\nlabel.selectFile[data-v-633de8b6] {\r\n    width: 150px;\r\n    background: #fff;\r\n    color: #222d32;\r\n    padding: 10px 10px;\r\n    text-align: center;\r\n    font-size: 20px;\r\n    border-radius: 5px;\r\n    margin-top: 15px;\r\n    cursor: pointer;\r\n    border: 1px solid #222d32;\n}\nlabel.hotline_image[data-v-633de8b6]{\r\n    width: 150px;\r\n    background: #fff;\r\n    color: #222d32;\r\n    padding: 10px 10px;\r\n    text-align: center;\r\n    font-size: 20px;\r\n    border-radius: 5px;\r\n    margin-top: 15px;\r\n    cursor: pointer;\r\n    border: 1px solid #222d32;\n}\nlabel.benefit_image[data-v-633de8b6]{\r\n    width: 150px;\r\n    background: #fff;\r\n    color: #222d32;\r\n    padding: 10px 10px;\r\n    text-align: center;\r\n    font-size: 20px;\r\n    border-radius: 5px;\r\n    margin-top: 15px;\r\n    cursor: pointer;\r\n    border: 1px solid #222d32;\n}\r\n  ", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true&":
/*!*********************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true& ***!
  \*********************************************************************************************************************************************************************************************************************************************/
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
          _c("div", { staticClass: "row justify-content-center" }, [
            _c(
              "form",
              {
                on: {
                  submit: function($event) {
                    $event.preventDefault()
                    return _vm.add($event)
                  }
                }
              },
              [
                _c(
                  "div",
                  { staticClass: "col-lg-10 col-md-10 col-lg-offset-1" },
                  [
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(1),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", { attrs: { for: "page_name" } }, [
                                    _vm._v("Page name")
                                  ]),
                                  _vm._v(" "),
                                  _c("input", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.page_name,
                                        expression: "form.page_name"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    attrs: {
                                      type: "text",
                                      placeholder: "page name",
                                      name: "page_name"
                                    },
                                    domProps: { value: _vm.form.page_name },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "page_name",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: {
                                      form: _vm.form,
                                      field: "page_name"
                                    }
                                  })
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Title")]),
                                _vm._v(" "),
                                _c("textarea", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.main_title,
                                      expression: "form.main_title"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    name: "title",
                                    id: "title",
                                    cols: "30",
                                    rows: "3",
                                    placeholder: "title"
                                  },
                                  domProps: { value: _vm.form.main_title },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "main_title",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c("div", { staticClass: "preview-image" }, [
                                _c("img", {
                                  staticClass: "img-responsive",
                                  attrs: {
                                    src: _vm.form.file,
                                    alt: "main banner"
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _vm._m(2),
                                  _vm._v(" "),
                                  _c("input", {
                                    staticClass: "form-control",
                                    class: {
                                      "is-invalid": _vm.form.errors.has("image")
                                    },
                                    staticStyle: { display: "none" },
                                    attrs: {
                                      id: "file",
                                      type: "file",
                                      name: "image"
                                    },
                                    on: { change: _vm.uploadImage }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: { form: _vm.form, field: "image" }
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
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(3),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", [_vm._v("Title")]),
                                  _vm._v(" "),
                                  _c("input", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.hotline_title,
                                        expression: "form.hotline_title"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    attrs: {
                                      type: "text",
                                      placeholder: "hotline title"
                                    },
                                    domProps: { value: _vm.form.hotline_title },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "hotline_title",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: {
                                      form: _vm.form,
                                      field: "hotline_title"
                                    }
                                  })
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", [_vm._v("Phone")]),
                                  _vm._v(" "),
                                  _c("input", {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.form.hotline_phone,
                                        expression: "form.hotline_phone"
                                      }
                                    ],
                                    staticClass: "form-control",
                                    attrs: {
                                      type: "number",
                                      maxlength: "11",
                                      placeholder: "phone number"
                                    },
                                    domProps: { value: _vm.form.hotline_phone },
                                    on: {
                                      input: function($event) {
                                        if ($event.target.composing) {
                                          return
                                        }
                                        _vm.$set(
                                          _vm.form,
                                          "hotline_phone",
                                          $event.target.value
                                        )
                                      }
                                    }
                                  }),
                                  _vm._v(" "),
                                  _c("has-error", {
                                    attrs: {
                                      form: _vm.form,
                                      field: "hotline_phone"
                                    }
                                  })
                                ],
                                1
                              ),
                              _vm._v(" "),
                              _c("div", { staticClass: "preview-image" }, [
                                _c("img", {
                                  staticClass: "img-responsive",
                                  attrs: {
                                    src: _vm.form.hotline_image_preview,
                                    alt: "hotline image"
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _vm._m(4),
                                _vm._v(" "),
                                _c("input", {
                                  staticClass: "form-control",
                                  staticStyle: { display: "none" },
                                  attrs: {
                                    id: "upload_hotline_bg",
                                    type: "file",
                                    name: "hotline_image"
                                  },
                                  on: { change: _vm.uploadHotlineImg }
                                })
                              ])
                            ])
                          ])
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(5),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _vm.error
                            ? _c("div", { staticClass: "alert-danger alert" }, [
                                _vm._v(_vm._s(_vm.error))
                              ])
                            : _vm._e(),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Title")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.video_title,
                                      expression: "form.video_title"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "video title"
                                  },
                                  domProps: { value: _vm.form.video_title },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "video_title",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Video")]),
                                _vm._v(" "),
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
                                    placeholder: "video link"
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
                              ])
                            ])
                          ])
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(6),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _vm.error
                            ? _c("div", { staticClass: "alert-danger alert" }, [
                                _vm._v(_vm._s(_vm.error))
                              ])
                            : _vm._e(),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Title")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.video_title_two,
                                      expression: "form.video_title_two"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "video title"
                                  },
                                  domProps: { value: _vm.form.video_title_two },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "video_title_two",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Video")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.video_url_two,
                                      expression: "form.video_url_two"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "video link"
                                  },
                                  domProps: { value: _vm.form.video_url_two },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "video_url_two",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ])
                            ])
                          ])
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(7),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _vm.error
                            ? _c("div", { staticClass: "alert-danger alert" }, [
                                _vm._v(_vm._s(_vm.error))
                              ])
                            : _vm._e(),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Title")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.video_title_three,
                                      expression: "form.video_title_three"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "video title"
                                  },
                                  domProps: {
                                    value: _vm.form.video_title_three
                                  },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "video_title_three",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ]),
                              _vm._v(" "),
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Video")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.video_url_three,
                                      expression: "form.video_url_three"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "video link"
                                  },
                                  domProps: { value: _vm.form.video_url_three },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "video_url_three",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ])
                            ])
                          ])
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(8),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c("div", { staticClass: "form-group" }, [
                                _c("label", [_vm._v("Title")]),
                                _vm._v(" "),
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.why_us_title,
                                      expression: "form.why_us_title"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  attrs: {
                                    type: "text",
                                    placeholder: "why us title"
                                  },
                                  domProps: { value: _vm.form.why_us_title },
                                  on: {
                                    input: function($event) {
                                      if ($event.target.composing) {
                                        return
                                      }
                                      _vm.$set(
                                        _vm.form,
                                        "why_us_title",
                                        $event.target.value
                                      )
                                    }
                                  }
                                })
                              ])
                            ]),
                            _vm._v(" "),
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", [_vm._v("Description")]),
                                  _vm._v(" "),
                                  _c("ckeditor", {
                                    attrs: {
                                      editor: _vm.editor,
                                      name: "why_us_description",
                                      config: _vm.editorConfig
                                    },
                                    model: {
                                      value: _vm.form.why_us_description,
                                      callback: function($$v) {
                                        _vm.$set(
                                          _vm.form,
                                          "why_us_description",
                                          $$v
                                        )
                                      },
                                      expression: "form.why_us_description"
                                    }
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
                    _c("br"),
                    _vm._v(" "),
                    _c("div", { staticClass: "box box-primary" }, [
                      _vm._m(9),
                      _vm._v(" "),
                      _c("div", { staticClass: "box-body" }, [
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "form-group" }, [
                            _c("label", [_vm._v("Solutions Title")]),
                            _vm._v(" "),
                            _c("input", {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.form.solution_title,
                                  expression: "form.solution_title"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: {
                                type: "text",
                                placeholder: "solution title"
                              },
                              domProps: { value: _vm.form.solution_title },
                              on: {
                                input: function($event) {
                                  if ($event.target.composing) {
                                    return
                                  }
                                  _vm.$set(
                                    _vm.form,
                                    "solution_title",
                                    $event.target.value
                                  )
                                }
                              }
                            })
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "form-group" }, [
                            _c("label", [_vm._v("Benefit Title")]),
                            _vm._v(" "),
                            _c("input", {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.form.benefit_title,
                                  expression: "form.benefit_title"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: {
                                type: "text",
                                placeholder: "benefit title"
                              },
                              domProps: { value: _vm.form.benefit_title },
                              on: {
                                input: function($event) {
                                  if ($event.target.composing) {
                                    return
                                  }
                                  _vm.$set(
                                    _vm.form,
                                    "benefit_title",
                                    $event.target.value
                                  )
                                }
                              }
                            })
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "preview-image" }, [
                            _c("img", {
                              staticClass: "img-responsive",
                              attrs: {
                                src: _vm.form.benefit_image_preview,
                                alt: "benefit image"
                              }
                            })
                          ]),
                          _vm._v(" "),
                          _c(
                            "div",
                            {
                              staticClass: "form-group",
                              staticStyle: { display: "flex" }
                            },
                            [
                              _vm._m(10),
                              _vm._v(" "),
                              _c("input", {
                                staticClass: "form-control",
                                staticStyle: { display: "none" },
                                attrs: {
                                  id: "benefit_image",
                                  type: "file",
                                  name: "benefit_image"
                                },
                                on: { change: _vm.uploadBenefitImg }
                              }),
                              _vm._v(" "),
                              _c(
                                "h2",
                                {
                                  staticStyle: {
                                    "margin-left": "20px",
                                    "margin-top": "40px"
                                  }
                                },
                                [_vm._v("Benefit Image")]
                              )
                            ]
                          )
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("br"),
                    _vm._v(" "),
                    _c(
                      "button",
                      {
                        staticClass: "btn btn-primary btn-lg",
                        attrs: { disabled: _vm.form.busy, type: "submit" }
                      },
                      [
                        _vm.form.busy
                          ? _c("i", { staticClass: "fa fa-spin fa-spinner" })
                          : _vm._e(),
                        _vm._v("Submit\n            ")
                      ]
                    )
                  ]
                )
              ]
            )
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
            _vm._v("Dashboard\n          ")
          ])
        ]),
        _vm._v(" "),
        _c("li", { staticClass: "active" }, [_vm._v("Website Setup")])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                      Main Banner\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("label", { staticClass: "selectFile", attrs: { for: "file" } }, [
      _vm._v("select a file\n                            "),
      _c("span", [_vm._v("(1440 x 790)")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                      Hotline BG\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "label",
      { staticClass: "hotline_image", attrs: { for: "upload_hotline_bg" } },
      [
        _vm._v("select a file\n                              "),
        _c("span", [_vm._v("(1140 x 220)")])
      ]
    )
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                      Video\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                      Video(2)\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                      Video(3)\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                    Why US\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [
        _vm._v("\n                    Title\n                  ")
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "label",
      { staticClass: "benefit_image", attrs: { for: "benefit_image" } },
      [
        _vm._v("select a file\n                        "),
        _c("span", [_vm._v("(670 x 670)")])
      ]
    )
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Add.vue":
/*!********************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Add.vue ***!
  \********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Add.vue?vue&type=template&id=633de8b6&scoped=true& */ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true&");
/* harmony import */ var _Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Add.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& */ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "633de8b6",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/landing_page/Add.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&":
/*!*****************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& ***!
  \*****************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=style&index=0&id=633de8b6&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_633de8b6_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true&":
/*!***************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true& ***!
  \***************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=template&id=633de8b6&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Add.vue?vue&type=template&id=633de8b6&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_633de8b6_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);