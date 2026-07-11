Feature: Customer Registration
  Scenario: Successful Customer Registration on magicpin.in
    Given the user opens a browser and navigates to "https://magicpin.in/"
    When the user clicks on the Sign In/Up icon on the top right
    And the user enters a valid, unregistered mobile number
    And the user clicks the Send OTP button
    And the user enters the received OTP and clicks Submit
    Then the system creates the new user account
    And the system navigates the user to the magicpin home page

Feature: Customer Login
  Scenario: Successful Customer Login on magicpin.in
    Given the user opens a browser and navigates to "https://magicpin.in/"
    When the user clicks on the Sign In/Up icon
    And the user enters a registered mobile number
    And the user clicks the Send OTP button
    And the user enters the valid OTP and clicks Submit
    Then the system authenticates the user
    And the system displays the user profile icon on the top navigation bar

Feature: Product Search
  Scenario: Search for a local brand or store on magicpin.in
    Given the user is on the magicpin.in home page
    When the user selects a city in the location dropdown
    And the user types a brand name into the search bar
    And the user presses the Enter key
    Then the system navigates to the search results page
    And the system displays a list of local outlets matching the brand name

Feature: Product Details
  Scenario: View store catalog and details on magicpin.in
    Given the user is on the search results page for a local store
    When the user clicks on a specific store listing
    Then the system navigates to the store's dedicated page
    And the system displays the store address, rating, and product catalog

Feature: Add to Cart
  Scenario: Add a food item from a store catalog to the cart
    Given the user is viewing a store's product catalog on magicpin.in
    When the user clicks the "ADD" button next to a specific item
    Then the system adds the item to the order list
    And the system displays a cart summary pop-up at the bottom of the screen

Feature: Update Cart
  Scenario: Increase the quantity of an item in the cart
    Given the user has added an item to their cart on magicpin.in
    When the user clicks the "+" icon next to the item quantity in the cart summary
    Then the system increases the item quantity by one
    And the system updates the total payable amount

Feature: Remove from Cart
  Scenario: Remove an item entirely from the cart
    Given the user has an item with a quantity of one in their cart
    When the user clicks the "-" icon next to the item quantity
    Then the system removes the item from the cart
    And the system hides the cart summary pop-up

Feature: Checkout
  Scenario: Proceed to the checkout page
    Given the user has items in their cart summary
    When the user clicks the Checkout button
    Then the system navigates to the checkout page
    And the system prompts the user to select or enter a delivery address

Feature: Payment
  Scenario: Complete payment using a UPI method
    Given the user is on the checkout page on magicpin.in
    When the user selects a delivery address
    And the user selects a UPI payment method
    And the user clicks the Pay button
    Then the system processes the transaction through the payment gateway
    And the system captures the successful payment response

Feature: Order Confirmation
  Scenario: View order confirmation post-payment
    Given the payment gateway returns a success status for an order
    When the system processes the payment response
    Then the system navigates the user to the Order Success page
    And the system displays the unique Order ID and expected delivery status

Feature: Order History
  Scenario: View past transactions on magicpin.in
    Given the user is logged into magicpin.in
    When the user clicks on their profile icon
    And the user selects "My Transactions" from the dropdown menu
    Then the system navigates to the transactions page
    And the system displays a list of past orders and saved magicPoints

Feature: Logout
  Scenario: Successful Customer Logout from magicpin.in
    Given the user is logged into magicpin.in
    When the user clicks on their profile icon
    And the user selects "Logout" from the dropdown menu
    Then the system ends the active user session
    And the system returns the user to the default logged-out home page