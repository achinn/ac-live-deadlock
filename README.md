## ActionController::Live Deadlock Example

### Steps to reproduce

1. Start the app: `rails server`
2. In a browser that supports SSEs, open up `http://localhost:3000/deadlock`
3. You'll see that a deadlock occurs when trying to load the `Test` constant at `deadlock_controller.rb:10`
