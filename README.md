# Yahnac Login automation test

The main propose of this automation is test the feature Login from Yahnac app for android.

**Requirements**

To run these Appium tests, you will need to setup the environment: 

* [Download and install Ruby] (https://www.ruby-lang.org/en/) 

* [Install Appium] (http://appium.io/docs/en/about-appium/getting-started/?lang=en)

* [Install Bundler] (http://bundler.io/v1.12/)


**Running the tests**

At first, you’ll need to clone the repository [Yahnac] (https://github.com/malmstein/yahnac) and this *Login automation tests* reporitory in your local computer.

Using the terminal, access the repository and run Bundle once:

```ruby
bundle install
```

In the root of the app repository, build the app to generate the APK:

```ruby
./gradlew clean assembleDebug
```

Then you need to change the **app** location in the appium.txt file *(…/yahnac-appium/features/support/android/appium.txt)* pointing the aplication app (apk).

Insert the **deviceName** in the appium.txt file, with the name of the emulator you have.

Now you can go to the terminal, access *…/yahnac-appium/features* and run:

```ruby
cucumber -p android features/login.feature
```
