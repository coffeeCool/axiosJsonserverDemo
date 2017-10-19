import getUsers from '../Services/getUsers.coffee'

export default getUsersDemo = ->
  getUsers()

  .then (data) ->
    console.log '获取user返回:::'
    , data

  .catch (error) ->
    console.log error