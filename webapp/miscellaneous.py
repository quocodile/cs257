import csv

'''
This dataset removes all unwanted
data from the anime.csv file. 
Unwanted data is any column that 
contains the word 'Ecchi', 'Hentai',
or 'Harem'
'''

cleaned_csv = open('clean_anime.csv', 'w')
with open('anime.csv') as f:
  csv_reader = csv.reader(f)
  for row in f:
    if 'Hentai' not in row:
      if 'Harem' not in row:
        if 'Ecchi' not in row:
          stripped_row = row.strip()
          print(stripped_row, file=cleaned_csv)


