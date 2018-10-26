# Import file "Reset Staff ID (Page 1)"
# Import file "Reset Password (Page 1)"
# Import file "Forgot Password (Page 1)"

# Import file "Contact Residents (Page 1)"
contactResidents = Framer.Importer.load("imported/Contact%20Residents%20(Page%201)@1x", scale: 1)
# Import file "Contact Residents (Page 1)"
{mapboxgl} = require "npm"
{MapboxJS, CustomMarker, Marker, animateMarker} = require 'MapboxJS'
Utils.insertCSS('@import url(https://api.tiles.mapbox.com/mapbox-gl-js/v0.43.0/mapbox-gl.css)')
InputModule = require "input-framer/input"

document.body.style.cursor = "auto"
forgotPassword = Framer.Importer.load("imported/Reset%20Password%20(Page%201)@1x", scale: 1)
# FINISHED SCREENS
signIn = Framer.Importer.load("imported/Sign_In%20(Page%201)@1x", scale: 1)
homePage = Framer.Importer.load("imported/Home%20(Page%201)@1x", scale: 1)
forgotStaffID = Framer.Importer.load("imported/Reset%20Staff%20ID%20(Page%201)@1x", scale: 1)
bookingStatusOverlay = Framer.Importer.load("imported/BookingStatusOverlay%20(Page%201)@1x", scale: 1)
robotStatusOverlay = Framer.Importer.load("imported/RobotStatusOverlay%20(Page%201)@1x", scale: 1)
contactTechnicians = Framer.Importer.load("imported/Contact%20Technicians%20(Page%201)@1x", scale: 1)
smsOverlay = Framer.Importer.load("imported/SMSOverlay%20(Page%201)@1x", scale: 1)
callingOverlay = Framer.Importer.load("imported/CallingOverlay%20(Page%201)@1x", scale: 1)
calendarOverlay = Framer.Importer.load("imported/CalendarInput%20(Page%201)@1x", scale: 1)
adjustBooking = Framer.Importer.load("imported/Adjust%20Booking%20(Page%201)@1x", scale: 1)
infringementsLanding = Framer.Importer.load("imported/Infringements%20Landing%20(Page%201)@1x", scale: 1)
serviceRobotsLanding = Framer.Importer.load("imported/Service%20Robots%20Landing%20(Page%201)@1x", scale: 1)
settings = Framer.Importer.load("imported/User%20Account%20Settings%20(Page%201)@1x", scale: 1)
contactPolice = Framer.Importer.load("imported/Contact%20Police%20(Page%201)@1x", scale: 1)

resolveInfringement = Framer.Importer.load("imported/Resolve%20Infringement%20(Page%201)@1x", scale: 1)
adjustBookingsLanding = Framer.Importer.load("imported/Adjust%20Bookings%20Landing%20(Page%201)@1x", scale: 1)
notifications = Framer.Importer.load("imported/Notifications%20(Page%201)@1x", scale: 1)
serviceRobot = Framer.Importer.load("imported/Service%20Robot%20(Page%201)@1x", scale: 1)

FlowComp = new FlowComponent
FlowComp.showNext(signIn.Sign_In)
#service robot nav links
serviceRobot.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobot.Adjust_Bookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobot.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
serviceRobot.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
serviceRobot.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobot.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
serviceRobot.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
serviceRobot.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)

serviceRobot.Home_2.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)

#resolve infringement nav links
resolveInfringement.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	
resolveInfringement.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	 
resolveInfringement.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	 
resolveInfringement.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
resolveInfringement.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
resolveInfringement.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	 
resolveInfringement.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
resolveInfringement.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
resolveInfringement.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)

resolveInfringement.Home_2.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	
#adjust booking nav links
adjustBooking.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true
adjustBooking.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
adjustBooking.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
adjustBooking.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
adjustBooking.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
adjustBooking.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true
	 
adjustBooking.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
adjustBooking.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
adjustBooking.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)

adjustBooking.Home_2.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)

