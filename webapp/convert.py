'''
Kevin Chen, James Marlin, Quoc Nguyen
'''

import csv 

def create_animes_csv(animes):
    """
        Write the id, name, # episodes, genre, and mal_rating from anime.csv into animeList.csv
        input: anime.csv
        output: None
    """
    anime_csv_file = animes
    duplication_dict = {}
    id = 1

    #open anime.csv
    with open(anime_csv_file, mode ='r') as file:
        csv_file = csv.reader(file)
        #write into animeList.csv
        with open('animeList.csv', mode='w') as anime_info:
            anime_writer = csv.writer(anime_info, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

            print("Creating animeList.csv file...")
            for csv_row in csv_file:
                if csv_row[0] not in duplication_dict:
                    duplication_dict[csv_row[0]] = ""
                    if csv_row[0] != "anime_id":
                        edited_title = csv_row[1].replace(",", "")
                        edited_genre = csv_row[2].replace(",", "")
                        anime_writer.writerow([id, edited_title, csv_row[4], edited_genre, csv_row[5]])
                        id += 1
            print("complete")

def main():
    create_animes_csv('clean_anime.csv')
    
if __name__ == "__main__":
    main()
