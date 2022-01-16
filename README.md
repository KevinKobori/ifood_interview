# shop_reference

## change_app_package_name
flutter pub run change_app_package_name:main com.new.package.name

## Need to fix:
- CEP mask ⚠️✅
- Credit Card mask ⚠️✅
    - Number mask ⚠️✅
    - Validate date mask ⚠️✅
- Error Invalid Credentials ⚠️⭕
- Home page not loading when the app opens at first time ⛔
    - maybe the solution: Firebase.initializeApp(); ⛔
- packages deprecated ⛔
- Facebook Login not working ⛔
- Customize the app: ⚠️⭕
    - Change the package name ⚠️⭕
    - Insert the google-services ⚠️⭕
    - Configure firebase products: ⚠️⭕
        - Login email/password ⚠️✅
        - Login Facebook: ⛔
            - Go to facebook.com configurations ⛔
        - Activate Firebase Blaze Plan ⚠️✅
    - functions:
        - set functions.config().cielo.merchantid; ⚠️✅
        - set functions.config().cielo.merchantkey; ⚠️✅
        - 163. sandbox > dev mode > change to a real key later: ⚠️✅
            - https://cadastrosandbox.cieloecommerce.cielo.com.br ⚠️✅
            - Fake MerchantId: e29ebe9c-c7ef-4ac3-8cf9-37536a48be91 ⚠️✅
            - Fake MerchantKey: HKDALLEYEKGSNNYUIGARZHGNTXSJJEHSVOFYIUUB ⚠️✅
            - $ firebase functions:config:set cielo.merchantid="e29ebe9c-c7ef-4ac3-8cf9-37536a48be91" ⚠️✅
            - $ firebase functions:config:set cielo.merchantkey="HKDALLEYEKGSNNYUIGARZHGNTXSJJEHSVOFYIUUB" ⚠️✅
            - $ firebase functions:config:get ⚠️✅
            - $ firebase deploy --only functions ⚠️✅
    - include some firestore documents configuring the data about CEP and delivery distance ⭕

Test data example: ⚠️✅
    - CEP: 13.087-000 ⚠️✅
    - credit Card:
        - Number: 4333 2454 3263 4631
        - Date: 112028
        - Kevin Kobori 
        - Verification: 235

        - 385.631.880-11