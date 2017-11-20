<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url var="context" value="/" />
<div class="row">
	<div class="col-xs-3 col-md-3"></div>
	<div class="col-xs-6 col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">
				<spring:message code="addRole.page.title" />
			</div>
			<div class="panel-body">
				<ul class="nav nav-tabs">
					<c:forEach var="role" items="${roles}" varStatus="loop">
						<li><a data-toggle="tab" id="tabtitle_${role.name}" href="#tab_${role.name}">${role.name}
								<span style="margin-left: 5px;" class="pull-right"> <span
									class="btn btn-xs" data-toggle="confirmation" onclick="deleteRole('${role.name}')"> <span
										class="glyphicon glyphicon-remove" aria-hidden="true"></span>
								</span>
							</span>
						</a></li>
					</c:forEach>
					<li><a href="role/addRole"><span
							class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></li>
					<!-- 	<li class="active"><a data-toggle="tab" href="#admins">ADMINS</a></li>
					<li><a data-toggle="tab" href="#users">USERS</a></li> -->
				</ul>

				<div class="tab-content">
					<c:forEach var="role" items="${roles}" varStatus="loop">

						<div id="tab_${role.name}" class="tab-pane fade">
							<h3>${role.name}</h3>
							<div style="padding: 5px">
								<div class="input-group">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button"
											onclick="addRoleUser(${role.id},'${role.name}')">Add</button>
									</span> <input id="input_${role.name}" type="text"
										class="form-control" placeholder="Username">
								</div>
								<div id="alert_${role.name}" style="display: none"
									class="alert alert-danger" role="alert">Username doesn't
									exist</div>
								<div id="success_${role.name}" style="display: none"
									class="alert alert-success" role="alert">Role has been
									successfully given the user.</div>
							</div>
							<div id="list_${role.name}" class="list-group">
								<a href="#" class="list-group-item active"> Cras justo odio
								</a> <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-xs-3  col-md-3"></div>
</div>

<div id="dialog-confirm" title="Do you want to role from user ?">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>These item will be permanently deleted and cannot be recovered. Are you sure?</p>
</div>
 