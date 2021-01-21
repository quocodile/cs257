'''
Authors: Nacho Rodriguez-Cortes, Quoc Nguyen
Revised by Nacho Rodriguez-Cortes, Quoc Nguyen
Description: program perfoms search queries on a books.csv file.
'''

import csv
import argparse

def create_parser():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('query_arguments', nargs='+', metavar=('args'), help='provide arguments for query')
    return parser

def get_command_arguments(parser):
    '''
    gets all arguments provided through the command line
    '''
    args = parser.parse_args()
    return args

def get_query_arguments():
    '''
    gets the arguments user provided as necessitated by the query type they chose
    '''
    query_arguments = get_command_arguments(create_parser()).query_arguments
    return query_arguments

def query_by_title(search_string, csv_reader):
    books = []
    for row in csv_reader:
       title = row[0]
       if (search_string.lower() in title.lower()):
          books.append(title)
    return books
    
def query_by_author(search_string, csv_reader):
    #a dictionary with author names as keys and a list of books as values
    authors_books = {}    
    for row in csv_reader:
        author = row[2]
        title = row[0]
        if search_string.lower() in author.lower():
            if author not in authors_books.keys():
                authors_books[author] = [title]
            else:
                authors_books[author].append(title)
    return authors_books
  
def query_by_years(query_arguments, csv_reader):
    books = []
    if len(query_arguments) == 3:
        start_year = query_arguments[1]
        end_year = query_arguments[2]
        for row in csv_reader:
            title = row[0]
            publication_year = row[1]
            if publication_year >= start_year and publication_year <= end_year:
                books.append(title)
        return books
    elif len(query_arguments) == 2:
        start_year = query_arguments[1]
        for row in csv_reader:
            title = row[0]
            publication_year = row[1]
            if publication_year >= start_year:
                books.append(title)
        return books
    else:
        create_parser().print_help()

def print_books(books_array):
    for book in books_array:
        print(" * " + book)

def print_books_by_author(authors_books):
    for author in authors_books.keys():
        print(author)
        for book in authors_books[author]:
            print("    * " + book)
    
def print_books_by_years(query_arguments, books):
    if len(query_arguments) == 3:
        start_year = query_arguments[1]
        end_year = query_arguments[2]
        print("Titles published between ", start_year, " and ", end_year)
        print_books(books)
    elif len(query_arguments) == 2:
        start_year = query_arguments[1]
        print("Title published after ", start_year)
        print_books(books) 

def main():
    query_type = get_query_arguments()[0] 
    with open('books.csv', newline='') as f:
        reader = csv.reader(f)
        if len(get_query_arguments()) <= 1:
            create_parser().print_help()
        else:
            if (query_type == 'title'):
                title = get_query_arguments()[1]
                print(f"All books with the title containing {title.lower()}")
                books = query_by_title(title, reader)
                print_books(books)
            if (query_type == 'author'):
                author = get_query_arguments()[1]
                print(f"These are all authors with the name containing '{author.lower()}' alongside their books")
                authors_books = query_by_author(author, reader)
                print_books_by_author(authors_books)
            if (query_type == 'years'):
                query_arguments = get_query_arguments()
                books = query_by_years(query_arguments, reader)
                print_books_by_years(query_arguments, books)

if __name__ == '__main__':
    main()