# START NAV LINKS
homePage.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true
homePage.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
homePage.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
homePage.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
homePage.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
homePage.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	 
homePage.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings)
	 
homePage.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
homePage.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
# notification links
notifications.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
notifications.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
notifications.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
notifications.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
notifications.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
notifications.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings)
	 
notifications.Home_2.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
notifications.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
notifications.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
notifications.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
# settings links
settings.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
settings.Service_Robots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
settings.Adjust_Bookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
settings.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
settings.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
settings.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
settings.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
settings.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
settings.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
settings.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
#adjust bookings landing
adjustBookingsLanding.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
adjustBookingsLanding.Service_Robots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
adjustBookingsLanding.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
adjustBookingsLanding.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
adjustBookingsLanding.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
adjustBookingsLanding.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
adjustBookingsLanding.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
adjustBookingsLanding.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
# service robots landing
serviceRobotsLanding.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobotsLanding.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobotsLanding.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
serviceRobotsLanding.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
serviceRobotsLanding.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
serviceRobotsLanding.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
serviceRobotsLanding.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
serviceRobotsLanding.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
serviceRobotsLanding.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
	 

# infringements landing
infringementsLanding.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
infringementsLanding.Adjust_Bookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
infringementsLanding.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
infringementsLanding.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
infringementsLanding.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
infringementsLanding.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
infringementsLanding.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
infringementsLanding.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
infringementsLanding.Service_Robots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
# contact residents
contactResidents.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactResidents.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactResidents.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
contactResidents.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
contactResidents.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
contactResidents.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
contactResidents.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
contactResidents.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactResidents.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
# contact technicians
contactTechnicians.Adjust_Bookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactTechnicians.PoliceTab.onClick (event, layer) ->
	FlowComp.showNext(contactPolice.Contact_Police, animate: false)
	 
contactTechnicians.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
contactTechnicians.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
contactTechnicians.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
contactTechnicians.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
contactTechnicians.Service_Robots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactTechnicians.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactTechnicians.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
# contact police
contactPolice.TechnicianTab.onClick (event, layer) ->
	FlowComp.showNext(contactTechnicians.Contact_Technicians, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactPolice.AdjustBookings.onClick (event, layer) ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactPolice.Settings.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)
	 
contactPolice.Notifications.onClick (event, layer) ->
	FlowComp.showNext(notifications.Notifications_4, animate: false)
	 
contactPolice.SignOut.onClick (event, layer) ->
	FlowComp.showNext(signIn.Sign_In)
	 
contactPolice.Home.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)
	 
contactPolice.ServiceRobots.onClick (event, layer) ->
	FlowComp.showNext(serviceRobotsLanding.Service_Robots_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactPolice.Infringements.onClick (event, layer) ->
	FlowComp.showNext(infringementsLanding.Infringements_Landing, animate: false)
	searchBox.enable()
	searchBox.visible = true	 
contactPolice.ResidentTab.onClick (event, layer) ->
	FlowComp.showNext(contactResidents.Contact_Residents, animate: false)
	 
# END

serviceTimeInput = new InputModule.Input
	disabled: true
	width: 285
	height: 27
	x: 788
	y: 609
	textColor: textInputColour
	fontSize: textInputFontSize

calendarOverlay.Calendar.borderRadius = "12px"

serviceRobot.DateInput.onClick ->
	FlowComp.showOverlayCenter(calendarOverlay.Calendar)

serviceRobot.TimeInput.onClick ->
	serviceTimeInput.enable()

serviceRobot.ServiceButton.onClick ->
	FlowComp.showPrevious()

infringementsLanding.Review_6.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Review_5.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Review_4.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Review_3.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Review_2.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Review.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)
infringementsLanding.Button.onClick (event, layer) ->
	FlowComp.showNext(resolveInfringement.Resolve_Infringement)

resolveInfringement.Back.onClick ->
	FlowComp.showPrevious()

resolveInfringement.Call.onClick ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)

