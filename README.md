# FetchRecipeApp

by Sam Greenhill

This is the Fetch Reward take home test. 

## Overview: 

Your task is to build a recipe app that displays recipes from the provided API endpoint.

At a minimum, each recipe should show its name, photo, and cuisine type. You’re welcome to display additional details or sort the recipes in any way you see fit.

The app should allow users to refresh the list of recipes at any time, and you can decide how to implement this in the UI. You’re free to include any additional UI elements you think would enhance the experience, but the app should consist of just one screen displaying the list of recipes.

### Steps to Run the App

To run the app, click the "Code" button, and then copy the repository URL; in your development environment, use the "Clone" option to paste the URL and download the project files to your local machine, effectively creating a local copy of the GitHub repository that you can work with directly.
Have fun.

### Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?

I focused mostly on  creating the User Interface for the app. This includes areas such as research for creating the caching mechanism for the images. 

### Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?
I timed myself when doing this. I spent around 4 hours and 25 minutes to complete this assignment. 
* Research (~45 minutes):

  I am the type to do research on a topic, to find the types of technology and methodology that I would like to use when developing my apps.
  
* Designing (~30 minutes):

  I designed a rough sketch on how I wanted to design the app. This included the color scheme and how I would lay everything out.
  
* Model/layout (~20 minutes):

  I spent this time organizing the layout of the app. I decided to use a MVVM layout architecture, since it is the architecture that I am most familiar with, and I feel it works for this type of app.
  
* ViewModel (~45 minutes):

  This is the time that I spent working on the ViewModel. This also includes the time I used to go back and make changes during the development lifecycle.

* View (~55 minutes):

  This is the time I spent working on all the views. This includes the mainviews and the subviews

* Caching Image (~25 minutes):
  
  I used a tutorial I found at https://xavier7t.com/image-caching-in-swiftui to create an image view that will cache as it is moved   through a List.

* Unit Testing (~30 minutes):
  
  I spend this time creating the unit tests for the app.

* Clean up (~15 minutes):
  
  This is the time spent cleaning up all the code to look presentable. 

### Trade-offs and Decisions: Did you make any significant trade-offs in your approach?

Yes I did make some trade-offs. I would have preferred to make more thorough unit tests, such as doing some mocking, to cover more use cases. I focused more on the user experience, and the backend then the testing logic. I think I would have also liked to do more on the error handling. I would like to have implemented something like a popup warning if a series of errors happen, such as no service. 

### Weakest Part of the Project: What do you think is the weakest part of your project?

I think that the testing is the weakest part of the project. I have familiarity with simple logic based unit tests, however I have limited experience with network based unit tests. I think that I would have liked to expand on the tests in the future. 

### Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.

I thought that it would be a nice idea to include a picker to show what the different views look like for the different endpoints. It should still work any way that the user may want. In the process of studying, I researched other apps that may have used a similar API to come up with the overall design and look. I considered using larger images with text below, similar to CollectionViews from UIKit, however there was a need to include more information with the image, I thought that it would be best to design it as it as a sort of tableView list.

I wanted to make sure that I could show sources that I used for different logic, instead of relying on AI applications. This is why I included the link in the app and above here where I found a way to use caching images in SwiftUI. 

I can see in the future an animated way to go to a new view when a row in the list is pressed. Thoughts of the future :)


### Preview: 

|Main Content View |Simulator|
|-|-|
| <img src='https://github.com/user-attachments/assets/21b1ecdf-8750-4469-9ccc-d3b953cba01b' width='300'> | <img src= 'https://github.com/user-attachments/assets/d37e2430-4765-44ea-8c6a-08491bd036c2' width='300'> |
|Picker = Malformed Data |Picker = Empty Data|
| <img src='https://github.com/user-attachments/assets/16d0cc06-c891-408b-9d51-bd5627fdf94f' width='300'> | <img src='https://github.com/user-attachments/assets/510becc6-946d-46bf-916e-5a87a4c80a4f' width='300'> |

