const express = require('express');
const router = express.Router();
const cors = require('cors')
const jwt = require('jsonwebtoken');
const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const multer = require('multer');
const auth = require('../config/auth');
const config = require('../config/config');
const CONSTANT = require('../lib/constant');





// routers: use to test
router.get('/', function (req, res, next) {
    res.json({ message: 'request GET is success' });
    console.log('%s %s — %s', (new Date).toString(), req.method, req.url);	
    next();
});

router.post('/', function (req, res, next) {
    res.json({ message: 'request POST is success' });
    console.log('%s %s — %s', (new Date).toString(), req.method, req.url);
    next();
});

router.put('/', function (req, res, next) {
    res.json({ message: 'request PUT is success' });
    console.log('%s %s — %s', (new Date).toString(), req.method, req.url);
    next();
});

router.get('/newsfeed', cors(), function (req, res, next){
	var result = { code: 'SUCCESS_NEWSFEED', message: 'request newsfeed with CORS is success.' }
	res.status(200).json(result);
	next();
})









// routers: use to login/logout
router.post('/login', function (req, res, next) {
	return passport.authenticate('local', async function (err, result) {
		try
		{
			if (err) throw err;
			
			if (!result.success) {
				//console.log('authenticate is failed ...');
				return res.status(404).json({
					success: false,
					message: { code: 'ERROR_UNAUTHENTICATION', message: 'Username and Password is invalid.' }
				});
			} 
			else {
				//console.log('authenticate is success ...');
				var token = jwt.sign(result.user, config.secretKey, { expiresIn: 60 * 60 * 24 * 1 });
				return res.status(200).json({
					success: true,
					message: { code: 'SUCCESS_AUTHENTICATION', message: 'Login is successful.' },
					user: { username: result.user.username, userkey: result.user.userkey, token: token },
				});
			}
		}
		catch(err){
			next(err);
		}
	})(req, res, next);
});

router.get('/logout', function (req, res, next) {
	// TO DO: force logout 404
	// console.log('Log out current user ...');	
	next();
});

// sample file upload
const multerConfig = {
	dest: './uploads/sample',
	limits: { fileSize: 1048576 }
};
const uploadProductImage = multer(multerConfig).single('ProductImage');

router.post('/upload', auth.checkAuthentication(), uploadProductImage, async function(req, res, next){
	try
	{
		// req.file is the `ProductImage` file
		let fileName = req.file.filename;
		// req.body will hold the text fields, if there were any
		let product = req.body;
		product.ProductId = parseInt(product.ProductId);
		product.ProductImage = fileName;
		
		if(product){
			console.log(product);
			res.status(200).json({ success: true, data: product });
		}
		else{
			res.status(500).json({ success: false });
		}
	}
	catch(err){
		next(err);
	}
});

// return Router
module.exports = router;
