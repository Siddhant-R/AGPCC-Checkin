Feature: Viewing Dashboard and Updating Events 
  
  As an admin
  So that I can see events such as ongoing, upcaming and past
  I want to click to the name of events and being able to update events
  
Background: events have been added to database
  
Given the following events exist:
  
  | title                   | description   | venue             | date         | start_time | end_time  | ticket_price | id  | 
  | First Event             | firstevent    | firstlocation     | 25-Nov-2014  | 1          | 2         | free         | 100 |
  | Second Event            | secondevent   | secondlocation    | 26-Oct-2015  | 3          | 4         | 5            | 200 |
  | Third Event             | thirdevent    | thirdlocation     | 21-Jul-2016  | 6          | 7         | free         | 300 |


Scenario: create new event
  When I follow "Events"
  And I go to Events Page
  And I follow "New Event"
  And I go to the New event page
  And I fill in "Title" with "fakeevent"
  And I fill in "Description" with "fakedescription"
  And I fill in "Venue" with "fakelocation"
  And I fill in "Start Time" with "8"
  And I fill in "End Time" with "9"
  And I fill in "Ticket Price" with "10"
  And I fill in "Date" with "01-January-2017"
  And I press "Create Event"
  Then I should see title "fakeevent"
  And I should see description "fakedescription"
  And I should see venue "fakelocation"
  And I should see date "01-Jan-2000"
  And I should see start_time "8"
  And I should see end_time "9"
  And I should see ticket_price "10"
  
  
Scenario: Updating an event
  When I follow "First Event"
  And go to the First event's page
  And I follow "Edit Event"
  And I fill in "Title" with "fakeevent2"
  And I fill in "Description" with "fakedescription2"
  And I fill in "Venue" with "fakelocation2"
  And I fill in "Date" with "01-Jan-2002"
  And I fill in "Start Time" with "11"
  And I fill in "End Time" with "12"
  And I fill in "Ticket Price" with "free"
  And I press "Update Event"
  Then I should see updated title "fakeevent2"
  And I should see updated description "fakedescription2"
  And I should see updated venue "fakelocation2"
  And I should see updated date "01-Jan-2002"
  And I should see updated start_time "11"
  And I should see updated end_time "12"
  And I should see updated ticket_price "free"
  
  
 
  
  