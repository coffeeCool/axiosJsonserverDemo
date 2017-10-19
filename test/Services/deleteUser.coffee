import source from '../config/config.default.coffee'
import axios from 'axios'

export default deleteUser = ->
  axios
    method: 'DELETE'
    url: 'http://192.168.0.192:3000/users/1'
    dataType: 'json'
    headers: source.source.headers

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error