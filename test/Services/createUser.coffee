import source from '../config/config.default.coffee'
import axios from 'axios'

export default createUser = ->
  axios
    method: 'POST'
    url: 'http://192.168.0.192:3000/users'
    headers: source.source.headers
    dataType: 'json'
    data: {
      "name": '李四'
      "location": '北京'
    }
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error