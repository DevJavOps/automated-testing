describe('Google Search', () => {
  it('should show the search page', () => {
    cy.visit('https://www.google.com')
    cy.title().should('include', 'Google')
  })
})