resolveInfringement.SMS.onClick ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
	
resolveInfringement.ResolveBTN.onClick ->
	FlowComp.showPrevious()

adjustBooking.Back.onClick ->
	FlowComp.showPrevious()

adjustBookingsLanding.Left.onClick (event, layer) ->
	adjustBookingsLanding.SelectedBorder.animate
		x: 56
		options:
			time: 0.8
			curve: Bezier.ease
			
adjustBookingsLanding.Middle.onClick (event, layer) ->
	adjustBookingsLanding.SelectedBorder.animate
		x: 360
		options:
			time: 0.8
			curve: Bezier.ease

adjustBookingsLanding.Right.onClick (event, layer) ->
	adjustBookingsLanding.SelectedBorder.animate
		x: 690
		options:
			time: 0.8
			curve: Bezier.ease

adjustBookingsLanding.Edit.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false
adjustBookingsLanding.EDIT.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false
adjustBookingsLanding.Edit_2.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false
adjustBookingsLanding.Edit_3.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false
adjustBookingsLanding.Edit_4.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false
adjustBookingsLanding.Edit_5.onClick (event, layer) ->
	FlowComp.showNext(adjustBooking.ChangeBooking)
	searchBox.disable()
	searchBox.visible = false

adjustBookingsLanding.DeleteButton.onClick (event, layer) ->
	adjustBookingsLanding.Row3.animate
		opacity: 0.00
		options:
			time: 0.5
			curve: Bezier.ease
	adjustBookingsLanding.Row4.animate
		y: 164
	adjustBookingsLanding.Row5.animate
		y: 244
	adjustBookingsLanding.Row6.animate
		y: 327
	adjustBookingsLanding.Row7.animate
		y: 408


notifications.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

contactPolice.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

contactResidents.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

contactTechnicians.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

settings.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

homePage.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

adjustBooking.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

adjustBookingsLanding.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

serviceRobot.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

serviceRobotsLanding.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

serviceRobot.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

infringementsLanding.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease


resolveInfringement.Icons.animate
	contrast: 100
	hueRotate: 0
	invert: 100
	options:
		time: 0.1
		curve: Bezier.ease

notifications.Reject_2.onClick (event, layer) ->
	notifications.Notification2.animate
		opacity: 0.00
		backgroundColor:"rgba(231,50,36,0.5)"
		options:
			time: 1
			curve: Bezier.ease
notifications.Confirm_2.onClick ->
	notifications.Notification2.animate
		opacity: 0.00
		backgroundColor:  "rgba(0,192,0,0.5)"
		options:
			time: 1
			curve: Bezier.ease

notifications.Confirm_3.onClick (event, layer) ->
	notifications.Notification1.animate
		opacity: 0.00
		backgroundColor: "rgba(0,192,0,0.5)"
		options:
			time: 1
			curve: Bezier.ease

	notifications.Notification2.animate
		y: 129
		options:
			time: 1
			curve: Bezier.ease
	notifications.Notification3.animate
		y: 387
		options:
			time: 1
			curve: Bezier.ease
notifications.Reject_3.onClick (event, layer) ->
	notifications.Notification1.animate
		opacity: 0.00
		backgroundColor: "rgba(231,50,36,0.5)"
		options:
			time: 1
			curve: Bezier.ease
	notifications.Notification2.animate
		y: 129
		options:
			time: 1
			curve: Bezier.ease
	notifications.Notification3.animate
		y: 387
		options:
			time: 1
			curve: Bezier.ease


notifications.Confirm.onClick (event, layer) ->
	notifications.Notification3.animate
		opacity: 0.00
		backgroundColor: "rgba(0,192,0,0.5)"
		options:
			time: 1
			curve: Bezier.ease
			


textInputHeight = 23
textInputWidth = 520
textInputColour = "#263238"
textInputFontSize = 20
textInputXPos = 450

