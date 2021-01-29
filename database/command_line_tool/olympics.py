'''
Authored by Quoc Nguyen

A command line tool for querying the olympics database

'''

import sys
import psycopg2
from time import sleep
from config import database 
from config import password
from config import user

def get_command_line_arguments():
  '''
  Removes an unnecessary extra 
  argument provided by sys.argv
  '''
  arguments = []
  if len(sys.argv) > 1:
    arguments = sys.argv[1:]
  return arguments
    
        
def print_usage_statement():
  usage_statement = open('usage.txt', 'r')
  for line in usage_statement:
    print(line, end="")
  return

def connect_to_database():
  try:
    connection = psycopg2.connect(database=database, user=user, password=password)
    return connection
  except Exception as e:
    print(e)
    exit()
  
def get_database_cursor(database_connection):
  try:
    cursor = database_connection.cursor()
    return cursor
  except Exception as e:
    print(e)
    exit()

def select_query(query):
  '''
  Performs a SELECT query on the
  database using the query statement
  passed in as a parameter.
  '''
  try:
    connection = connect_to_database()
    cursor = get_database_cursor(connection)
    cursor.execute(query)
    query_output = []
    for row in cursor:
      query_output.append(row)
    return query_output
    connection.close()
  except Exception as e:
    print(e)
    exit()

def print_athletes_with_noc(noc_name):
  '''
  Prints out all athletes that are 
  in the given NOC.
  '''
  try:
    query = "SELECT DISTINCT athletes.name "
    query += "FROM athletes, regions " 
    query += "WHERE athletes.team=regions.region_name "
    query += f"AND regions.noc='{noc_name}' "
    query_output = select_query(query)
    print(f"These are all athletes affiliated with the NOC '{noc_name}':")
    for row in query_output:
      print(f" * {row[0]}")
  except Exception as e:
    print(e)
    exit()


def print_athlete_with_team(athlete_name):
  ''' 
  Prints out all athletes that contain the provided
  string and the team that they are in.
  '''
  try:
    query = "SELECT DISTINCT name, team FROM athletes "
    query += f"WHERE name LIKE '%{athlete_name}%' "
    query_output = select_query(query)
    print(f"Athletes with a name containing '{athlete_name}' and their team:")
    for row in query_output:
      print(f" * {row[0]} is on team {row[1]}")
  except Exception as e:
    print(e)
    exit()

def rank_NOCs_by_number_gold_medals():
  '''
  Prints out all NOCs in descending 
  order based off of their number of
  Olympic Gold medals.
  '''
  try: 
    query = "SELECT COUNT(medal), noc FROM medals "
    query += "WHERE medal = 'Gold' GROUP BY noc "
    query += "ORDER BY COUNT(medal) DESC"
    query_output = select_query(query)
    print("NOCs in descending order by # of Gold medals")
    for row in query_output:
      noc_name = row[1]
      number_gold_medals = row[0]
      print(f"* {noc_name} has {number_gold_medals} Gold Medals")
      sleep(0.05)
  except Exception as e:
    print(e)
    exit()
  return

def print_all_athletes_with_team():
  '''
  Prints out all athletes, grouping
  them by their teams.
  '''
  try:
    query = "SELECT DISTINCT name, team "
    query += "FROM athletes ORDER BY team"
    query_output = select_query(query)
    for row in range(len(query_output)):
      current_athletes_team = query_output[row][1]
      previous_athletes_team = query_output[row-1][1]
      if (current_players_team != previous_athletes_team):
        print(f"All athletes on team {current_athletes_team}")
      while (current_athletes_team == previous_athletes_team):
        row += 1
        athlete_name = query_output[row][0]
        print(f" * {athlete_name}")
  except Exception as e:
    print(e)
    exit()

def print_all_athletes():
  try:
    query = "SELECT athletes.name "
    query += "FROM athletes"
    query_output = select_query(query)
    for row in query_output:
      athlete_name = row[0]
      print(f" * {athlete_name}")
  except Exception as e:
    print(e)
    exit()

def main():
  '''
  Handles the arguments provided
  at the command line and evokes
  separate query functions 
  appropriately.
  '''
  arguments = get_command_line_arguments()
  if '-h' in arguments or '--help' in arguments or len(arguments) < 2:
    print_usage_statement() 
    return
  else:
    positional_argument = arguments[0]
    if positional_argument == 'athlete':
      athlete_name = arguments[1]
      if '--all' in arguments:
        print_all_athletes()
      if '--team' in arguments:
        if '--all' in arguments:
          print_all_athletes_with_team()
        else: 
          print_athlete_with_team(athlete_name)
    if positional_argument == 'noc':
      noc_name = arguments[1]
      if '--athletes' in arguments:
        print_athletes_with_noc(noc_name)
      if '--medals' in arguments:
        if '--all' in arguments:
          rank_NOCs_by_number_gold_medals()
       
if __name__ == '__main__':
  main() 
