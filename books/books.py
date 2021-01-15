import argparse
import csv

def create_parser():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('query_type', choices=['title', 'author', 'years'], nargs=1, help='User must choose a query type')
    parser.add_argument('query_arguments', nargs='+', help='Values provided as argument for query type')
    return parser

def get_command(parser):
    args = parser.parse_args()
    return args

def search():
    query_type = get_command(create_parser()).query_type[0]
    query_arguments = get_command(create_parser()).query_arguments
    with open('books.csv', newline='') as f:
        reader = csv.reader(f)
        if (query_type == 'title'):
            print("Titles containing '" +  query_arguments[0].lower() + "':")
            for row in reader: 
                if (query_arguments[0].lower() in row[0].lower()):
                    print(" * " + row[0])
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
                create_parser().print_help()
def main():
    search()

if __name__ == '__main__':
    main()
