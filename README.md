# SimplePractise_TestTask


# TroubleShooting
1. Issue: RubyMine cannot find elements that are described in the Page Object Model (POM).
   I'm encountering an issue where RubyMine fails to recognize elements described in the Page Object Model (POM).
   For instance, the utility_search element is initialized on ClientsPage, but I cannot invoke methods on it due to the error: 'Cannot find utility_search=' for type 'ClientsPage'.
2. Issue: undefined method 'on'.
   'on' method is endefined for such contructions :on(LoginPage).login_with(@user_model)

## What I've Tried to Resolve These Issues:
- Re-installed gem files.
- Ran bundle install.
- Expanded env.rb with additional requires.
- Re-installed RubyMine.
- Cleared caches and indexes across the entire project.
- Spent considerable time researching solutions online and trying suggested fixes.

## Suspected Problem:
I suspect there might be an issue with the project configuration or possibly a missing package file. Despite trying various solutions, none have resolved the issues so far.

## Impact:
- Disrupted test execution and development progress.
- Waiter strategy: in utils folder you can see wait_utils. This is currently a stub. The strategy should be expanded and applied to pages and elements. It is difficult to do without test run.
- step definition and client_grid actions. The same reason as for waiter.

## Note: I've run a small test without using cucumber and capybara. The login and navigation to the client model were successful. Therefore, methods such as credentials_converter, LoginPage and Header function work as expected.
