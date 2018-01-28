(function () {
    'use strict';        
    angular.module('product.detail.controller', ['product.service']).controller('productDetailController', productDetailController);
	productDetailController.$inject = ['$q','productService'];
	function productDetailController($q, productService) {
		/* view-model */
		var vm = this;
		var productService = new productService();		
		
		/* functions */
		function activate() {
			return productService.getProducts().then(function(result){
				if(result){
					vm.products = result.PageData;
					vm.hello = 'hello product';
				}
				console.log('productDetailController ....');
			}, function(err){
				console.log(err);
			});
		};
		
		/* start */
		activate();
	}
})();