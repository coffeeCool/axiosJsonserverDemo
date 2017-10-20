import getUsers from '../Services/getUsers.coffee'

export default getUsersDemo = ->
  getUsers()

  .then (data) ->
    console.log '获取user返回:::'
    , data
    temp = []
    if data.length > 0
      i = 0
      while i < data.length
        temp.push data[i].id
        i++
    temp

  .catch (error) ->
    console.log error