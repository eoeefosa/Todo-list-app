### simple_example_app_provider

A  simple example using provider package.

### Description

This android app enables user to input an Item in the form field and see such item listed on the "items list " part of his page after tapping the submit button, 

The user can also tap the checkbox  to strike through a selected Item and retap it to undo the strikethrough action

If a User wishes to remove a selected Item he can tap such Item for a long time

This same code can be modified for a todo app and a grocery shopping part of an e-commerce app

It uses the provider package for statemanagement 

### Code description
in the lib folder the following files are present
 ### model folder
   this contains 
     Item.dart file 
            contains a simple class that defines the attribute that the item Class will hold and a toggle method
     Item_data.dart
            contains a list that will hold the data of the Item class defined above. 
            It also contain methods to perform task such as 
                    add item
                    toggle item
                    remove item
            this class extends the changenotifier

  ### main.dart
        It has a change NotifierProvider which acts as a parent to the material app .This was done because this is a small app .in large app place Provider at the top of the widget that needs the data and not on top

 ### Item_list.dart
        create a LIstview builder of the data comming from the list of item. it uses the consumer to get the data.
 ### home.dart
        This contains the data that is to be displayed on the screen which is given by the user through the Textformfield and a material button .

