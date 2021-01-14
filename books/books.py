import argparse
import csv

def get_command():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('commands', nargs='+')
    args = parser.parse_args()
    return args.commands

def search(commands):
    with open('books.csv', newline='') as f:
        reader = csv.reader(f)
        if (commands[0] == 'title'):
            for row in reader: 
                if (row[0] == commands[1]):
                    print(row)
            return
        if (commands[0] == 'author'):
            print(commands[1] + " " + commands[2])
            for row in reader:
                print(row[2]) 
                if (commands[1] + " " + commands[2]  == row[2]):
                    print(row)
            return
        if (commands[0] == 'years'):
            print(commands[1], commands[2])
        
def main():
    search(get_command())

if __name__ == '__main__':
    main()
