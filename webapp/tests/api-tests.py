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

  def test_get_animes_in_genre(self):
    anime1_dictionary = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'our_rating' : 0}
    anime2_dictionary = {'name' : 'Naruto', 'episodes' : 220, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.91, 'our_rating' : 0}
    action_list = [anime1_dictionary,anime2_dictionary]
    self.assertEqual(self.server.get_animes_in_genre('Action'), action_list)

  def test_get_user_watchlist(self):
    anime_dictionary1 = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'our_rating' : 0}
    anime_dictionary2 = {'name' : 'Naruto', 'episodes' : 220, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.91, 'our_rating' : 0}
    anime_dictionary3 = {'name' : 'Bleach', 'episodes' : 366, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.80, 'our_rating' : 0}
    watchlist = [anime_dictionary1, anime_dictionary2, anime_dictionary3]
    self.assertEqual(self.server.get_user_watchlist(user_id), anime_dictionary2)

  def test_create_user_watchlist(self):
    self.assertTrue(self.server.create_user_watchlist(user_id,anime_id))

  def test_get_recommendations(self):
    self.assertTrue(self.server.get_recommendations(user_id,genre))
  

