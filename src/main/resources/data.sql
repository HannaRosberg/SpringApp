-- Insert new categories
INSERT INTO category (name, symbol, description)
VALUES  ('Food', '🍔', 'Restaurants, cafes, and food outlets'),
        ('Electronics', '📱', 'Stores selling electronic devices and accessories'),
        ('Sports', '⚽', 'Sports-related places and activities'),
        ('Health', '💪', 'Health centers, spas, and wellness locations'),
        ('Entertainment', '🎉', 'Places for entertainment and recreational activities'),
        ('Education', '🎓', 'Educational institutions and learning centers'),
        ('Nature', '🌿', 'Points of interest related to nature'),
        ('History', '🏛️', 'Historical sites');;

-- Insert new places
INSERT INTO location (name, category_id, user_id, is_private, last_modified, description, coordinates, created_at, deleted)
VALUES    ('Green Garden Restaurant', 1, 'Hanna', 1, CURRENT_TIMESTAMP, 'A beautiful garden-themed restaurant with organic food options', ST_GeomFromText('POINT(-73.985428 40.748817)', 4326), CURRENT_TIMESTAMP, 0),
          ('The Italian Bistro', 1, 'Malcolm', 1, CURRENT_TIMESTAMP, 'Cozy bistro offering traditional Italian dishes', ST_GeomFromText('POINT(-73.998503 40.722576)', 4326), CURRENT_TIMESTAMP, 0),
          ('Gadget World', 2, 'Cedric', 0, CURRENT_TIMESTAMP, 'A store specializing in the latest gadgets and electronics', ST_GeomFromText('POINT(-73.985130 40.758896)', 4326), CURRENT_TIMESTAMP, 0),
          ('SmartTech Solutions', 2, 'Cedric', 1, CURRENT_TIMESTAMP, 'A technology store with smart home gadgets and accessories', ST_GeomFromText('POINT(-73.985428 40.748817)', 4326), CURRENT_TIMESTAMP, 0),
          ('SportsZone', 3, 'Deborah', 1, CURRENT_TIMESTAMP, 'A sports goods store offering equipment for various sports', ST_GeomFromText('POINT(-73.989308 40.741895)', 4326), CURRENT_TIMESTAMP, 0),
          ('Adventure Park', 5, 'Hanna', 1, CURRENT_TIMESTAMP, 'Outdoor park offering activities like rock climbing and zip-lining', ST_GeomFromText('POINT(-73.974738 40.742825)', 4326), CURRENT_TIMESTAMP, 0),
          ('Vitality Spa', 4, 'Hanna', 1, CURRENT_TIMESTAMP, 'A wellness center with spa treatments, yoga, and health coaching', ST_GeomFromText('POINT(-73.984130 40.723054)', 4326), CURRENT_TIMESTAMP, 0),
          ('Organic Wellness', 4, 'Malcolm', 0, CURRENT_TIMESTAMP, 'Organic health store offering supplements and natural remedies', ST_GeomFromText('POINT(-73.993916 40.755467)', 4326), CURRENT_TIMESTAMP, 0),
          ('Star Cinemas', 5, 'Deborah', 0, CURRENT_TIMESTAMP, 'A movie theater showing the latest films and exclusive screenings', ST_GeomFromText('POINT(-73.984472 40.759011)', 4326), CURRENT_TIMESTAMP, 0),
          ('Fun land Amusement Park', 5, 'Sarah', 0, CURRENT_TIMESTAMP, 'A theme park with roller coasters, games, and food stalls', ST_GeomFromText('POINT(-74.005973 40.714352)', 4326), CURRENT_TIMESTAMP, 0),
          ('Bright Minds Academy', 6, 'Sarah', 1, CURRENT_TIMESTAMP, 'A private school offering tutoring services and educational programs', ST_GeomFromText('POINT(-73.993219 40.736127)', 4326), CURRENT_TIMESTAMP, 0),
          ('Mountain View College', 6, 'Cedric', 0, CURRENT_TIMESTAMP, 'A prestigious college offering courses in various fields of study', ST_GeomFromText('POINT(-73.994952 40.745705)', 4326), CURRENT_TIMESTAMP, 0),
          ('The Louvre', 8, 'Cindy', 1, CURRENT_TIMESTAMP, 'A world-renowned museum in Paris, home to thousands of works of art', ST_GeomFromText('POINT(2.337644 48.860611)', 4326), CURRENT_TIMESTAMP, 0),
          ('Eiffel Tower', 8, 'Hanna', 0, CURRENT_TIMESTAMP, 'A historic iron tower located in Paris, a symbol of France', ST_GeomFromText('POINT(2.294350 48.858844)', 4326), CURRENT_TIMESTAMP, 0),
          ('Natural History Museum', 8, 'Sarah', 0, CURRENT_TIMESTAMP, 'A museum showcasing natural history exhibits, including fossils and minerals', ST_GeomFromText('POINT(-73.973988 40.781324)', 4326), CURRENT_TIMESTAMP, 0),
          ('Central Park', 7, 'Deborah', 1, CURRENT_TIMESTAMP, 'A beautiful park in NYC', ST_GeomFromText('POINT(-73.968285 40.785091)', 4326), CURRENT_TIMESTAMP, 0),
          ('The Colosseum', 8, 'Cedric', 1, CURRENT_TIMESTAMP, 'A historical amphitheater in Rome', ST_GeomFromText('POINT(12.492373 41.890251)', 4326), CURRENT_TIMESTAMP, 0);

