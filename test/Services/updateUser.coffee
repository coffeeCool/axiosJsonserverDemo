import source from '../config/config.default.coffee'
import axios from 'axios'

export default updateUser = ->
  axios
    method: 'PUT'
    url: 'http://192.168.0.192:3000/users/1'
    dataType: 'json'
    headers: source.source.headers
    data: {
      "name": "张三"
      "location": "上海"
    }
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error