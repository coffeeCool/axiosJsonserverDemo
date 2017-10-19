import updateUser from '../Services/updateUser.coffee'

export default updateUserDemo = ->
  updateUser()

  .then (data) ->
    console.log '更新user信息返回:::'
    , data

  .catch (error) ->
    console.log error