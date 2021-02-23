import os
import csv
#from google_images_download import google_images_download

def remove_unwanted_data():
  '''
  Removes all unwanted
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

'''
def get_all_cover_images():

  Gets all of the anime cover images
  by querying through google images
  using the google_images_download
  library

  unable_to_get_image = open('unable_to_get_image.txt', 'w')
  with open('animeList.csv') as f:
    csv_reader = csv.reader(f)
    for row in csv_reader:
      try:
        keyword = row[1]
        anime_id = row[0]
        response = google_images_download.googleimagesdownload()  
        arguments = {"keywords": keyword + " anime","limit":1}   
        paths = response.download(arguments)
      except Exception as e:
        print(f"Anime ID: {anime_id}, Title: {keyword}", file=unable_to_get_image)
'''
      
def get_animes_imagepaths():
  '''
  Creates a dictionary where keys are
  the names of animes and values are
  the paths to their pictures. 
  '''
  print('putting images onto server, please wait just a few brief moments.')
  anime_imagespaths_dictionary = {}
  for root, dirs, files in os.walk('static/images/'):
    for name in dirs:
      path = os.path.join(root,name)
      for roots, dirs, files in os.walk(path):
        for oops in files:
          anime_imagespaths_dictionary[name] = os.path.join(root, name, oops)   
  return anime_imagespaths_dictionary

'''
def find_anime_image(anime_name):
  for root, dirs, files in os.walk('static/images/'):
    for name in dirs:
      if name == anime_name:
        path = os.path.join(root, name)
        for roots, dirs, files in os.walk(path):
          for oops in files:
            return os.path.join(root, name, oops)
'''
#change_file_names()
#get_all_cover_images()

animes_imagepaths = get_animes_imagepaths() 

