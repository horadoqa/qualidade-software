describe('Abrir homepage', () => {
  it('deve abrir o site e verificar conteúdo', () => {
    const baseUrl = 'https://serverest.dev/'

    cy.visit(baseUrl)

    cy.contains('ServeRest').should('be.visible')
  })
})