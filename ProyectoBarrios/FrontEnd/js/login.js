const button = document.getElementById('login');

const mailElement = document.getElementById('mail');
const passwordElement = document.getElementById('password');

button.addEventListener('click', () => {
    const mail = mailElement.value;
    const password = passwordElement.value;

    if (mail && password) {
        //voy a hacer login

        const objetoBody = {
            mail: mail,
            password: password,
            fecha: '24/06/2021'
        };

        fetch('http://localhost:4000/auth/login', {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(objetoBody)
        })
        .then(function(response) {
            return response.json();
        })
        .then(function(response) {
            

            if (!response.error) {

                localStorage.setItem('token', response.token);
                

                alert('Login exitoso');
                location.reload();
            }else {
                alert('Login fallido');
            }
        })
    }
    else {
        alert('Falta completar campos')
    }
});