loginStaffIDInput = new InputModule.Input
	virtualKeyboard: false
	y: 394
	x: textInputXPos
	width: textInputWidth
	height: 28
	fontSize: textInputFontSize
	textColor: textInputColour

loginStaffIDInput.onMouseOver (event, layer) ->
	signIn.Input.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,0.5)"
		backgroundColor: "rgba(94,168,191,0.5)"
		options:
			time: 0.5
			curve: Bezier.ease

loginStaffIDInput.onMouseOut (event, layer) ->
	signIn.Input.animate
		backgroundColor: "rgb(255, 255, 255)"
		shadowBlur: 0
		shadowSpread: 0
		options:
			time: 0.5
			curve: Bezier.ease

loginStaffIDInput.onClick (event, layer) ->
	signIn.Input.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,1)"
		backgroundColor: "rgba(94,168,191,1)"
		options:
			time: 0.3
			curve: Bezier.ease

loginPasswordInput = new InputModule.Input
	virtualKeyboard: false
	y: 533
	x: textInputXPos
	width: textInputWidth
	height: 29
	type: "password"
	fontSize: textInputFontSize 
	textColor: textInputColour

loginPasswordInput.onMouseOver (event, layer) ->
	signIn.pw_input.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,0.5)"
		backgroundColor: "rgba(94,168,191,0.5)"
		options:
			time: 0.5
			curve: Bezier.ease

loginPasswordInput.onMouseOut (event, layer) ->
	signIn.pw_input.animate
		backgroundColor: "rgb(255, 255, 255)"
		shadowBlur: 0
		shadowSpread: 0
		options:
			time: 0.5
			curve: Bezier.ease

loginPasswordInput.onClick (event, layer) ->
	signIn.pw_input.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,1)"
		backgroundColor: "rgba(94,168,191,1)"
		options:
			time: 0.3
			curve: Bezier.ease

workEmailInput = new InputModule.Input
	virtualKeyboard: false
	y: 402
	x: textInputXPos + 60
	width: textInputWidth
	height: textInputHeight + 6
	type: "email"
	fontSize: textInputFontSize 
	textColor: textInputColour


newPasswordInput = new InputModule.Input
	virtualKeyboard: false
	y: 530
	x: textInputXPos + 60
	width: textInputWidth
	height: textInputHeight + 15
	fontSize: textInputFontSize 
	textColor: textInputColour


confirmNewPasswordInput = new InputModule.Input
	virtualKeyboard: false
	y: 660
	x: textInputXPos + 60
	width: textInputWidth
	height: textInputHeight + 15
	fontSize: textInputFontSize
	textColor: textInputColour

newStaffIDInput = new InputModule.Input
	virtualKeyboard: false
	y: 530
	x: textInputXPos + 60
	width: textInputWidth
	height: textInputHeight + 15
	fontSize: textInputFontSize 
	textColor: textInputColour

confirmNewStaffIDInput = new InputModule.Input
	virtualKeyboard: false
	y: 660
	x: textInputXPos + 60
	width: textInputWidth
	height: textInputHeight + 15
	fontSize: textInputFontSize 
	textColor: textInputColour

searchBox = new InputModule.Input
	disabled: true
	virtualKeyboard: false
	x: 290
	y: 98
	width: 260
	height: 26
	fontSize: textInputFontSize
	textColor: "#FFFFFF"

searchBox.onClick ->
	adjustBookingsLanding.PlaceholderText.animate
		opacity: 0.00
		options:
			time: 0.1

serviceRobot.Back.onClick ->
	FlowComp.showPrevious()


# REMEMBER ME
signIn.X_Check.opacity = 0

signIn.X_Check.states =
	on:
		opacity: 1
	off:
		opacity: 0

signIn.Checkbox_2.onClick ->
	signIn.Checkbox_2.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,1)"
		backgroundColor: "rgba(94,168,191,1)"
	signIn.X_Check.stateCycle "on", "off"

