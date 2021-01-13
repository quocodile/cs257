import argparse

def get_command():
    parser = argparse.ArgumentParser(description="This allows you to query from a books database")
    parser.add_argument('commands', nargs='+')
    args = parser.parse_args()
    print(args.commands)
    return args.commands

def search(commands):
    if (commands[0] == 'title'): 
        print(commands[1])
    if (commands[0] == 'author'):
        print(commands[1])
    if (commands[0] == 'years'):
        print(commands[1], commands[2])
        
def main():
    search(get_command())

if __name__ == '__main__':
    main()
