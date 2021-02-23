import os

def get_animes_imagepaths():
  '''
  Creates a dictionary where keys are
  the names of animes and values are
  the paths to their pictures. 
  '''
  print("Putting image paths onto server, please wait just a few brief moments.")
  print("After debugger is active, site will be fully ready to go.")
  anime_imagespaths_dictionary = {}
  for root, dirs, files in os.walk('static/images/'):
    for name in dirs:
      path = os.path.join(root,name)
      for roots, dirs, files in os.walk(path):
        for oops in files:
          anime_imagespaths_dictionary[name] = os.path.join(root, name, oops)   
  return anime_imagespaths_dictionary


animes_imagepaths = get_animes_imagepaths() 
