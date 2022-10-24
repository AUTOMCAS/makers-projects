const NotesModel = require('./notesModel')

describe('NotesModel', () => {
  const notesModel = new NotesModel
  describe('getNotes()', () => {
    it('returns empty array', () => {
      expect(notesModel.getNotes()).toEqual([])
    })
  })

  describe('addNote()', () => {
    it('adds one note', () => {
      notesModel.addNote('Buy milk')
      expect(notesModel.getNotes()).toEqual(["Buy milk"])
    })

    it('adds additional note', () => {
      notesModel.addNote('Go to the gym')
      expect(notesModel.getNotes()).toEqual(["Buy milk", "Go to the gym"])
    })
  })

  describe('reset()', () => {
    it('returns empty array', () => {
      notesModel.reset()
      expect(notesModel.getNotes()).toEqual([])
    })
  })
})