const axios = require('axios')

axios
  .post('https://portaltotvs.7setembro.com.br/Corpore.NET//Source/EDU-EDUCACIONAL/Public/EduPortalAlunoLogin.aspx', {
    user: '1818232',
    pass: 'sen31231321ha',
  })
  .then(res => {
    console.log(res)
  })