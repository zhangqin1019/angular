<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>My JSP 'index.jsp' starting page</title>
    	<meta http-equiv="pragma" content="no-cache">
    	<meta http-equiv="cache-control" content="no-cache">
    	<meta http-equiv="expires" content="0">    
    	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    	<meta http-equiv="description" content="This is my page">
    	<link href="css/bootstrap.min.css" rel="stylesheet"/>
        <script src="js/angular.min.js"></script>
        <script src="js/angular.js"></script>
    </head>
    <body ng-app="angularModule" ng-controller="angularController">
        <div class="container-fluid">
            <h2 class="text-center" style="background-color: aqua;color: white;padding: 10px 0px;">用户信息管理后台界面</h2>
            <table class="table table-striped table-bordered text-center">
                <thead>
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>密码</th>
                        <th>年龄</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="userInfo in userInfos">
                        <td>{{userInfo.userId}}</td>
                        <td>{{userInfo.userName}}</td>
                        <td>{{userInfo.userPwd}}</td>
                        <td>{{userInfo.userAge}}</td>
                        <td>
                        	<button class="btn btn-success" ng-click="select($index)">查找</button>
                            <button class="btn btn-danger" ng-click="deleteUser($index)">删除</button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p style="background-color: pink;color:white;padding: 10px;">详细信息</p>
            <form class="form-inline">
                <div class="form-group">
                    <label>编号:</label>
                    <input type="text" class="form-control" name="userId" ng-model="info.userId">
                </div>
                <div class="form-group">
                    <label>姓名:</label>
                    <input type="text" class="form-control" name="userName" ng-model="info.userName">
                </div>
                <div class="form-group">
                    <label>密码:</label>
                    <input type="text" class="form-control" name="userPwd" ng-model="info.userPwd">
                </div>
                <div class="form-group">
                    <label>年龄:</label>
                    <input type="text" class="form-control" name="userAge" ng-model="info.userAge">
                </div>
                <div class="form-group">
                	<button class="btn btn-warning" ng-click="updateUser(info)">修改</button>
                    <button class="btn btn-info" ng-click="addUser(info)">增加</button>
                </div>
            </form>
        </div>
    </body>
</html>
