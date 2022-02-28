
# A Open Source Project >>> A full Flutter White-label Store

    The idea is based on small companies/startups that want to expand their sales to multiplatforms.
    
# This code is based on this course: >>> https://www.udemy.com/course/lojaflutter/

![WhatsApp Image 2022-02-20 at 23 38 10](https://user-images.githubusercontent.com/29134032/154885271-f257c279-e439-436b-95b2-71b3d3ea860b.jpeg)

# Why use this template for a startup project:

    - One code, all platforms, run right now your ecommerce on WEB, Android and iOS. 
    - Easy project configuration:
        - Easy to configurate a new project using Firebase:
            - Auth users using Firebase Authentication.        
            - Part of the backend using Firebase Cloud Functions.
            - Database using Firebase Firestore.
            - Store the images, archives etc using Firebase Storage.
            - Host on the WEB using Firebase Hosting.
            - AI to detect customers usability using Firebase Machine Learning.
            - OBS: everything for FREE to start.
        - Easy to change package name, put on Play Store and Apple Store.
    - Easy methods to change the theme of the app.
    - Easy implementation:
        - Easy to learn the project.
        - Easy way to add new functionalities.

# Developing Status: 

    - ⚠️: IMPORTANT
    - ⛔: NOT PRIORITY
    - ⭕: WAITING
    - ✅: CONCLUDED
    
## Need to implement on each project:

    - flutter pub run change_app_package_name:main com.new.package.name
    - Customize the app:
        - Change the package name ⚠️✅
        - Insert the google-services.json(Android) ⚠️✅
        - Insert the GoogleServices-info.plist(iOS) ⚠️✅
        - Configure firebase products:
            - Login email/password ⚠️✅
            - Login Facebook: ⛔
                - Go to facebook.com configurations ⛔
            - Activate Firebase Blaze Plan ⚠️✅
        - functions:
            - $ cd functions ⚠️✅
            - $ npm install ⚠️✅
            - set functions.config().cielo.merchantid; ⚠️✅
            - set functions.config().cielo.merchantkey; ⚠️✅
            - Class 163. sandbox > dev mode > change to a real key later:
                - https://cadastrosandbox.cieloecommerce.cielo.com.br ⚠️✅
                - $ firebase functions:config:set cielo.merchantid="c93ea95f-be22-44fa-b6a0-cc2e36a4df03" ⚠️✅
                - $ firebase functions:config:set cielo.merchantkey="JTUQPBLVPATXLAAZRHSJSGJSKLXJQKBPOOWWOOFN" ⚠️✅           
                - $ firebase functions:config:get ⚠️✅
                - $ firebase deploy --only functions ⚠️✅
        - include some firestore documents configuring the data about CEP and delivery distance ⚠️✅
            - Class 59. set user in admin collection ⚠️✅
            - Class 102 & 103. calculating distance > set lat, long, km, maxkm, base ⚠️✅
            - Class 110. aux/ordercounter ⚠️✅
        - Config Firestore roles:
            - For test and run ⚠️✅
            - For secure access ⚠️⭕
        - 137. Set Storeslocations on Firebase ✅
            
    - Test data example: ⚠️✅
        - CEP: 13.087-000 ⚠️✅
        - Credit Card:
            - Number: 4300 0000 0000 0001
            - Date: 11/2028
            - Titular: Kevin Kobori
            - Verification: 235
        - CPF: 385.631.880-11

# Developing:

    - Implement Clean Architecture ⚠️⭕
    - Implement Modules
        - flutter_modular: ⚠️⭕
		- Navigation with dynamic routes, suport for web ⚠️⭕
		- Dependency injection ⚠️⭕
		- Deep Link to navigate between pages or only ffrom external pages? ⚠️⭕
    - Implement Tests ⚠️⭕
    - Implement Controllers
        - Migrate from provider to mobx ⚠️⭕
    - Layout of the App:
        - drawer to bottom navigationbar ✅
        - Search bar ⛔
        - Items list to grid ⛔
        - Colors ⛔
        - Fonts ⛔
	- Separate model from mappers and providers ⚠️⭕
	- Migrate to Null Safety ⚠️⭕
	- All user data logic:
		- When logout on App: remove devices tokens from DB ⚠️✅
		- When logout directly on Firebase Admin: remove devices tokens from DB using Cloud Functions ⚠️⭕
		- When uninstall App: remove devices tokens from DB ⚠️⭕
		- When change password on App: remove devices tokens from DB ⚠️⭕
		- When change password directly on Firebase Admin, remove devices tokens from DB using Cloud Functions ⚠️⭕
		- When change user data directly on Firebase Admin: remove devices tokens from DB using Cloud Functions ⚠️⭕
	- Security:
		- Obfuscating the app ⚠️⭕
		- Verify if its a real device ⚠️⭕
		- Use functional programming ⚠️⭕
    - Notifications:
		- Insert status on data parameter:
			- readed ⚠️✅
			- deleted ⚠️✅
			- created dateTime ⚠️✅
            - updated dateTime ⚠️✅
		- Order Notifications by date time inserted ⚠️⭕
		- READ AT: https://firebase.flutter.dev/docs/messaging/notifications/
	- Migrate to Null Safety ⚠️⭕
    - Light and dark Theme ⛔
    - Centralize theme dynamically for admin can controll ⚠️⭕
    - Edit Product currency input formatter by country ⚠️⭕
    - Internationalization ⚠️⭕ 
    - Search using realtime(if all products are on cash) ⛔
    - List Builders, get 20 by 20 items ⚠️⭕
    - Favorite logic ⭕
    - Pix payment method ⚠️⭕
    - Real Frete vinculation Correios:
        - http://labcor.com.br/pdf/26.pdf ⚠️⭕
    - Layout for iOS using cupertino padronization ⛔
    - Forget password ⚠️✅
    - Confirm email on register ⚠️✅
    - Fix send email verification when register ⚠️⭕
    - Verify and confirm email on login ⚠️✅
    - Google SignIn ⚠️✅
    - Loading animation on items ⭕
    - Redirect to whatsapp ✅
    - Create Categories ✅
    - Create all products outside categories ✅
    - Error when load all products, images was not saving into both collections ⚠️✅
    - Format send email verification ⭕
    - Users:
        - Generate random code for what? ⚠️✅
        - ImageProfile only on google SignIn create ⚠️✅
        - ImageProfile for facebook SignIn create ⚠️⭕
        - ImageProfile for SignUp create ⚠️⭕
    - Create Insert Stores Locations Screen ⭕
    - Format everything to be named parameters ⭕
    - Set all orders status filter enabled by default ✅
    - Set icon into Filters SlidingUpPanel ✅
    - Set loading state to all pages ⚠️⭕

## Refactoring:

    - FlatButton to TextButton
    - Make to run on iphone 8. ⚠️✅
        - Google SignIn closing the App. ⚠️⭕
    - Cart error when deleted a product from products collection ⚠️⭕
    - Refact User() to UserModel() ⚠️✅
    - Remove all whitespace on inputs ⚠️✅
    - CEP mask ⚠️✅
    - Credit Card mask ⚠️✅
        - Number mask ⚠️✅
        - Validate date mask ⚠️✅
    - packages deprecated ⛔
    - Facebook Login not working ⛔
    - FunctionsError fix: ⚠️✅
        - sandbox: true, ⚠️✅
        - debug: true, ⚠️✅
    - User token not deleting when logout ⚠️✅

# Test status: 

    - ⚠️: IMPORTANT
    - ❓: NOT TESTED YET
    - ❗: NEED MORE TESTS
    - ❕: TEST PASSED
    - ❌: TEST FAILED

## Android:

    - Google SignIn ⚠️❕
    - Facebook SignIn ⚠️❗
    - Payment ⚠️❕
    - Notification ⚠️❕
    - Google Maps opening ⚠️❕
    - Call automatically ⚠️❓
    - User orders navigation ⚠️❕
    - Cancel Order not working ⚠️❓
        - obs: need to see where it begins ⚠️❓

## iOS:

    - Google SignIn ⚠️❌
    - Facebook SignIn ⚠️❗
    - Payment ⚠️❕
    - Notification ⚠️❕
    - Google Maps opening ⚠️❓
    - Apple Maps opening ⚠️❕
    - Call automatically ⚠️❌
    - User orders navigation ⚠️❓
    - Cancel Order not working ⚠️❓
        - obs: need to see where it begins ⚠️❓
        
## OBS:

    - Need to be tested on Android 8 > 9 > 10 > 11...
    - Need to be tested on iOS 8 > 9 > 10 > 11...
    - How to NOT get a 30K Firebase Bill
        - https://www.youtube.com/watch?v=Lb-Pnytoi-8
    - important provider
        - https://github.com/rrousselGit/provider/issues/168	
    - If you want to understand more about that code, this code is based on the code of this course: https://www.udemy.com/course/lojaflutter/
