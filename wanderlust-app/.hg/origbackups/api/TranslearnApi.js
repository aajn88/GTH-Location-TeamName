const translate = require('google-translate-api');

class TranslearnApi {
    translate(text) {
        translate(text, {from: 'en', to: 'es'}).then((res) => {
            return res.text;
        })
    }

    sleep = (millis) => {
        return new Promise(resolve => setTimeout(resolve, millis))
    }
}

export default translearnApi = new TranslearnApi()