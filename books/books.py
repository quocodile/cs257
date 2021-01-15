import argparse
import csv

'''
Authors: Nacho Rodriguez-Cortes, Quoc Nguyen
Description: program perfoms search queries on a books.csv file.
'''

def create_parser():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('query_type', choices=['title', 'author', 'years'], nargs=1, help='specify a query type from the given options')
    parser.add_argument('query_arguments', nargs='+', metavar=('args'), help='values provided as arguments for query')
    return parser

'''
gets all arguments provided through the command line
'''
def get_command_arguments(parser):
    args = parser.parse_args()
    return args

'''
gets query type (by title, by author, or by publication year) the user had chosen
'''
def get_query_type():
    query_type = get_command_arguments(create_parser()).query_type[0]
    return query_type

'''
gets the arguments user provided as necessitated by the query type they chose
'''
def get_query_arguments():
    query_arguments = get_command_arguments(create_parser()).query_arguments
    return query_arguments

def query_handler(query_type, query_arguments):
    with open('books.csv', newline='') as f:
        reader = csv.reader(f)
        if (query_type == 'title'):
            query_by_title(query_arguments[0], reader)
        if (query_type == 'author'):
            query_by_author(query_arguments[0], reader)
        if (query_type == 'years'):
            query_by_years(query_arguments, reader)

def query_by_title(search_string, csv_reader):
    print("Titles containing '" +  search_string.lower() + "':")
    for row in csv_reader:
       title = row[0]
       if (search_string.lower() in title.lower()):
          print_book(title)
    
def query_by_author(search_string, csv_reader):
    authors_books = {} #a dictionary with author names as keys and a list of books as values
    for row in csv_reader:
        author = row[2]
        if search_string.lower() in author.lower():
            if author not in authors_books.keys():
                authors_books[author] = [row[0]]
            else:
                authors_books[row[2]].append(row[0])
    for key in authors_books.keys():
        print('Author: ' + key + ' Books: ' + ', '.join(authors_books[key]))
  
def query_by_years(query_arguments, csv_reader):
    if len(query_arguments) == 2:
        print('Books published between ' + query_arguments[0] + ' and ' + query_arguments[1] + ': ')
        for row in csv_reader:
            if row[1] >= query_arguments[0] and row[1] <= query_arguments[1]:
                print(" * " + row[0])
    elif len(query_arguments) == 1:
        print('Books published after ' + query_arguments[0] + ': ')
        for row in csv_reader:
            if row[1] >= query_arguments[0]:
                print_book(row[0])
    else:
        create_parser().print_help()

def print_book(title):
    print(" * " + title)

def main():
    query_handler(get_query_type(), get_query_arguments())

if __name__ == '__main__':
    main()
