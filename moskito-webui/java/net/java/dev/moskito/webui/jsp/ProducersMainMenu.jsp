<%@ page language="java" contentType="text/html;charset=UTF-8" session="true"%>
<%@ taglib uri="http://www.anotheria.net/ano-tags" prefix="msk"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Moskito Producers <msk:write name="pageTitle" /></title>
<link rel="stylesheet" href="mskCSS"/>
</head>
<body>

<script type="text/javascript" src="../js/function.js"></script>

<div class="main_menu">
	<div class="white_pl">
		<div class="top">
			<div class="left_bg"><!-- --></div>
				<a href="#" class="logo">
					<img alt="MoSKito WebUI" src="<msk:write name="mskPathToImages" scope="application"/>moskito_webui_logo.gif" width="131"	height="25"/>
				</a>
				<ul>
					<li class="active"><a href="<msk:write name="mskShowAllProducers"/>">Producers</a>					
					<div class="sub_menu">
						<ul>
							<msk:present name="categories" scope="request">
								<li>								
									<span>Category:</span>
									<select onchange="javascript:handleSelect(this)">
										<jsp:include page="CategorySelection.jsp" flush="false" />
									</select>							
								</li>
						    </msk:present>
						    	
							<msk:present name="subsystems" scope="request">
								<li class="separator">								
									<span>Subsystem:</span>
									<select onchange="javascript:handleSelect(this)">
										<jsp:include page="SubsystemSelection.jsp" flush="false" />
									</select>								
								</li>
							</msk:present>
							
							<msk:present name="intervals" scope="request">
								<li>
									<span>Interval:</span>
									<select onchange="javascript:handleSelect(this)">									
							 			<jsp:include page="IntervalSelection.jsp" flush="false" />			
									</select>								
								</li>
							</msk:present>
							
							<msk:present name="units" scope="request">
								<li>	
									<span>Unit:</span>
									<select onchange="javascript:handleSelect(this)">									
										<jsp:include page="UnitSelection.jsp" flush="false" />
									</select>
								</li>
							</msk:present>							
						</ul>
					    <div class="clear"><!-- --></div>
					</div>
					<div class="over_color"><div><!-- --></div></div>
					</li>						
										
					<li><a href="<msk:write name="mskShowUseCases"/>">Use Cases</a></li>
					<li><a href="<msk:write name="mskShowMonitoringSessions"/>">Monitoring Sessions</a></li>
				</ul>
				<div class="right"></div>
				<jsp:include page="ExportMenu.jsp" flush="false" />
		</div>
	</div>
</div>