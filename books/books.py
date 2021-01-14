import argparse
import csv

def get_command():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('query_type', choices=['title', 'author', 'years'], nargs='?', default='-h')
    parser.add_argument('query_arguments', nargs='+')
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
            authors_books = []
            for row in reader:
                if query_arguments[0].lower() in row[2].lower():
                    if row[2].lower() not in authors_books:
                        authors_books.append({'author': row[2].lower(), 'books':[row[1].lower()]})
                    else:
                        authors_books.append([row[2].lower() => [row[1].lower()]])
            return
        if (query_type == 'years'):
            for row in reader:
                if len(query_arguments) == 2:
                    if row[1] >= query_arguments[0] and row[1] <= query_arguments[1]:
                        print(row)
                elif len(query_arguments) == 1:
                    if row[1] >= query_arguments[0]:
                        print(row)
                elif len(query_arguments) > 2:
                    print("yeet")
                else:
                    print(row)
        
def main():
    search()

if __name__ == '__main__':
    main()