signIn.Checkbox_2.onMouseOver ->
	signIn.Checkbox_2.style.cursor = "pointer"
	signIn.Checkbox_2.animate
		shadowBlur: 5
		shadowSpread: 5
		shadowColor: "rgba(94,168,191,0.5)"
		backgroundColor: "rgba(94,168,191,0.5)"
		options:
			time: 0.5
			curve: Bezier.ease

signIn.Checkbox_2.onMouseOut ->
	signIn.Checkbox_2.animate
		shadowBlur: 0
		shadowSpread: 0




# GO TO HOME
signIn.Log_In.onClick ->
	loginStaffIDInput.disable()
	loginStaffIDInput.visible = false
	loginPasswordInput.disable()
	loginPasswordInput.visible = false
	workEmailInput.disable()
	workEmailInput.visible = false
	newStaffIDInput.disable()
	newStaffIDInput.visible = false
	newPasswordInput.disable()
	newPasswordInput.visible = false
	confirmNewStaffIDInput.disable()
	confirmNewStaffIDInput.visible = false
	confirmNewPasswordInput.disable()
	confirmNewPasswordInput.visible = false
	searchBox.disable()
	searchBox.visible = false
	serviceTimeInput.disable()
	serviceTimeInput.visibe = false
	FlowComp.showNext(homePage.Home_3)
	 
signIn.Log_In.onMouseOver ->
	signIn.Log_In.style.cursor = "pointer"

# TODO: CHANGE THIS TO AN EYE ICON NEXT TO THE PASSWORD TEXT INPUT BOX.
#signIn.Log_In.onLongPressStart (event, layer) -> loginPasswordInput.changeTypeInput("text")

#signIn.Log_In.onLongPressEnd (event, layer) -> loginPasswordInput.changeTypeInput("password")

# LINK INT.: To Forgot Staff ID.
signIn.Forgot_Staff_ID.onMouseOver (event, layer) -> signIn.Forgot_Staff_ID.style.cursor = "pointer"

signIn.Forgot_Staff_ID.onClick (event, layer) ->
	loginStaffIDInput.disable()
	loginPasswordInput.disable()
	
	workEmailInput.enable()
	newStaffIDInput.enable()
	confirmNewStaffIDInput.enable()
	
	FlowComp.showNext(forgotStaffID.Forgot_Staff_ID)
	 
	loginStaffIDInput.visible = false
	loginPasswordInput.visible = false
	
# LINK INT.: To Forgot Password.
signIn.Forgot_Password.onMouseOver (event, layer) -> signIn.Forgot_Password.style.cursor = "pointer"

signIn.Forgot_Password.onClick (event, layer) ->
	loginStaffIDInput.disable()
	loginPasswordInput.disable()
	
	workEmailInput.enable()
	newPasswordInput.enable()
	confirmNewPasswordInput.enable()
	
	FlowComp.showNext(forgotPassword.Forgot_Password)
	 
	loginStaffIDInput.visible = false
	loginPasswordInput.visible = false
#############################################################################
# LINK INT.: BACK TO LOGIN.
forgotStaffID.Back.onMouseOver (event, layer) -> forgotStaffID.Back.style.cursor = "pointer"

forgotStaffID.Back.onClick (event, layer) ->
	loginStaffIDInput.enable()
	loginStaffIDInput.visible = true
	loginPasswordInput.enable()
	loginPasswordInput.visible = true
	workEmailInput.disable()
	workEmailInput.visible = false
	newStaffIDInput.disable()
	newStaffIDInput.visible = false
	confirmNewStaffIDInput.disable()
	confirmNewStaffIDInput.visible = false
	FlowComp.showPrevious()


forgotStaffID.Reset.onMouseOver (event, layer) -> forgotStaffID.Reset.style.cursor = "pointer"

forgotStaffID.Reset.onClick (event, layer) ->
	loginStaffIDInput.enable()
	loginStaffIDInput.visible = true
	loginPasswordInput.enable()
	loginPasswordInput.visible = true
	FlowComp.showPrevious()
	workEmailInput.disable()
	workEmailInput.visible = false
	newStaffIDInput.disable()
	newStaffIDInput.visible = false
	confirmNewStaffIDInput.disable()
	confirmNewStaffIDInput.visible = false

