const NotesModel = require('./src/models/notesModel')
const notesModel = new NotesModel

console.log("The notes app is running")
console.log(notesModel.getNotes())