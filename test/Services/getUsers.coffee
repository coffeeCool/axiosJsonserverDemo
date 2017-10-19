import source from '../config/config.default.coffee'
import axios from 'axios'

export default getUsers = ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:3000/users'
    headers: source.source.headers
    dataType: 'json'
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error