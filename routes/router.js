const express = require('express');
const multer = require('multer');
const router = express.Router();
const main = require('../controller/mac_controller');
const path = require('path')


// Set up storage for uploaded files
const storage = multer.diskStorage({
    destination: (req, file , cb) => {
        cb(null, 'upload/'); 
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname));

    }
});
const upload = multer({ storage: storage });

// Routes
router.get('/', main.getAllSongs);
router.get('/song/:id', main.getSong);
router.get('/add', (req, res) => res.render('add')); // Render add song form
router.post('/add', upload.fields([{ name: 'songFile' }, { name: 'imageFile' }]), main.addSong); 
router.get('/delete/:id', main.deleteSong); // For deleting a song
router.get('/edit/:id', main.getEditSong); // Edit form view
router.post('/edit/:id', upload.fields([{ name: 'songFile' }, { name: 'imageFile' }]), main.editSong);



// new
router.get('/home',main.getAllSongs);
router.get('/library',main.showLibrary);
router.get('/search',main.searchSongs);
router.get('/search/suggestions',main.getSuggestions);

module.exports = router;
