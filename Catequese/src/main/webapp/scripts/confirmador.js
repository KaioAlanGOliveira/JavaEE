/**
 * Confirmação de exclusão de contato
 * @autor kaio alan
 */

function confirmar(idcon) {
    let resposta = confirm("Confirma a exclusão dese contato ?")
    if (resposta === true) {
        window.location.href = "delete?idcon=" + idcon;
    }
}