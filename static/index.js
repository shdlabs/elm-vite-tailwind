import './index.css'
import { Elm } from '../src/Main.elm'

if (process.env.NODE_ENV === 'development') {
  const ElmDebugTransform = await import('elm-debug-transformer')

  ElmDebugTransform.register({
    simple_mode: false,
    debug: true,
    limit: 10_000,
  })
}

// const storedData = localStorage.getItem('myapp-model')
// const flags = storedData ? JSON.parse(storedData) : null

const app = Elm.Main.init({
  node: document.getElementById('root'),
  // flags: flags,
})

// app.ports.setStorage.subscribe(function (state) {
//   localStorage.setItem('myapp-model', JSON.stringify(state))
// })
