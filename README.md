# gazaKit
GET requests endpoint 
you can check the Model folder to know the structure of each object (pay attention to the uppercase letters to avoid errors)
each one of these endpoints requests will return a promise of array of object 


http://localhost:4000/api/getDuaa : ad3iya

http://localhost:4000/api/getBrands : the brands that are supporting ******

http://localhost:4000/api/SearchBrands?Name=r&Field=  : here you can search for specific brand based on two queries Name of the brand and the second one is its Field (the field of the brand is the industry it works in we have in our project :Commercial,Food,Cleaning,Drinks,Clothes,Electronics,TV,Entertainment,Cosmetics,Razor,Cars,Energy,News 

http://localhost:4000/api/getHashtags : the hashtags


http://localhost:4000/api/getAccounts : the accounts of the content creators that are supporting palastine


///////////////////////////////////////////////////////////////////////////////////////////////
POST request

http://localhost:4000/api/Contribute : this an endpoint that lets a user contribute with us an account that isn't listed in our app (it can have an error if it founds that the account exist in our db ) while there is no error it will be stored in a prototype collection where we can access the url given by the user if its a real account that support palastine or no (this step will be done manually until we complete the model taht can identify the account is talking about palastine or not ) 

{
    "content":"https://www.instagram.com/palestinianyouthmovement/"
}

the user should give a url and the request body will be like the given one (please respect the lowercase chars )
