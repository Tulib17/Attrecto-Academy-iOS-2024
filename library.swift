struct Book{
	var title: String
	var author: String?
	var price: Double?
}

class Library{
	var books = [Book]()

	func addBook(newBook: Book){
		books.append(newBook)
	}

	func printBooks(){
		for book in books{
			print("----------")
			print("Title: \(book.title)")
			print("Author: \(book.author ?? "Author not available")" )
			if let price = book.price {
					print("Price: \(price)")
			}
		}
	}
}

let library = Library()

library.addBook(newBook: Book(title: "Echoes of the Byte", author: "John Doe", price: 14.99))

library.addBook(newBook: Book(title: "The Last Algorithm", author: "Jane Doe", price: nil))

library.addBook(newBook: Book(title: "Quantum Threads", author: "Alan Turing", price: 19.99))

library.addBook(newBook: Book(title: "Cyber Shadows", author: nil, price: nil))

library.printBooks()