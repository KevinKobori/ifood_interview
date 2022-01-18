# shop_reference

## change_app_package_name
flutter pub run change_app_package_name:main com.new.package.name

## Need to impprove:
- Confirm email
- Google SignIn

## Need to fix original project:
- CEP mask ⚠️✅
- Credit Card mask ⚠️✅
    - Number mask ⚠️✅
    - Validate date mask ⚠️✅
- Error Invalid Credentials ⚠️⭕
- Home page not loading when the app opens at first time ⛔
    - maybe the solution: Firebase.initializeApp(); ⛔
- packages deprecated ⛔
- Facebook Login not working ⛔
- FunctionsError: fix: ⚠️✅
    - sandbox: true, ⚠️✅
    - debug: true, ⚠️✅
- User token not deleting when logout ⚠️✅

## Need to fix after custom project:
- Error when try to insert user CPF ⚠️✅
    - what fixes: formKey.currentState.save(); ⚠️✅
    - it was caused because i mocked the credit card data directly on code ⚠️✅

## Need to implement each project:
- Customize the app: ⚠️⭕
    - Change the package name ⚠️⭕
    - Insert the google-services ⚠️⭕
    - Configure firebase products: ⚠️⭕
        - Login email/password ⚠️✅
        - Login Facebook: ⛔
            - Go to facebook.com configurations ⛔
        - Activate Firebase Blaze Plan ⚠️✅
    - functions:
        - $ cd functions ⚠️✅
        - $ npm install ⚠️✅
        - set functions.config().cielo.merchantid; ⚠️✅
        - set functions.config().cielo.merchantkey; ⚠️✅
        - Class 163. sandbox > dev mode > change to a real key later: ⚠️✅
            - https://cadastrosandbox.cieloecommerce.cielo.com.br ⚠️✅
            - Fake MerchantId: e29ebe9c-c7ef-4ac3-8cf9-37536a48be91 ⚠️✅
            - Fake MerchantKey: HKDALLEYEKGSNNYUIGARZHGNTXSJJEHSVOFYIUUB ⚠️✅

            30cdfad2-3fbb-442a-9c76-e440ee67d6e2

            OSKVVKHHQYLMSQUKYRWLFQEWHFMIBMTGEHNEUJHD
            
            - $ firebase functions:config:set cielo.merchantid="e29ebe9c-c7ef-4ac3-8cf9-37536a48be91" ⚠️✅
            - $ firebase functions:config:set cielo.merchantkey="HKDALLEYEKGSNNYUIGARZHGNTXSJJEHSVOFYIUUB" ⚠️✅
            - $ firebase functions:config:get ⚠️✅
            - $ firebase deploy --only functions ⚠️✅
    - include some firestore documents configuring the data about CEP and delivery distance ⭕
        - Class 59. set user in admin collection ⚠️✅
        - Class 102 & 103. calculating distance > set lat, long, km, maxkm, base (in example using a sopping from SP Campinas) ⚠️✅
        - Class 110. aux/ordercounter ⚠️✅
    - Config Firestore roles:
        - For test and run ⚠️✅
        - For secure access ⭕
        
Test data example: ⚠️✅
    - CEP: 13.087-000 ⚠️✅
    - credit Card:
        - Number: 4333 2454 3263 4631
        - Date: 112028
        - Titular: Kevin Kobori 
        - Verification: 235

        - CPF: 385.631.880-11
