import argparse
import csv
import sys

def get_command():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('query_type', choices=['title', 'author', 'years'], nargs='?', default='-h', help='User must choose a query type')
    parser.add_argument('query_arguments', nargs='+', help='Values provided as argument for query type')
    args = parser.parse_args()
    return args

def search():
    query_type = get_command().query_type
    query_arguments = get_command().query_arguments
    with open('books.csv', newline='') as f:
        reader = csv.reader(f)
        if (query_type == 'title'):
            for row in reader: 
                if (row[0].lower() in query_arguments[0].lower()):
                    print("Titles containing '" +  query_arguments[0].lower() + "':", row[0])
            return
        if (query_type == 'author'):
            authors_books = {}
            for row in reader:
                if query_arguments[0].lower() in row[2].lower():
                    if row[2] not in authors_books.keys():
                        authors_books[row[2]] = [row[0]]
                    else:
                        authors_books[row[2]].append(row[0])
            for key in authors_books.keys():
                print('Author: ' + key + ' Books: ' + ', '.join(authors_books[key]))
            return
        if (query_type == 'years'):
            if len(query_arguments) == 2:
                print('Books published between ' + query_arguments[0] + ' and ' + query_arguments[1] + ': ')
                for row in reader:
                    if row[1] >= query_arguments[0] and row[1] <= query_arguments[1]:
                        print(" * " + row[0])
            elif len(query_arguments) == 1:
                print('Books published after ' + query_arguments[0] + ': ')
                for row in reader:
                    if row[1] >= query_arguments[0]:
                        print(" * " + row[0])
            else:
                get_command().print_help()
def main():
    search()

if __name__ == '__main__':
    main()
