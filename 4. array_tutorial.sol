/*
Array is a list of elements of the same datatype (zero-indexed)

Arrays can be:
    1. Fixed-size -> datatype[fixedSize] visibility arrayName;
    2. Dynamic-size -> datatype[] visibility arrayName; (grows/shrinks as needed)

Array is a LIST OF SAME type elements while struct is a GROUP OF MULTI-TYPE variables

Available Functions -
    1. push() : only dynamic array
    2. pop() : only dynamic array
    3. length() : static + dynamic array
    4. delete arr[index] : static + dynamic array .. Resets value to default (0)

functions like insert(), erase(), sort(), find() doesn't exists
*/



pragma solidity 0.5.1;

contract StructArrayExample {

    // 1. Define the struct
    struct Book_struct {
        string title;
        string author;
        uint pages;
    }


    // 2. Define a dynamic array (of Book structs)
    Book_struct[] public books_array;


    // 3. Add a new book to the array
    function addBook(string memory _title, string memory _author, uint _pages) public {
        books_array.push(Book_struct(_title, _author, _pages));
    }


    // 4. Get details of a book by index
    function getBook(uint index) public view returns (string memory, string memory, uint) {
        Book_struct memory b = books_array[index];                                              // b is a temp variable that holds the value at given index in book array 
        return (b.title, b.author, b.pages);
    }


    // 5. Update a book's pages by index
    function updatePages(uint index, uint newPages) public {
        books_array[index].pages = newPages;
    }


    // 6. Reset a specific book to empty values
    function resetBook(uint index) public {
        books_array[index] = Book_struct("", "", 0);
    }


    // 7. Get total number of books
    function getBookCount() public view returns (uint) {
        return books_array.length;
    }
}
