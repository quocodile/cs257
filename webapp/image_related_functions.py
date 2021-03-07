'''
Kevin Chen, James Marlin, Quoc Nguyen
'''

import os
import json

def get_animes_imagepaths():
  '''
  Creates a dictionary where keys are
  the names of animes and values are
  the paths to their pictures. 
  '''
  anime_imagespaths_dictionary = {}
  for images_root, letter_dir, images_files in os.walk('static/images/'):
    for anime in letter_dir:
      path = os.path.join(images_root, anime)
      for anime_folder_root, anime_folder_directories, anime_folder_files in os.walk(path):
        for current_file in anime_folder_files:
          anime_title =  anime_folder_root.split('/')[-1]
          anime_imagespaths_dictionary[anime_title] = os.path.join(anime_folder_root, current_file) 
          print(anime_title)
  return anime_imagespaths_dictionary

def put_dictionary_as_json():
  dictionary = get_animes_imagepaths()
  json_file = open('animes_imagepaths2.json', 'w')
  json_file.write(json.dumps(dictionary))

#get_animes_imagepaths()
put_dictionary_as_json()

