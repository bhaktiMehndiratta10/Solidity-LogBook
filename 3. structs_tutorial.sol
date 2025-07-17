/*
    Definition - Structs in Solidity let you create custom data types that group multiple variables (of different types) under one name.
                 They're like blueprints for objects
        
    Benefit - organize complex data more cleanly than using multiple separate variables.
*/

pragma solidity 0.5.1;

contract StructOnly {

    // Define a struct
    struct Book {
        string title;
        string author;
        uint pages;
    }

    // One book variable
    Book public myBook;


    // Set all values at once
    function setBook(string memory _title, string memory _author, uint _pages) public {
        myBook = Book(_title, _author, _pages);
    }


    // Reset the book to default values
    function resetBook() public {
        myBook = Book("", "", 0);
    }


    // Get full book info
    function getBook() public view returns (string memory, string memory, uint) {
        return (myBook.title, myBook.author, myBook.pages);
    }
}