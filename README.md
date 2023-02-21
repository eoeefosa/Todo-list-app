### Todo list app
This todo list app helps you stay organized and on top of your tasks. With its simple and intuitive interface, you can easily add, edit, and check off items on your to-do list, making it a valuable tool for both personal and professional use.

![Screenshot_1665583828](https://user-images.githubusercontent.com/84554840/195376364-1ccdc437-1954-4cd3-8f37-163edda14ee0.png)
![Screenshot_1665586040](https://user-images.githubusercontent.com/84554840/195376893-323f85b7-bebb-4031-b649-fbf7d37f079f.png)
![Screenshot_1665586005](https://user-images.githubusercontent.com/84554840/195376784-ecd2d70c-03cf-4c9a-858b-4c27063f8f44.png)
![Screenshot_1665586044](https://user-images.githubusercontent.com/84554840/195377255-f0b6afd7-3473-4e4d-a8f8-3ca624af29a5.png)

A todo list app using provider package.

It allow you create a task and strike the task when it is complete or remove the task completely

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

  ### main
        It has a change NotifierProvider which acts as a parent to the material app .This was done because this is a small app .in large app place Provider at the top of the widget that needs the data and not on top

 ### Item_list
        create a LIstview builder of the data comming from the list of item. it uses the consumer to get the data.
 ### home
        This contains the data that is to be displayed on the screen which is given by the user through the Textformfield and a material button .

