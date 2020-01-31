
CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT, 
    diameter REAL,
    distance REAL,
    mass REAL,
    moon_count INTEGER
);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Mercury', 'https://www.abc.net.au/news/image/11297326-3x2-700x467.jpg', 4879, 57.9, 0.330, 0);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Venus', 'http://www.astronomy.com/-/media/Images/News%20and%20Observing/News/2019/05/Venus1.jpg?mw=600', 12.104, 108.2, 4.87, 0);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Earth', 'https://thumbor.forbes.com/thumbor/711x711/https://blogs-images.forbes.com/startswithabang/files/2016/03/1-WAhCJ5RdyyZyhBYx4hh9Jg.jpg?width=960', 12.756, 149.6, 5.97, 1);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Mars', 'https://specials-images.forbesimg.com/imageserve/5d8b411618444200084e7835/960x0.jpg?cropX1=0&cropX2=1599&cropY1=0&cropY2=899', 6792, 227.9, 0.642, 2);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Jupiter', 'https://space-facts.com/wp-content/uploads/jupiter.png', 142.984, 778.6, 1898, 79);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Saturn', 'https://space-facts.com/wp-content/uploads/saturn.png', 120.536, 1433.5, 568, 82);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Uranus', 'https://data.whicdn.com/images/331818858/original.jpg?t=1561112500', 51.118, 2872.5, 86.8, 27);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Neptune', 'https://www.google.com/search?q=neptune&rlz=1C5CHFA_enAU879AU879&sxsrf=ACYBGNRDxX7puxbiUJz7xB-Lsyq0QW3vmg:1579667069792&source=lnms&tbm=isch&sa=X&ved=2ahUKEwisubu0rpbnAhUBb30KHZcQAssQ_AUoAXoECBEQAw&biw=720&bih=748&dpr=2#imgrc=781I7uPMb7MqXM:', 51.118, 2872.5, 102, 14);

INSERT INTO planets (name, image_url, diameter, distance, mass, moon_count)
VALUES ('Pluto', 'https://nineplanets.org/wp-content/uploads/2019/09/pluto-1.png', 2370, 5906.4, 0.0146, 5);

update planets set image_url = 'https://www.universetoday.com/wp-content/uploads/2011/07/HubbleNeptune.jpg'
where image_url = 'https://www.google.com/search?q=neptune&rlz=1C5CHFA_enAU879AU879&sxsrf=ACYBGNRDxX7puxbiUJz7xB-Lsyq0QW3vmg:1579667069792&source=lnms&tbm=isch&sa=X&ved=2ahUKEwisubu0rpbnAhUBb30KHZcQAssQ_AUoAXoECBEQAw&biw=720&bih=748&dpr=2#imgrc=781I7uPMb7MqXM:';