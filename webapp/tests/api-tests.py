'''
  Kevin Chen, James Marlin, Quoc Nguyen

  this program is used to implement unit
  tests for our web application as part
  of our final project
'''
import server
import unittest
class ServerTester(unittest.TestCase):
  def setUp(self):
    self.server.Server() 

  def tearDown(self):
    pass

  def test_get_existing_anime(self):
    anime_dictionary = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'our_rating' : 0}
    self.assertEqual(self.server.get_anime('Dragon Ball Z'), anime_dictionary)

  def test_get_nonexistent_anime(self):
     self.assertFalse(self.server.get_anime('Humpty Dumpty'))

  def test_get_existing_anime(self):
    anime1_dictionary = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'our_rating' : 0}
    anime1_dictionary
    self.assertEqual(self.server.get_anime('Dragon Ball Z'), anime_dictionary)
  