forgotPassword.Back.onMouseOver (event, layer) -> forgotPassword.Back.style.cursor = "pointer"

forgotPassword.Back.onClick (event, layer) ->
	loginStaffIDInput.enable()
	loginStaffIDInput.visible = true
	loginPasswordInput.enable()
	loginPasswordInput.visible = true
	workEmailInput.disable()
	workEmailInput.visible = false
	newPasswordInput.disable()
	newPasswordInput.visible = false
	confirmNewPasswordInput.disable()
	confirmNewPasswordInput.visible = false
	FlowComp.showPrevious()

forgotPassword.Reset.onMouseOver (event, layer) -> forgotPassword.Reset.style.cursor = "pointer"

forgotPassword.Reset.onClick (event, layer) ->
	loginStaffIDInput.enable()
	loginStaffIDInput.visible = true
	loginPasswordInput.enable()
	loginPasswordInput.visible = true
	workEmailInput.disable()
	workEmailInput.visible = false
	newPasswordInput.disable()
	newPasswordInput.visible = false
	confirmNewPasswordInput.disable()
	confirmNewPasswordInput.visible = false
	FlowComp.showPrevious()

	
# HOME PAGE
bookingStatusOverlay.BookingStatusOverlay.borderRadius = 12
robotStatusOverlay.RobotStatusOverlay.borderRadius = 12

mapboxLayer = new Layer
mapboxLayer.ignoreEvents = false
mapboxLayer.parent = homePage.MapPlaceholder 
mapboxLayer.width = homePage.MapPlaceholder.width
mapboxLayer.height = homePage.MapPlaceholder.height
mapboxLayer.html = "<div id='map'></div>"

# Creating a container for HTML element
mapElement = mapboxLayer.querySelector("#map")
mapElement.style.height = homePage.MapPlaceholder.height + 'px'

# Set your Mapbox access token here! 
mapboxgl.accessToken = 'pk.eyJ1Ijoiam9obmExMzgiLCJhIjoiY2pubjB6aGhyMjFvZDNrbXpxcml0N2JnYSJ9.pm99N7M60PV1dlRLcxIRnA'

map = new mapboxgl.Map({
	container: mapElement
	style: 'mapbox://styles/mapbox/streets-v9',
	center: [151.16205773840852, -33.87388007848162],
	zoom: 16.5,
	container: 'map'
})
map.addControl(new mapboxgl.FullscreenControl());
map.addControl(new mapboxgl.NavigationControl())

css = """
.mapboxgl-popup-content {
	color: black;
}
"""



Utils.insertCSS(css)

popup = new mapboxgl.Popup({ offset: 25 })
	.setHTML('<h3>Robot #123456</h3><br><p>Status: Going to booking.</p>')
robotA = new mapboxgl.Marker()
robotA.setLngLat(map.getCenter())
robotA.setPopup(popup)
robotA.addTo(map)



homePage.ViewMore.onMouseOver ->
	homePage.ViewMore.style.cursor = "pointer"
	
homePage.ViewMore_2.onMouseOver ->
	homePage.ViewMore_2.style.cursor = "pointer"
	
homePage.ViewMore.onClick ->
	FlowComp.showOverlayCenter(bookingStatusOverlay.BookingStatusOverlay)

homePage.ViewMore_2.onClick ->
	FlowComp.showOverlayCenter(robotStatusOverlay.RobotStatusOverlay)

bookingStatusOverlay.ViewMore.style.cursor = "pointer"
bookingStatusOverlay.ViewMore.onClick (event, layer) ->
	FlowComp.showPrevious()

robotStatusOverlay.ViewMore.style.cursor = "pointer"
robotStatusOverlay.ViewMore.onClick ->
	FlowComp.showPrevious()

