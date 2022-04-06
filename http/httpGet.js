const axios = require('axios')

axios
  .get('https://www.uni7.edu.br/')
  .then(res => {
    console.log(res)
  })