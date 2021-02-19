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

  def test_search_anime_in_database(self):
    anime_dictionary = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'picture': '{insert an image of the anime cover}'}
    self.assertEqual(self.server.get_anime('Dragon Ball Z'), anime_dictionary)

  def test_search_nonexistent_anime(self):
     self.assertFalse(self.server.get_anime('Humpty Dumpty'))

  def test_get_animes_in_genre(self):
    anime1_dictionary = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'MAL_rating' : 8.16, 'picture': '{insert an image of the anime cover'}
    anime2_dictionary = {'name' : 'Naruto', 'episodes' : 220, 'MAL_rating' : 7.91, 'picture': '{insert an image of the anime cover'}
    action_list = [anime1_dictionary,anime2_dictionary]
    self.assertEqual(self.server.get_animes_in_genre('Action'), action_list)

  def test_get_user_watchlist(self):
    anime_dictionary1 = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'picture': '{insert an image of the anime cover'}
    anime_dictionary2 = {'name' : 'Naruto', 'episodes' : 220, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.91, 'picture': '{insert an image of the anime cover'}
    anime_dictionary3 = {'name' : 'Bleach', 'episodes' : 366, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.80, 'picture': '{insert an image of the anime cover'}
    watchlist = [anime_dictionary1, anime_dictionary2, anime_dictionary3]
    self.assertEqual(self.server.get_user_watchlist(user_id), watchlist)

  def test_get_recommendations(self):
    anime_dictionary1 = {'name' : 'Dragon Ball Z', 'episodes' : 291, 'genre' : 'Action, Shonen', 'MAL_rating' : 8.16, 'our_rating' : 0}
    anime_dictionary2 = {'name' : 'Naruto', 'episodes' : 220, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.91, 'our_rating' : 0}
    anime_dictionary3 = {'name' : 'Bleach', 'episodes' : 366, 'genre' : 'Action, Shonen', 'MAL_rating' : 7.80, 'our_rating' : 0}
    watchlist = [anime_dictionary1, anime_dictionary2, anime_dictionary3]
    self.assertEqual(self.server.get_recommendations(user_id,genre), )

  