# Tab navigation in tables
contactTechnicians.Right.onClick (event, layer) ->
	contactTechnicians.SelectedBorder.animate
		x: 532
		options:
			time: 0.8
			curve: Bezier.ease

contactTechnicians.Left.onClick (event, layer) ->
	contactTechnicians.SelectedBorder.animate
		x: 75
		options:
			time: 0.8
			curve: Bezier.ease
			
infringementsLanding.Right.onClick (event, layer) ->
	infringementsLanding.SelectedTab.animate
		x: 532
		options:
			time: 0.8
			curve: Bezier.ease

infringementsLanding.Left.onClick (event, layer) ->
	infringementsLanding.SelectedTab.animate
		x: 75
		options:
			time: 0.8
			curve: Bezier.ease
			
serviceRobotsLanding.Left.onClick (event, layer) ->
	serviceRobotsLanding.SelectedTab.animate
		x: 75
		options:
			time: 0.8
			curve: Bezier.ease

serviceRobotsLanding.Right.onClick (event, layer) ->
	serviceRobotsLanding.SelectedTab.animate
		x: 532
		options:
			time: 0.8
			curve: Bezier.ease

searchBox.disable()

serviceRobotsLanding.Service_7.onClick ->
	searchBox.disable()
	searchBox.visible = false
	FlowComp.showNext(serviceRobot.ServiceRobot)

contactResidents.Call_3.onClick ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
	
contactResidents.Call_2.onClick ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
	
contactResidents.Call.onClick ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
	
contactResidents.SMS_3.onClick ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
	
contactResidents.SMS_2.onClick ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
	
contactResidents.SMS.onClick ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
	
contactPolice.Call_3.onClick ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
	
contactPolice.Email.onClick ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
	
contactTechnicians.Call_7.onClick (event, layer) ->	
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)

contactTechnicians.Call_6.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
contactTechnicians.Call_5.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
contactTechnicians.Call_4.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
contactTechnicians.Call_3.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
contactTechnicians.Call_2.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
contactTechnicians.Call.onClick (event, layer) ->
	FlowComp.showOverlayCenter(callingOverlay.CallingOverlay)
	
contactTechnicians.SMS_7.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS_6.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS_5.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS_4.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS_3.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS_2.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)
contactTechnicians.SMS.onClick (event, layer) ->
	FlowComp.showOverlayCenter(smsOverlay.CallingOverlay)

contactTechnicians.Call_7.onMouseOver (event, layer) ->
	contactTechnicians.Call_7.style.cursor = "pointer"
contactTechnicians.Call_6.onMouseOver (event, layer) ->
	contactTechnicians.Call_6.style.cursor = "pointer"
contactTechnicians.Call_5.onMouseOver (event, layer) ->
	contactTechnicians.Call_5.style.cursor = "pointer"
contactTechnicians.Call_4.onMouseOver (event, layer) ->
	contactTechnicians.Call_4.style.cursor = "pointer"
contactTechnicians.Call_3.onMouseOver (event, layer) ->
	contactTechnicians.Call_3.style.cursor = "pointer"
contactTechnicians.Call_2.onMouseOver (event, layer) ->
	contactTechnicians.Call_2.style.cursor = "pointer"
contactTechnicians.Call.onMouseOver (event, layer) ->
	contactTechnicians.Call.style.cursor = "pointer"
contactTechnicians.SMS_7.onMouseOver (event, layer) ->
	contactTechnicians.SMS_7.style.cursor = "pointer"
contactTechnicians.SMS_6.onMouseOver (event, layer) ->
	contactTechnicians.SMS_6.style.cursor = "pointer"
contactTechnicians.SMS_5.onMouseOver (event, layer) ->
	contactTechnicians.SMS_5.style.cursor = "pointer"
contactTechnicians.SMS_4.onMouseOver (event, layer) ->
	contactTechnicians.SMS_4.style.cursor = "pointer"
