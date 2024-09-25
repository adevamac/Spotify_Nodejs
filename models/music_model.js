const db = require('../config/db');

const SongModel = {
    getAllSongs: (callback) => {
        db.query('SELECT * FROM songs', callback);
    },
    addSong: (newSong, callback) => {
        db.query('INSERT INTO songs SET ?', newSong, callback);
    },
    deleteSong: (id, callback) => {
        db.query('DELETE FROM songs WHERE Id = ?', [id], callback);
    },
    getSongById: (id, callback) => {
      db.query('SELECT * FROM songs WHERE Id = ?', [id], (err, results) => {
          if (err) {
              return callback(err, null);
          } 
          return callback(null, results[0]);  // Send the first result (single song)
      });
  },  
    updateSong: (id, updatedSong, callback) => {
        db.query('UPDATE songs SET ? WHERE Id = ?', [updatedSong, id], callback);
    },
    searchSongs: (query, callback) => {
        // Use a parameterized query to prevent SQL injection
        db.query('SELECT * FROM songs WHERE title LIKE ? OR artist LIKE ?', [`%${query}%`, `%${query}%`], callback);
    },
    getSuggestions: (query, callback) => {
        const sql = 'SELECT * FROM songs WHERE title LIKE ? OR artist LIKE ? LIMIT 10'; // Query to search by title or artist
        db.query(sql, [`%${query}%`, `%${query}%`], callback);
    },
    
};

module.exports = SongModel;