contactTechnicians.SMS_3.onMouseOver (event, layer) ->
	contactTechnicians.SMS_3.style.cursor = "pointer"
contactTechnicians.SMS_2.onMouseOver (event, layer) ->
	contactTechnicians.SMS_2.style.cursor = "pointer"
contactTechnicians.SMS.onMouseOver (event, layer) ->
	contactTechnicians.SMS.style.cursor = "pointer"
 

settings.ConfirmBTN.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_3, animate: false)

settings.UndoBTN.onClick (event, layer) ->
	FlowComp.showNext(settings.User_Account_Settings, animate: false)

adjustBookingsLanding.FilterDrop.animate
	rotation: -90
	options:
		time: 0.1
		curve: Bezier.ease
adjustBookingsLanding.FliterObj_4.visible = false
adjustBookingsLanding.FliterObj_3.visible = false
adjustBookingsLanding.FliterObj_2.visible = false
adjustBookingsLanding.FliterObj.visible = false

adjustBookingsLanding.FilterBG.onClick ->
	adjustBookingsLanding.FilterDrop.animate
		rotation: 0
		options: 
			time: 0.2
			curve: Bezier.ease
	adjustBookingsLanding.FliterObj_4.visible = true
	adjustBookingsLanding.FliterObj_3.visible = true
	adjustBookingsLanding.FliterObj_2.visible = true
	adjustBookingsLanding.FliterObj.visible = true
	
adjustBookingsLanding.Table.onClick ->
	adjustBookingsLanding.FliterObj_4.visible = false
	adjustBookingsLanding.FliterObj_3.visible = false
	adjustBookingsLanding.FliterObj_2.visible = false
	adjustBookingsLanding.FliterObj.visible = false


adjustBooking.DayChange.onClick ->
	FlowComp.showOverlayCenter(calendarOverlay.Calendar)
	
adjustBooking.Back.onClick ->
	FlowComp.showPrevious
	
adjustBooking.ConfirmButton.onClick ->
	FlowComp.showNext(adjustBookingsLanding.Adjust_Bookings_Landing)

adjustBookingsLanding.Backing.animate
	options:
		time: 1
		curve: Bezier.ease

mapbox2Layer = new Layer
mapbox2Layer.ignoreEvents = false
mapbox2Layer.parent = contactResidents.MapContainer 
mapbox2Layer.width = contactResidents.MapContainer.width
mapbox2Layer.height = contactResidents.MapContainer .height
mapbox2Layer.html = "<div id='map2'></div>"

# Creating a container for HTML element
map2Element = mapbox2Layer.querySelector("#map2")
map2Element.style.height = contactResidents.MapContainer.height + 'px'

map2 = new mapboxgl.Map({
	container: map2Element
	style: 'mapbox://styles/mapbox/streets-v9',
	center: [151.16205773840852, -33.87388007848162],
	zoom: 16.5,
	container: 'map2'
})
map2.addControl(new mapboxgl.FullscreenControl());
map2.addControl(new mapboxgl.NavigationControl())

mapbox3Layer = new Layer
mapbox3Layer.ignoreEvents = false
mapbox3Layer.parent = contactPolice.PoliceMapContainer 
mapbox3Layer.width = contactPolice.PoliceMapContainer.width
mapbox3Layer.height = contactPolice.PoliceMapContainer.height
mapbox3Layer.html = "<div id='map3'></div>"

# Creating a container for HTML element
map3Element = mapbox3Layer.querySelector("#map3")
map3Element.style.height = contactPolice.PoliceMapContainer.height + 'px'

map3 = new mapboxgl.Map({
	container: map3Element
	style: 'mapbox://styles/mapbox/streets-v9',
	center: [151.16205773840852, -33.87388007848162],
	zoom: 16.5,
	container: 'map3'
})
map3.addControl(new mapboxgl.FullscreenControl());
map3.addControl(new mapboxgl.NavigationControl())

settings.Confirm.onClick (event, layer) ->
	FlowComp.showNext(homePage.Home_2)
