/****** Object:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[UserInRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  StoredProcedure [dbo].[XoaMotUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XoaMotUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[XoaMotUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  View [dbo].[vMuaBanHang]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vMuaBanHang]'))
DROP VIEW [dbo].[vMuaBanHang]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vBanHang]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vBanHang]'))
DROP VIEW [dbo].[vBanHang]
GO
/****** Object:  StoredProcedure [dbo].[SoLuongMuaTheoNgay]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoLuongMuaTheoNgay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SoLuongMuaTheoNgay]
GO
/****** Object:  View [dbo].[vMuaHang]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vMuaHang]'))
DROP VIEW [dbo].[vMuaHang]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[MonAnTheoNgay]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonAnTheoNgay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MonAnTheoNgay]
GO
/****** Object:  Table [dbo].[PhanCongNhanVien]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanCongNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[PhanCongNhanVien]
GO
/****** Object:  Table [dbo].[PhanLoaiBep]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanLoaiBep]') AND type in (N'U'))
DROP TABLE [dbo].[PhanLoaiBep]
GO
/****** Object:  Table [dbo].[PhieuMuaHang]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuaHang]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuMuaHang]
GO
/****** Object:  Table [dbo].[PhieuMuaHangChiTiet]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuaHangChiTiet]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuMuaHangChiTiet]
GO
/****** Object:  Table [dbo].[PhieuTinhTien]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTinhTien]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuTinhTien]
GO
/****** Object:  Table [dbo].[PhieuTinhTienChiTiet]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTinhTienChiTiet]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuTinhTienChiTiet]
GO
/****** Object:  StoredProcedure [dbo].[SearchAllTables]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAllTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SearchAllTables]
GO
/****** Object:  StoredProcedure [dbo].[SearchAndReplace]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAndReplace]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SearchAndReplace]
GO
/****** Object:  StoredProcedure [dbo].[SearchAndReplaceAll]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAndReplaceAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SearchAndReplaceAll]
GO
/****** Object:  Table [dbo].[Bep]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bep]') AND type in (N'U'))
DROP TABLE [dbo].[Bep]
GO
/****** Object:  Table [dbo].[DMBan]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMBan]') AND type in (N'U'))
DROP TABLE [dbo].[DMBan]
GO
/****** Object:  Table [dbo].[DMBep]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMBep]') AND type in (N'U'))
DROP TABLE [dbo].[DMBep]
GO
/****** Object:  Table [dbo].[DMDV]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMDV]') AND type in (N'U'))
DROP TABLE [dbo].[DMDV]
GO
/****** Object:  Table [dbo].[DMKhachHang]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMKhachHang]') AND type in (N'U'))
DROP TABLE [dbo].[DMKhachHang]
GO
/****** Object:  Table [dbo].[DMKhuVuc]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMKhuVuc]') AND type in (N'U'))
DROP TABLE [dbo].[DMKhuVuc]
GO
/****** Object:  Table [dbo].[DMLoaiHang]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiHang]') AND type in (N'U'))
DROP TABLE [dbo].[DMLoaiHang]
GO
/****** Object:  Table [dbo].[DMLoaiNguyenLieu]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiNguyenLieu]') AND type in (N'U'))
DROP TABLE [dbo].[DMLoaiNguyenLieu]
GO
/****** Object:  Table [dbo].[DMLoaiPhieuChi]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiPhieuChi]') AND type in (N'U'))
DROP TABLE [dbo].[DMLoaiPhieuChi]
GO
/****** Object:  Table [dbo].[DMLoaiPhieuThu]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiPhieuThu]') AND type in (N'U'))
DROP TABLE [dbo].[DMLoaiPhieuThu]
GO
/****** Object:  Table [dbo].[DMMonAn]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMMonAn]') AND type in (N'U'))
DROP TABLE [dbo].[DMMonAn]
GO
/****** Object:  Table [dbo].[DMNhanVien]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[DMNhanVien]
GO
/****** Object:  Table [dbo].[DMSL]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMSL]') AND type in (N'U'))
DROP TABLE [dbo].[DMSL]
GO
/****** Object:  Table [dbo].[DMThemBot]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMThemBot]') AND type in (N'U'))
DROP TABLE [dbo].[DMThemBot]
GO
/****** Object:  Table [dbo].[KhuVucBan]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhuVucBan]') AND type in (N'U'))
DROP TABLE [dbo].[KhuVucBan]
GO
/****** Object:  Table [dbo].[KhuVucUser]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhuVucUser]') AND type in (N'U'))
DROP TABLE [dbo].[KhuVucUser]
GO
/****** Object:  Table [dbo].[ThuChi]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThuChi]') AND type in (N'U'))
DROP TABLE [dbo].[ThuChi]
GO
/****** Object:  Table [dbo].[TienMat]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TienMat]') AND type in (N'U'))
DROP TABLE [dbo].[TienMat]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__014935CB]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__164452B1]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__164452B1]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0519C6AF]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__07020F21]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]
END


End
GO
/****** Object:  Default [DF_DMBan_CoKhach]    Script Date: 05/31/2014 00:57:21 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DMBan_CoKhach]') AND parent_object_id = OBJECT_ID(N'[dbo].[DMBan]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DMBan_CoKhach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DMBan] DROP CONSTRAINT [DF_DMBan_CoKhach]
END


End
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [QuynhLinhDb]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'QuynhLinhDb')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'QuynhLinhDb' AND type = 'R')
CREATE ROLE [QuynhLinhDb]

END
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 05/31/2014 00:57:22 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Applicati__7E6CC920] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__7F60ED59] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', NULL)
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/APPName', N'/appname', N'f68dc281-6ec2-4f32-b119-9bd295c109d0', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_WebEvent___5FB337D6] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__08EA5793] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[TienMat]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TienMat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TienMat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoLuongTien] [int] NOT NULL,
 CONSTRAINT [PK_TienMat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TienMat] ON
INSERT [dbo].[TienMat] ([Id], [SoLuongTien]) VALUES (1, 3659000)
SET IDENTITY_INSERT [dbo].[TienMat] OFF
/****** Object:  Table [dbo].[ThuChi]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThuChi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThuChi](
	[PhieuId] [int] NOT NULL,
	[LoaiPhieu] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ngay] [datetime] NULL,
	[KhachHangId] [int] NULL,
	[SoTien] [int] NULL,
	[GhiChu] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ThuChi] PRIMARY KEY CLUSTERED 
(
	[PhieuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[KhuVucUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhuVucUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KhuVucUser](
	[KhuVucId] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_KhuVucUser] PRIMARY KEY CLUSTERED 
(
	[KhuVucId] ASC,
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[KhuVucUser] ([KhuVucId], [UserName]) VALUES (N'VIP', N'leminh')
INSERT [dbo].[KhuVucUser] ([KhuVucId], [UserName]) VALUES (N'VIP', N'tho')
INSERT [dbo].[KhuVucUser] ([KhuVucId], [UserName]) VALUES (N'VIP', N'tuan')
/****** Object:  Table [dbo].[KhuVucBan]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhuVucBan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KhuVucBan](
	[KhuVucId] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BanId] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_KhuVucBan] PRIMARY KEY CLUSTERED 
(
	[KhuVucId] ASC,
	[BanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'L01', N'B01')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'L01', N'B02')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'L01', N'B03')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'TTR', N'B20')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'TTR', N'B22')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'VIP', N'B04')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'VIP', N'B05')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'VIP', N'b06')
INSERT [dbo].[KhuVucBan] ([KhuVucId], [BanId]) VALUES (N'VIP', N'B07')
/****** Object:  Table [dbo].[DMThemBot]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMThemBot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMThemBot](
	[TenThemBot] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DMThemBot] PRIMARY KEY CLUSTERED 
(
	[TenThemBot] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMThemBot] ([TenThemBot]) VALUES (N'Đường')
INSERT [dbo].[DMThemBot] ([TenThemBot]) VALUES (N'Giá')
INSERT [dbo].[DMThemBot] ([TenThemBot]) VALUES (N'Hành')
INSERT [dbo].[DMThemBot] ([TenThemBot]) VALUES (N'Ớt')
INSERT [dbo].[DMThemBot] ([TenThemBot]) VALUES (N'Sữa')
/****** Object:  Table [dbo].[DMSL]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMSL](
	[SL] [smallint] NOT NULL,
 CONSTRAINT [PK_DMSL] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMSL] ([SL]) VALUES (0)
INSERT [dbo].[DMSL] ([SL]) VALUES (1)
INSERT [dbo].[DMSL] ([SL]) VALUES (2)
INSERT [dbo].[DMSL] ([SL]) VALUES (3)
INSERT [dbo].[DMSL] ([SL]) VALUES (4)
INSERT [dbo].[DMSL] ([SL]) VALUES (5)
INSERT [dbo].[DMSL] ([SL]) VALUES (6)
INSERT [dbo].[DMSL] ([SL]) VALUES (7)
INSERT [dbo].[DMSL] ([SL]) VALUES (8)
INSERT [dbo].[DMSL] ([SL]) VALUES (9)
INSERT [dbo].[DMSL] ([SL]) VALUES (12)
INSERT [dbo].[DMSL] ([SL]) VALUES (24)
INSERT [dbo].[DMSL] ([SL]) VALUES (36)
/****** Object:  Table [dbo].[DMNhanVien]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMNhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMNhanVien](
	[NhanVienId] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DiaChi] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SoDienThoai] [nchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NhiemVu] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GhiChu] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMNhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DMNhanVien] ON
INSERT [dbo].[DMNhanVien] ([NhanVienId], [TenNhanVien], [DiaChi], [SoDienThoai], [NhiemVu], [GhiChu]) VALUES (1, N'Mai', N'Châu Thành', N'0913892781  ', N'rua chen', N'Sinh viên, làm theo ca')
INSERT [dbo].[DMNhanVien] ([NhanVienId], [TenNhanVien], [DiaChi], [SoDienThoai], [NhiemVu], [GhiChu]) VALUES (2, N'Đào', N'Rach Giá', N'0909123451  ', NULL, N'Làm toàn thời gian')
SET IDENTITY_INSERT [dbo].[DMNhanVien] OFF
/****** Object:  Table [dbo].[DMMonAn]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMMonAn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMMonAn](
	[MonAnId] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DonViTinh] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DonGiaBan] [int] NOT NULL,
	[DonGiaMua] [int] NOT NULL,
	[CoHang] [bit] NOT NULL,
	[MuaBan] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMMonAn] PRIMARY KEY CLUSTERED 
(
	[MonAnId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DMMonAn] ON
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (1, N'Siro xí muội', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (2, N'Bánh mì opla', N'Dĩa', 24000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (3, N'Tắc xí muộn', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (4, N'Bánh mì opla xúc xích', N'Dĩa', 30000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (5, N'Tắc xí muội nóng', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (6, N'Bánh mì opla xúi mại', N'Dĩa', 35000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (7, N'Siro dâu', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (8, N'Bánh mì xíu mại', N'Dĩa', 30000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (9, N'Siro bạc hà', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (10, N'Chanh dây không hạt', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (11, N'Chanh dây có hạt', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (12, N'Bánh mì bò kho', N'Dĩa', 38000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (13, N'Bánh tằm xúi mại', N'Dĩa', 32000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (14, N'Yaourt tẩy', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (15, N'Bún cá', N'Tô', 32000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (16, N'Yaourt sữa', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (17, N'Yaourt siro dâu', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (18, N'Hủ tiếu bò kho', N'Tô', 40000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (19, N'Hủ tiếu (mì) xương', N'Tô', 32000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (20, N'Hủ tiếu (mì) hải sản', N'Tô', 38000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (21, N'Cơm tấm Boulevard', N'Dĩa', 32000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (22, N'Cơm tấm sườn bì', N'Dĩa', 32000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (23, N'Yaourt siro bạc hà', N'Ly', 26000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (24, N'Cơm tấm sườn bì cọng', N'Dĩa', 37000, 0, 1, N'BBDT')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (25, N'Yaourt cam', N'Ly', 26000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (26, N'Yaourt chanh dây', N'Ly', 26000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (27, N'Cà phê nóng số 1', N'Ly', 17000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (28, N'Yaourt dâu tươi', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (29, N'Cà phê đá số 1', N'Ly', 17000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (30, N'Yaourt trái cây', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (31, N'Yaourt nha đam', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (32, N'Trái cây siro dâu', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (33, N'Sting đá', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (34, N'Sting sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (35, N'Seven Up đá', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (36, N'Seven Up sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (37, N'Seven Up chanh đường', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (38, N'Mountain Dew đá', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (39, N'Cà phê nóng số 2', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (40, N'Cà phê đá số 2', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (41, N'Cà phê nóng số 3', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (42, N'Cà phê đá số 3', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (43, N'Cà phê nóng số 4', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (44, N'Cà phê đá số 4', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (45, N'Cà phê sữa nóng số 1', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (46, N'Cà phê sữa đá số 1', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (47, N'Cà phê sữa nóng số 2', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (48, N'Cà phê sữa đá số 2', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (49, N'Cà phê sữa nóng số 3', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (50, N'Cà phê sữa đá số 3', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (51, N'Cà phê sữa nóng số 4', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (52, N'Cà phê sữa đá số 4', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (53, N'Mountain Dew sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (54, N'Cà phê sữa ba tầng', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (55, N'Cà phê Bailey''s', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (56, N'Pepsi đá', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (57, N'Pepsi sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (58, N'Cacao nóng', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (59, N'Coca-Cola', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (60, N'Cacao đá', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (61, N'Coca-Cola sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (62, N'Cacao sữa nóng', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (63, N'Soda sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (64, N'Cacao sữa đá', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (65, N'Soda chanh đường', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (66, N'Twister', N'Chai', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (67, N'Café kem', N'Ly', 37000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (68, N'Red - Bulls', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (69, N'Red - Bull sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (70, N'Trà lài (ấm nhỏ)', N'Bình', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (71, N'Xá xị', N'Lon', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (72, N'Xá xị sữa', N'Ly', 23000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (73, N'Trà lài (ấm lớn)', N'Bình', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (74, N'Trà xanh không độ', N'Chai', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (75, N'Trà sen (ấm nhỏ)', N'Bình', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (76, N'Trà xanh C2', N'Chai', 18000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (77, N'Nước suối', N'Chai', 13000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (78, N'Trà sen (ấm lớn)', N'Bình', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (79, N'Dừa trái', N'Trái', 20000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (80, N'Trà hoa cúc (ấm nhỏ)', N'Bình', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (81, N'trà hoa cúc (ấm lớn)', N'Bình', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (82, N'Trà móc câu (ấm nhỏ)', N'Bình', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (83, N'Trà móc câu (ấm lớn)', N'Bình', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (84, N'Kem dâu nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (85, N'Kem dâu lơn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (86, N'Kem dừa nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (87, N'Trà Oolong (ấm nhỏ)', N'Bình', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (88, N'Kem dừa lơn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (89, N'Trà Oolong (ấm lớn)', N'Bình', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (90, N'Kem bạc hà nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (91, N'Trà đường nóng', N'Ly', 16000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (92, N'Kem bạc hà lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (93, N'Kem vani nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (94, N'Trà đường đá', N'Ly', 16000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (95, N'Kem vani lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (96, N'Kem khoai môn nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (97, N'Trà gừng', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (98, N'Kem khoai môn lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (99, N'Trà gừng nóng', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (100, N'Kem cafe nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
GO
print 'Processed 100 total records'
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (101, N'Kem cafe lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (102, N'Kem sôcôla nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (103, N'Trà Atiso nóng', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (104, N'Trà Atiso đá', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (105, N'Kem sôcôla lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (106, N'Trà sữa nóng', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (107, N'Trà sữa đá', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (108, N'Trà Lipton', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (109, N'Kem sầu riêng nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (110, N'Trà Lipton sữa', N'Ly', 24000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (111, N'Kem sầu riêng lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (112, N'Trà Lipton sữa nóng', N'Ly', 24000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (113, N'Trà Lipton xí muội đá', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (114, N'Trà Lipton xí muội nóng', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (115, N'Sinh tố dâu', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (116, N'Sinh tố bơ', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (117, N'Sinh tố sầu riêng', N'Ly', 38000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (118, N'Sinh tố mãng cầu', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (119, N'Sinh tố saboche', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (120, N'Sinh tố mít', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (121, N'Sinh tố xoài', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (122, N'Sinh tố Yaourt', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (123, N'Sinh tố Yaourt xoài', N'Ly', 32000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (124, N'Sinh tố đu đủ', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (125, N'Sinh tố chanh tắc', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (126, N'Sinh tố cam', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (127, N'Sinh tố Carotte', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (128, N'Kem straccitella nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (129, N'Sinh tố cà chua', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (130, N'Sinh tố thập cẩm', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (131, N'Kem straccitella lơn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (132, N'Sinh tố Boulevard', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (133, N'Dâu dầm', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (134, N'Kem chanh dây nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (135, N'Bơ dầm', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (136, N'Sapoche dầm', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (137, N'Mãng cầu dầm', N'Ly', 38000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (138, N'Kem cam nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (139, N'Sầu riêng dầm', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (140, N'Cà chua dầm', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (141, N'Kem chanh dây lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (142, N'Sinh tố café', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (143, N'Sinh tố ca cao', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (144, N'Chanh muối nóng', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (145, N'Kem cam lơn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (146, N'Chanh muối đá', N'Ly', 18000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (147, N'Kem lá dứa nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (148, N'Đá me', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (149, N'Đá me sữa', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (150, N'Kem lá dứa lớn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (151, N'Rau má', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (152, N'Kem rum nhỏ', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (153, N'Rau má set', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (154, N'Kem rum lơn', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (155, N'Kem 2 mùi', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (156, N'Rau má sữa', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (157, N'Kem 3 mùi', N'Ly', 60000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (158, N'Rau má dừa', N'Ly', 27000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (159, N'Cocktail majito', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (160, N'Sữa tươi', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (161, N'Sữa tươi set', N'Ly', 26000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (162, N'Bạc hà sữa', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (163, N'Cocktail passion mojito', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (164, N'Sữa dâu', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (165, N'Cam vắt đá', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (166, N'Cocktail cuba libke', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (167, N'Cam vắt set', N'Ly', 32000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (168, N'Cam vắt sữa', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (169, N'Sữa chanh tắc', N'Ly', 25000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (170, N'Xí muội nóng', N'Ly', 20000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (171, N'Cocktail tequila sunrise', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (172, N'Bạc xỉu nóng', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (173, N'Bạc xỉu đá', N'Ly', 22000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (174, N'Cocktail black russian', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (175, N'Cocktail margarita', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (176, N'Cocktail blue margarita', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (177, N'Cocktail blue hawaiian', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (178, N'Cocktail boulevard', N'Ly', 45000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (179, N'Ép dâu', N'Ly', 38000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (180, N'Ép dâu set', N'Ly', 43000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (181, N'Ép nho', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (182, N'Ép nho set', N'Ly', 40000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (183, N'Ép thập cẩm', N'Ly', 38000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (184, N'Ép thập cẩm set', N'Ly', 43000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (185, N'Ép dưa hấu', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (186, N'Ép dưa hấu set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (187, N'Ép cà chua', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (188, N'Ép cà chua set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (189, N'Ép ổi', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (190, N'Ép ổi set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (191, N'Ép táo', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (192, N'Ép táo set', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (193, N'Éplê ', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (194, N'Ép lê set', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (195, N'Ép carotte', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (196, N'Ép carotte set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (197, N'Ép cam carotte', N'Ly', 30000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (198, N'Ép cam carotte set', N'Ly', 35000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (199, N'Ép thơm', N'Ly', 28000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (200, N'Ép thơm set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (201, N'Ép bưởi', N'Ly', 30000, 0, 1, N'BBGK')
GO
print 'Processed 200 total records'
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (202, N'Ép bưởi set', N'Ly', 33000, 0, 1, N'BBGK')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (203, N'Beer heineken Pháp', N'Chai', 38000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (204, N'Thuốc caraven A (Mèo lớn)', N'Gói', 28000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (205, N'Thuốc craven a (mèo nhỏ, 12 điếu)', N'Gói', 20000, 0, 1, N'MBHH')
INSERT [dbo].[DMMonAn] ([MonAnId], [TenMonAn], [DonViTinh], [DonGiaBan], [DonGiaMua], [CoHang], [MuaBan]) VALUES (206, N'Thuốc 555 VN (Ba số Việt Nam)', N'Gói', 32000, 0, 1, N'MBHH')
SET IDENTITY_INSERT [dbo].[DMMonAn] OFF
/****** Object:  Table [dbo].[DMLoaiPhieuThu]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiPhieuThu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMLoaiPhieuThu](
	[LoaiPhieuThuId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenPhieuThu] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMLoaiPhieuThu] PRIMARY KEY CLUSTERED 
(
	[LoaiPhieuThuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMLoaiPhieuThu] ([LoaiPhieuThuId], [TenPhieuThu]) VALUES (N'NPTHU', N'Nợ phải thu')
/****** Object:  Table [dbo].[DMLoaiPhieuChi]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiPhieuChi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMLoaiPhieuChi](
	[LoaiPhieuChiId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenPhieuChi] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMLoaiPhieuChi] PRIMARY KEY CLUSTERED 
(
	[LoaiPhieuChiId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'A', N'Ăn hàng ngày')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'C', N'Cúng Ông Tài')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'K', N'Khác')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'L', N'Lương')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'NPTRA', N'Nợ phải trả')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'T', N'Thưởng')
INSERT [dbo].[DMLoaiPhieuChi] ([LoaiPhieuChiId], [TenPhieuChi]) VALUES (N'TU', N'Tạm ứng')
/****** Object:  Table [dbo].[DMLoaiNguyenLieu]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiNguyenLieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMLoaiNguyenLieu](
	[TenLoaiNguyenLieu] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DMLoaiNguyenLieu_1] PRIMARY KEY CLUSTERED 
(
	[TenLoaiNguyenLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Cà Phê')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Chanh tươi')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Gia vị')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Heo')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Khác')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Mực')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Nai')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Nchấm')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Nước ngọt')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Ốc')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Rau')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Sò')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Tôm')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Trái cây')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Trâu')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Trứng')
INSERT [dbo].[DMLoaiNguyenLieu] ([TenLoaiNguyenLieu]) VALUES (N'Vịt')
/****** Object:  Table [dbo].[DMLoaiHang]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMLoaiHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMLoaiHang](
	[LoaiHangId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenLoaiHang] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMLoaiHang] PRIMARY KEY CLUSTERED 
(
	[LoaiHangId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMLoaiHang] ([LoaiHangId], [TenLoaiHang]) VALUES (N'BBDT', N'Điểm tâm (Hàng chế biến)')
INSERT [dbo].[DMLoaiHang] ([LoaiHangId], [TenLoaiHang]) VALUES (N'BBGK', N'Giải khát (Hàng chế biến)')
INSERT [dbo].[DMLoaiHang] ([LoaiHangId], [TenLoaiHang]) VALUES (N'MBHH', N'Hàng hóa (Hàng mua vào, bán ra)')
INSERT [dbo].[DMLoaiHang] ([LoaiHangId], [TenLoaiHang]) VALUES (N'MM', N'Mua vào (Hàng chỉ mua, không bán)')
/****** Object:  Table [dbo].[DMKhuVuc]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMKhuVuc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMKhuVuc](
	[KhuVucId] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenKhuVuc] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMKhuVuc] PRIMARY KEY CLUSTERED 
(
	[KhuVucId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMKhuVuc] ([KhuVucId], [TenKhuVuc]) VALUES (N'L01', N'Lầu 01')
INSERT [dbo].[DMKhuVuc] ([KhuVucId], [TenKhuVuc]) VALUES (N'TTR', N'Tầng trệt')
INSERT [dbo].[DMKhuVuc] ([KhuVucId], [TenKhuVuc]) VALUES (N'VIP', N'Phòng Máy lạnh')
/****** Object:  Table [dbo].[DMKhachHang]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMKhachHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMKhachHang](
	[KhachHangId] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DienThoai] [nchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DiaChi] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GhiChu] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DMKhachHang] PRIMARY KEY CLUSTERED 
(
	[KhachHangId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DMKhachHang] ON
INSERT [dbo].[DMKhachHang] ([KhachHangId], [TenKhachHang], [DienThoai], [DiaChi], [GhiChu]) VALUES (3, N'Khách vãng lai', NULL, NULL, NULL)
INSERT [dbo].[DMKhachHang] ([KhachHangId], [TenKhachHang], [DienThoai], [DiaChi], [GhiChu]) VALUES (5, N'Anh Nuoi', N'0919099099  ', N'RG', N'Nguoi nha')
INSERT [dbo].[DMKhachHang] ([KhachHangId], [TenKhachHang], [DienThoai], [DiaChi], [GhiChu]) VALUES (6, N'Rau Tắc Rán', N'12345       ', N'Tac ran', NULL)
INSERT [dbo].[DMKhachHang] ([KhachHangId], [TenKhachHang], [DienThoai], [DiaChi], [GhiChu]) VALUES (7, N'Rau Bắc Sơn', N'7545334     ', N'Chợ Bắc Sơn', N'Giá lẻ')
SET IDENTITY_INSERT [dbo].[DMKhachHang] OFF
/****** Object:  Table [dbo].[DMDV]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMDV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMDV](
	[DONVI] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DMDV] PRIMARY KEY CLUSTERED 
(
	[DONVI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Bao')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Bịch')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Bình')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Bộ')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Bọc')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Ca')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Cái')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Cây')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Chai')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Chén')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Con')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Dĩa')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Gói')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Hũ')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Keo')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Kết')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Kg')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Khác')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Lẫu')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Lít')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Lốc')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Lon')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Ly')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Thố')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Thùng')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Tô')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Trái')
INSERT [dbo].[DMDV] ([DONVI]) VALUES (N'Trứng')
/****** Object:  Table [dbo].[DMBep]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMBep]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMBep](
	[TenBep] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GhiChu] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AmBao] [bit] NULL,
 CONSTRAINT [PK_DMBep] PRIMARY KEY CLUSTERED 
(
	[TenBep] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMBep] ([TenBep], [GhiChu], [AmBao]) VALUES (N'BEP01', NULL, 0)
INSERT [dbo].[DMBep] ([TenBep], [GhiChu], [AmBao]) VALUES (N'BEP02', NULL, 0)
INSERT [dbo].[DMBep] ([TenBep], [GhiChu], [AmBao]) VALUES (N'BEP03', NULL, 1)
INSERT [dbo].[DMBep] ([TenBep], [GhiChu], [AmBao]) VALUES (N'BEP04', NULL, 1)
/****** Object:  Table [dbo].[DMBan]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DMBan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DMBan](
	[BanId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenBan] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoKhach] [bit] NOT NULL,
	[GoiTinhTien] [bit] NULL,
 CONSTRAINT [PK_DMBan] PRIMARY KEY CLUSTERED 
(
	[BanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B01', N'Bàn 01', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B02', N'Bàn 02', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B03', N'Bàn 03', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B04', N'Bàn 04', 1, 1)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B05', N'Bàn 05', 1, 1)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'b06', N'Bàn 06', 1, 1)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B07', N'Bàn 07', 1, 1)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B08', N'Bàn 08', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B09', N'Bàn 09', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B10', N'Bàn 10', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B100', N'Bàn 100', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B101', N'Bàn 101', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B102', N'Bàn 102', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B103', N'Bàn 103', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B104', N'Bàn 104', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B105', N'Bàn 105', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B106', N'Bàn 106', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B107', N'Bàn 107', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B108', N'Bàn 108', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B109', N'Bàn 109', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B11', N'Bàn 11', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B110', N'Bàn 110', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B111', N'Bàn 111', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B112', N'Bàn 112', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B113', N'Bàn 113', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B114', N'Bàn 114', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B115', N'Bàn 115', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B116', N'Bàn 116', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B117', N'Bàn 117', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B118', N'Bàn 118', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B119', N'Bàn 119', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B12', N'Bàn 12', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B120', N'Bàn 120', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B121', N'Bàn 121', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B122', N'Bàn 122', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B123', N'Bàn 123', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B124', N'Bàn 124', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B125', N'Bàn 125', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B126', N'Bàn 126', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B127', N'Bàn 127', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B128', N'Bàn 128', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B129', N'Bàn 129', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B13', N'Bàn 13', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B130', N'Bàn 130', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B131', N'Bàn 131', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B132', N'Bàn 132', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B133', N'Bàn 133', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B134', N'Bàn 134', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B135', N'Bàn 135', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B136', N'Bàn 136', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B137', N'Bàn 137', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B138', N'Bàn 138', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B139', N'Bàn 139', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B14', N'Bàn 14', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B140', N'Bàn 140', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B141', N'Bàn 141', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B142', N'Bàn 142', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B143', N'Bàn 143', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B144', N'Bàn 144', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B145', N'Bàn 145', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B146', N'Bàn 146', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B147', N'Bàn 147', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B148', N'Bàn 148', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B149', N'Bàn 149', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B15', N'Bàn 15', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B150', N'Bàn 150', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B151', N'Bàn 151', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B152', N'Bàn 152', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B153', N'Bàn 153', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B154', N'Bàn 154', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B155', N'Bàn 155', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B156', N'Bàn 156', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B157', N'Bàn 157', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B158', N'Bàn 158', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B159', N'Bàn 159', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B16', N'Bàn 16', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B160', N'Bàn 160', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B161', N'Bàn 161', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B162', N'Bàn 162', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B163', N'Bàn 163', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B164', N'Bàn 164', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B165', N'Bàn 165', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B166', N'Bàn 166', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B167', N'Bàn 167', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B168', N'Bàn 168', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B169', N'Bàn 169', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B17', N'Bàn 17', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B170', N'Bàn 170', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B171', N'Bàn 171', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B172', N'Bàn 172', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B173', N'Bàn 173', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B174', N'Bàn 174', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B175', N'Bàn 175', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B176', N'Bàn 176', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B177', N'Bàn 177', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B178', N'Bàn 178', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B179', N'Bàn 179', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B18', N'Bàn 18', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B180', N'Bàn 180', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B181', N'Bàn 181', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B182', N'Bàn 182', 0, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B183', N'Bàn 183', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B184', N'Bàn 184', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B185', N'Bàn 185', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B186', N'Bàn 186', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B187', N'Bàn 187', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B188', N'Bàn 188', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B189', N'Bàn 189', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B19', N'Bàn 19', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B190', N'Bàn 190', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B191', N'Bàn 191', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B192', N'Bàn 192', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B193', N'Bàn 193', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B194', N'Bàn 194', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B195', N'Bàn 195', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B196', N'Bàn 196', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B197', N'Bàn 197', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B198', N'Bàn 198', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B199', N'Bàn 199', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B20', N'Bàn 20', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B200', N'Bàn 200', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B201', N'Bàn 201', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B202', N'Bàn 202', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B203', N'Bàn 203', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B204', N'Bàn 204', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B205', N'Bàn 205', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B206', N'Bàn 206', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B207', N'Bàn 207', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B208', N'Bàn 208', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B209', N'Bàn 209', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B210', N'Bàn 210', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B211', N'Bàn 211', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B212', N'Bàn 212', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B213', N'Bàn 213', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B214', N'Bàn 214', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B215', N'Bàn 215', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B216', N'Bàn 216', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B217', N'Bàn 217', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B218', N'Bàn 218', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B219', N'Bàn 219', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B22', N'Bàn 22', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B220', N'Bàn 220', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B221', N'Bàn 221', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B222', N'Bàn 222', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B223', N'Bàn 223', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B224', N'Bàn 224', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B225', N'Bàn 225', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B23', N'Bàn 23', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B24', N'Bàn 24', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B25', N'Bàn 25', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B26', N'Bàn 26', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B27', N'Bàn 27', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B28', N'Bàn 28', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B29', N'Bàn 29', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B30', N'Bàn 30', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B31', N'Bàn 31', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B32', N'Bàn 32', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B33', N'Bàn 33', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B34', N'Bàn 34', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B35', N'Bàn 35', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B36', N'Bàn 36', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B37', N'Bàn 37', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B38', N'Bàn 38', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B39', N'Bàn 39', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B40', N'Bàn 40', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B41', N'Bàn 41', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B42', N'Bàn 42', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B43', N'Bàn 43', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B44', N'Bàn 44', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B45', N'Bàn 45', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B46', N'Bàn 46', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B47', N'Bàn 47', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B48', N'Bàn 48', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B49', N'Bàn 49', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B50', N'Bàn 50', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B51', N'Bàn 51', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B52', N'Bàn 52', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B53', N'Bàn 53', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B54', N'Bàn 54', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B55', N'Bàn 55', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B56', N'Bàn 56', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B57', N'Bàn 57', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B58', N'Bàn 58', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B59', N'Bàn 59', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B60', N'Bàn 60', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B61', N'Bàn 61', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B62', N'Bàn 62', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B63', N'Bàn 63', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B64', N'Bàn 64', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B65', N'Bàn 65', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B66', N'Bàn 66', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B67', N'Bàn 67', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B68', N'Bàn 68', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B69', N'Bàn 69', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B70', N'Bàn 70', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B71', N'Bàn 71', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B72', N'Bàn 72', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B73', N'Bàn 73', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B74', N'Bàn 74', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B75', N'Bàn 75', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B76', N'Bàn 76', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B77', N'Bàn 77', 0, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B78', N'Bàn 78', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B79', N'Bàn 79', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B80', N'Bàn 80', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B81', N'Bàn 81', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B82', N'Bàn 82', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B83', N'Bàn 83', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B84', N'Bàn 84', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B85', N'Bàn 85', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B86', N'Bàn 86', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B87', N'Bàn 87', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B88', N'Bàn 88', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B89', N'Bàn 89', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B90', N'Bàn 90', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B91', N'Bàn 91', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B92', N'Bàn 92', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B93', N'Bàn 93', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B94', N'Bàn 94', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B95', N'Bàn 95', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B96', N'Bàn 96', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B97', N'Bàn 97', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B98', N'Bàn 98', 0, 0)
INSERT [dbo].[DMBan] ([BanId], [TenBan], [CoKhach], [GoiTinhTien]) VALUES (N'B99', N'Bàn 99', 0, 0)
/****** Object:  Table [dbo].[Bep]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bep]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhieuId] [int] NULL,
	[BanId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SoOrder] [int] NULL,
	[MonAnId] [int] NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TenBep] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Bep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Bep] ON
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (393, 1, N'B04', 1, 4, 2, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (394, 2, N'B05', 1, 162, 5, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (395, 3, N'b06', 1, 173, 2, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (396, 3, N'b06', 1, 12, 3, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (397, 3, N'b06', 1, 4, 12, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (398, 3, N'b06', 1, 94, 3, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (399, 3, N'b06', 2, 26, 2, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (400, 3, N'b06', 2, 28, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (401, 3, N'b06', 2, 23, 3, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (402, 3, N'b06', 2, 16, 2, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (403, 1, N'B04', 4, 2, 4, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (404, 1, N'B04', 4, 3, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (405, 1, N'B04', 4, 103, 11, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (406, 1, N'B04', 5, 162, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (407, 1, N'B04', 5, 173, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (408, 3, N'b06', 3, 172, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (409, 3, N'b06', 3, 12, 2, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (410, 3, N'b06', 3, 2, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (411, 3, N'b06', 3, 6, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (412, 2, N'B05', 2, 172, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (413, 2, N'B05', 2, 12, 3, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (414, 2, N'B05', 2, 4, 4, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (415, 2, N'B05', 3, 172, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (416, 2, N'B05', 3, 2, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (417, 1, N'B04', 6, 12, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (418, 1, N'B04', 6, 4, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (419, 1, N'B04', 7, 12, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (420, 1, N'B04', 7, 2, 2, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (421, 1, N'B04', 8, 172, 1, NULL, N'BEP04')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (422, 1, N'B04', 8, 2, 2, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (423, 4, N'B07', 1, 12, 2, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (424, 4, N'B07', 1, 4, 1, NULL, N'BEP03')
INSERT [dbo].[Bep] ([ID], [PhieuId], [BanId], [SoOrder], [MonAnId], [SoLuong], [GhiChu], [TenBep]) VALUES (425, 4, N'B07', 1, 6, 2, NULL, N'BEP03')
SET IDENTITY_INSERT [dbo].[Bep] OFF
/****** Object:  StoredProcedure [dbo].[SearchAndReplaceAll]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAndReplaceAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[SearchAndReplaceAll]
(
	@SearchStr nvarchar(100),
	@ReplaceStr nvarchar(100)
)
AS
BEGIN

	-- Copyright © 2002 Narayana Vyas Kondreddi. All rights reserved.
	-- Purpose: To search all columns of all tables for a given search string and replace it with another string
	-- Written by: Narayana Vyas Kondreddi
	-- Site: http://vyaskn.tripod.com
	-- Tested on: SQL Server 7.0 and SQL Server 2000
	-- Date modified: 2nd November 2002 13:50 GMT

	SET NOCOUNT ON

	DECLARE @TableName nvarchar(256), @ColumnName nvarchar(128), @SearchStr2 nvarchar(110), @SQL nvarchar(4000), @RCTR int
	SET  @TableName = ''''
	SET @SearchStr2 = QUOTENAME(''%'' + @SearchStr + ''%'','''''''')
	SET @RCTR = 0

	WHILE @TableName IS NOT NULL
	BEGIN
		SET @ColumnName = ''''
		SET @TableName = 
		(
			SELECT MIN(QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME))
			FROM 	INFORMATION_SCHEMA.TABLES
			WHERE 		TABLE_TYPE = ''BASE TABLE''
				AND	QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME) > @TableName
				AND	OBJECTPROPERTY(
						OBJECT_ID(
							QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME)
							 ), ''IsMSShipped''
						       ) = 0
		)

		WHILE (@TableName IS NOT NULL) AND (@ColumnName IS NOT NULL)
		BEGIN
			SET @ColumnName =
			(
				SELECT MIN(QUOTENAME(COLUMN_NAME))
				FROM 	INFORMATION_SCHEMA.COLUMNS
				WHERE 		TABLE_SCHEMA	= PARSENAME(@TableName, 2)
					AND	TABLE_NAME	= PARSENAME(@TableName, 1)
					AND	DATA_TYPE IN (''char'', ''varchar'', ''nchar'', ''nvarchar'')
					AND	QUOTENAME(COLUMN_NAME) > @ColumnName
			)
	
			IF @ColumnName IS NOT NULL
			BEGIN
				SET @SQL=	''UPDATE '' + @TableName + 
						'' SET '' + @ColumnName 
						+ '' =  REPLACE('' + @ColumnName + '', '' 
						+ QUOTENAME(@SearchStr, '''''''') + '', '' + QUOTENAME(@ReplaceStr, '''''''') + 
						'') WHERE '' + @ColumnName + '' LIKE '' + @SearchStr2
				EXEC (@SQL)
				SET @RCTR = @RCTR + @@ROWCOUNT
			END
		END	
	END

	SELECT ''Replaced '' + CAST(@RCTR AS varchar) + '' occurence(s)'' AS ''Outcome''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SearchAndReplace]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAndReplace]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[SearchAndReplace]
(
	@SearchStr nvarchar(100),
	@ReplaceStr nvarchar(100)
)
AS
BEGIN

	-- Copyright © 2002 Narayana Vyas Kondreddi. All rights reserved.
	-- Purpose: To search all columns of all tables for a given search string and replace it with another string
	-- Written by: Narayana Vyas Kondreddi
	-- Site: http://vyaskn.tripod.com
	-- Tested on: SQL Server 7.0 and SQL Server 2000
	-- Date modified: 2nd November 2002 13:50 GMT

	SET NOCOUNT ON

	DECLARE @TableName nvarchar(256), @ColumnName nvarchar(128), @SearchStr2 nvarchar(110), @SQL nvarchar(4000), @RCTR int
	SET  @TableName = ''''
	SET @SearchStr2 = QUOTENAME(''%'' + @SearchStr + ''%'','''''''')
	SET @RCTR = 0

	WHILE @TableName IS NOT NULL
	BEGIN
		SET @ColumnName = ''''
		SET @TableName = 
		(
			SELECT MIN(QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME))
			FROM 	INFORMATION_SCHEMA.TABLES
			WHERE 		TABLE_TYPE = ''BASE TABLE''
				AND	QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME) > @TableName
				AND	OBJECTPROPERTY(
						OBJECT_ID(
							QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME)
							 ), ''IsMSShipped''
						       ) = 0
		)

		WHILE (@TableName IS NOT NULL) AND (@ColumnName IS NOT NULL)
		BEGIN
			SET @ColumnName =
			(
				SELECT MIN(QUOTENAME(COLUMN_NAME))
				FROM 	INFORMATION_SCHEMA.COLUMNS
				WHERE 		TABLE_SCHEMA	= PARSENAME(@TableName, 2)
					AND	TABLE_NAME	= PARSENAME(@TableName, 1)
					AND	DATA_TYPE IN (''char'', ''varchar'', ''nchar'', ''nvarchar'')
					AND	QUOTENAME(COLUMN_NAME) > @ColumnName
			)
	
			IF @ColumnName IS NOT NULL
			BEGIN
				SET @SQL=	''UPDATE '' + @TableName + 
						'' SET '' + @ColumnName 
						+ '' =  REPLACE('' + @ColumnName + '', '' 
						+ QUOTENAME(@SearchStr, '''''''') + '', '' + QUOTENAME(@ReplaceStr, '''''''') + 
						'') WHERE '' + @ColumnName + '' LIKE '' + @SearchStr2
				EXEC (@SQL)
				SET @RCTR = @RCTR + @@ROWCOUNT
			END
		END	
	END

	SELECT ''Replaced '' + CAST(@RCTR AS varchar) + '' occurence(s)'' AS ''Outcome''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SearchAllTables]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAllTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchAllTables]
(
	@SearchStr nvarchar(100)
)
AS
BEGIN

	-- Copyright © 2002 Narayana Vyas Kondreddi. All rights reserved.
	-- Purpose: To search all columns of all tables for a given search string
	-- Written by: Narayana Vyas Kondreddi
	-- Site: http://vyaskn.tripod.com
	-- Tested on: SQL Server 7.0 and SQL Server 2000
	-- Date modified: 28th July 2002 22:50 GMT


	CREATE TABLE #Results (ColumnName nvarchar(370), ColumnValue nvarchar(3630))

	SET NOCOUNT ON

	DECLARE @TableName nvarchar(256), @ColumnName nvarchar(128), @SearchStr2 nvarchar(110)
	SET  @TableName = ''''
	SET @SearchStr2 = QUOTENAME(''%'' + @SearchStr + ''%'','''''''')

	WHILE @TableName IS NOT NULL
	BEGIN
		SET @ColumnName = ''''
		SET @TableName = 
		(
			SELECT MIN(QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME))
			FROM 	INFORMATION_SCHEMA.TABLES
			WHERE 		TABLE_TYPE = ''BASE TABLE''
				AND	QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME) > @TableName
				AND	OBJECTPROPERTY(
						OBJECT_ID(
							QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME)
							 ), ''IsMSShipped''
						       ) = 0
		)

		WHILE (@TableName IS NOT NULL) AND (@ColumnName IS NOT NULL)
		BEGIN
			SET @ColumnName =
			(
				SELECT MIN(QUOTENAME(COLUMN_NAME))
				FROM 	INFORMATION_SCHEMA.COLUMNS
				WHERE 		TABLE_SCHEMA	= PARSENAME(@TableName, 2)
					AND	TABLE_NAME	= PARSENAME(@TableName, 1)
					AND	DATA_TYPE IN (''char'', ''varchar'', ''nchar'', ''nvarchar'')
					AND	QUOTENAME(COLUMN_NAME) > @ColumnName
			)
	
			IF @ColumnName IS NOT NULL
			BEGIN
				INSERT INTO #Results
				EXEC
				(
					''SELECT '''''' + @TableName + ''.'' + @ColumnName + '''''', LEFT('' + @ColumnName + '', 3630) 
					FROM '' + @TableName + '' (NOLOCK) '' +
					'' WHERE '' + @ColumnName + '' LIKE '' + @SearchStr2
				)
			END
		END	
	END

	SELECT ColumnName, ColumnValue FROM #Results
END
' 
END
GO
/****** Object:  Table [dbo].[PhieuTinhTienChiTiet]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTinhTienChiTiet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuTinhTienChiTiet](
	[PhieuTinhTienId] [int] NOT NULL,
	[SoOrder] [int] NOT NULL,
	[MonAnId] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaBan] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[GhiChu] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhieuTinhTienChiTiet] PRIMARY KEY CLUSTERED 
(
	[PhieuTinhTienId] ASC,
	[MonAnId] ASC,
	[SoOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 4, 2, 4, 24000, 96000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 7, 2, 2, 24000, 48000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 8, 2, 2, 24000, 48000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 4, 3, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 1, 4, 2, 30000, 60000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 6, 4, 1, 30000, 30000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 6, 12, 1, 38000, 38000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 7, 12, 1, 38000, 38000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 4, 103, 11, 18000, 198000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 5, 162, 1, 28000, 28000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 8, 172, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 5, 173, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 4, 204, 1, 28000, 28000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 1, 205, 3, 20000, 60000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 2, 205, 4, 20000, 80000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 3, 205, 4, 20000, 80000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (1, 4, 205, 4, 20000, 80000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 3, 2, 1, 24000, 24000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 2, 4, 4, 30000, 120000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 2, 12, 3, 38000, 114000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 1, 162, 5, 28000, 140000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 2, 172, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 3, 172, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 1, 205, 11, 20000, 220000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (2, 1, 206, 2, 32000, 64000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 3, 2, 1, 24000, 24000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 4, 12, 30000, 360000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 3, 6, 1, 35000, 35000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 12, 3, 38000, 114000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 3, 12, 2, 38000, 76000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 2, 16, 2, 27000, 54000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 2, 23, 3, 26000, 78000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 2, 26, 2, 26000, 52000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 2, 28, 1, 35000, 35000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 94, 3, 16000, 48000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 3, 172, 1, 22000, 22000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 173, 2, 22000, 44000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 204, 1, 28000, 28000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 205, 1, 20000, 20000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (3, 1, 206, 1, 32000, 32000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (4, 1, 4, 1, 30000, 30000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (4, 1, 6, 2, 35000, 70000, NULL)
INSERT [dbo].[PhieuTinhTienChiTiet] ([PhieuTinhTienId], [SoOrder], [MonAnId], [SoLuong], [DonGiaBan], [ThanhTien], [GhiChu]) VALUES (4, 1, 12, 2, 38000, 76000, NULL)
/****** Object:  Table [dbo].[PhieuTinhTien]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTinhTien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuTinhTien](
	[PhieuTinhTienId] [int] NOT NULL,
	[BanId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayGioBan] [datetime] NULL,
	[NgayGioTinhPhieu] [datetime] NULL,
	[NVThuNgan] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVPhucVu] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TongTien] [int] NOT NULL,
	[GiamTien] [int] NOT NULL,
	[ThanhToan] [int] NOT NULL,
	[TienTra] [int] NOT NULL,
	[TienThoi] [int] NOT NULL,
	[KhachHangId] [int] NULL,
	[KhachThieu] [int] NOT NULL,
	[TinhTien] [bit] NOT NULL,
	[GhiChu] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhieuTinhTien] PRIMARY KEY CLUSTERED 
(
	[PhieuTinhTienId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[PhieuTinhTien] ([PhieuTinhTienId], [BanId], [NgayGioBan], [NgayGioTinhPhieu], [NVThuNgan], [NVPhucVu], [TongTien], [GiamTien], [ThanhToan], [TienTra], [TienThoi], [KhachHangId], [KhachThieu], [TinhTien], [GhiChu]) VALUES (1, N'B04', CAST(0x0000A33800BB5289 AS DateTime), NULL, N'ThuNgan', N'leminh', 0, 0, 0, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[PhieuTinhTien] ([PhieuTinhTienId], [BanId], [NgayGioBan], [NgayGioTinhPhieu], [NVThuNgan], [NVPhucVu], [TongTien], [GiamTien], [ThanhToan], [TienTra], [TienThoi], [KhachHangId], [KhachThieu], [TinhTien], [GhiChu]) VALUES (2, N'B05', CAST(0x0000A33800E3FC83 AS DateTime), NULL, N'ThuNgan', N'leminh', 0, 0, 0, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[PhieuTinhTien] ([PhieuTinhTienId], [BanId], [NgayGioBan], [NgayGioTinhPhieu], [NVThuNgan], [NVPhucVu], [TongTien], [GiamTien], [ThanhToan], [TienTra], [TienThoi], [KhachHangId], [KhachThieu], [TinhTien], [GhiChu]) VALUES (3, N'b06', CAST(0x0000A33800F60544 AS DateTime), NULL, N'ThuNgan', N'leminh', 0, 0, 0, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[PhieuTinhTien] ([PhieuTinhTienId], [BanId], [NgayGioBan], [NgayGioTinhPhieu], [NVThuNgan], [NVPhucVu], [TongTien], [GiamTien], [ThanhToan], [TienTra], [TienThoi], [KhachHangId], [KhachThieu], [TinhTien], [GhiChu]) VALUES (4, N'B07', CAST(0x0000A33B0115A61D AS DateTime), NULL, N'ThuNgan', N'leminh', 0, 0, 0, 0, 0, NULL, 0, 0, NULL)
/****** Object:  Table [dbo].[PhieuMuaHangChiTiet]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuaHangChiTiet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuMuaHangChiTiet](
	[SoPhieuChi] [int] NOT NULL,
	[MonAnId] [int] NOT NULL,
	[DonViTinh] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SoLuong] [decimal](4, 1) NOT NULL,
	[DonGiaMua] [int] NOT NULL,
	[TienMua] [int] NOT NULL,
	[SoCon] [smallint] NULL,
	[GhiChu] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhieuMuaHangChiTiet] PRIMARY KEY CLUSTERED 
(
	[SoPhieuChi] ASC,
	[MonAnId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PhieuMuaHang]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuaHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhieuMuaHang](
	[SoPhieuChi] [int] NOT NULL,
	[LoaiPhieuChi] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayChi] [datetime] NULL,
	[DienGiaiChung] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TongTienMua] [int] NOT NULL,
	[GiamTienMua] [int] NOT NULL,
	[ThanhToanMua] [int] NOT NULL,
	[KhachHangId] [int] NULL,
	[ThieuKhach] [int] NOT NULL,
 CONSTRAINT [PK_PhieuMuaHang] PRIMARY KEY CLUSTERED 
(
	[SoPhieuChi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PhanLoaiBep]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanLoaiBep]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhanLoaiBep](
	[TenBep] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[KhuVucId] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoaiCheBien] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_PhanLoaiBep] PRIMARY KEY CLUSTERED 
(
	[TenBep] ASC,
	[KhuVucId] ASC,
	[LoaiCheBien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP01', N'L01       ', N'BBGK')
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP02', N'TTR       ', N'BBDT')
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP03', N'L01       ', N'BBDT')
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP03', N'VIP       ', N'BBDT')
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP04', N'TTR       ', N'BBGK')
INSERT [dbo].[PhanLoaiBep] ([TenBep], [KhuVucId], [LoaiCheBien]) VALUES (N'BEP04', N'VIP       ', N'BBGK')
/****** Object:  Table [dbo].[PhanCongNhanVien]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanCongNhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhanCongNhanVien](
	[NhanVienId] [int] NOT NULL,
	[BanId] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Ngay] [datetime] NULL,
	[Ca] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GhiChu] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhanCongNhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienId] ASC,
	[BanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[PhanCongNhanVien] ([NhanVienId], [BanId], [Ngay], [Ca], [GhiChu]) VALUES (1, N'1', CAST(0x0000A2B800000000 AS DateTime), N'1', NULL)
INSERT [dbo].[PhanCongNhanVien] ([NhanVienId], [BanId], [Ngay], [Ca], [GhiChu]) VALUES (1, N'2', CAST(0x0000A2B700000000 AS DateTime), N'2', N'sv')
INSERT [dbo].[PhanCongNhanVien] ([NhanVienId], [BanId], [Ngay], [Ca], [GhiChu]) VALUES (1, N'3', CAST(0x0000A2B800000000 AS DateTime), N'3', NULL)
INSERT [dbo].[PhanCongNhanVien] ([NhanVienId], [BanId], [Ngay], [Ca], [GhiChu]) VALUES (2, N'1', CAST(0x0000A2B800000000 AS DateTime), N'2', N'bán thời gian')
/****** Object:  StoredProcedure [dbo].[MonAnTheoNgay]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonAnTheoNgay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MonAnTheoNgay](@ngayBatDau datetime, @ngayKetThuc datetime, @muaBan nvarchar(2)) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT     dbo.DMMonAn.TenMonAn, SUM(dbo.PhieuTinhTienChiTiet.SoLuong) AS TongSoLuong, SUM(dbo.PhieuTinhTienChiTiet.ThanhTien) AS TongTien, 
                      dbo.DMMonAn.MuaBan
FROM         dbo.PhieuTinhTien INNER JOIN
                      dbo.PhieuTinhTienChiTiet ON dbo.PhieuTinhTien.PhieuTinhTienId = dbo.PhieuTinhTienChiTiet.PhieuTinhTienId INNER JOIN
                      dbo.DMMonAn ON dbo.PhieuTinhTienChiTiet.MonAnId = dbo.DMMonAn.MonAnId
WHERE     (dbo.PhieuTinhTien.NgayGioBan >= @ngayBatDau) AND (dbo.PhieuTinhTien.NgayGioBan <= @ngayKetThuc)
GROUP BY dbo.DMMonAn.TenMonAn, dbo.DMMonAn.MuaBan
HAVING      (dbo.DMMonAn.MuaBan LIKE @muaBan)
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  View [dbo].[vMuaHang]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vMuaHang]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vMuaHang]
AS
SELECT     MonAnId, SUM(SoLuong) AS SoLuongMua, AVG(DonGiaMua) AS DonGiaMua, SUM(TienMua) AS TienMua
FROM         dbo.PhieuMuaHangChiTiet
GROUP BY MonAnId

'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vMuaHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PhieuMuaHangChiTiet"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 179
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 2370
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMuaHang'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vMuaHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMuaHang'
GO
/****** Object:  Trigger [ThanhToanThuThucTe]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ThanhToanThuThucTe]'))
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[ThanhToanThuThucTe] 
   ON  [dbo].[PhieuTinhTien] 
   AFTER INSERT, UPDATE
AS 
    --IF UPDATE(GiamTienMua)
    UPDATE [PhieuTinhTien] 
	SET ThanhToan = TongTien - GiamTien - KhachThieu
	WHERE PhieuTinhTienId in (select PhieuTinhTienId from inserted)

'
GO
/****** Object:  Trigger [ThanhToanMuaThucTe]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ThanhToanMuaThucTe]'))
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[ThanhToanMuaThucTe] 
   ON  [dbo].[PhieuMuaHang] 
   AFTER INSERT, UPDATE
AS 
    --IF UPDATE(GiamTienMua)
    UPDATE [PhieuMuaHang] 
	SET ThanhToanMua = TongTienMua - GiamTienMua - ThieuKhach
	WHERE SoPhieuChi in (select SoPhieuChi from inserted)

'
GO
/****** Object:  StoredProcedure [dbo].[SoLuongMuaTheoNgay]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoLuongMuaTheoNgay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SoLuongMuaTheoNgay](@ngayBd datetime, @ngayKt datetime, @muaBan nvarchar(2))
AS
BEGIN
	SET NOCOUNT ON;
SELECT     dbo.PhieuMuaHangChiTiet.MonAnId, dbo.DMMonAn.TenMonAn, SUM(dbo.PhieuMuaHangChiTiet.SoLuong) AS TongSL, SUM(dbo.PhieuMuaHangChiTiet.TienMua) 
                      AS TongTienMua, dbo.DMMonAn.MuaBan AS Loai
FROM         dbo.PhieuMuaHang INNER JOIN
                      dbo.PhieuMuaHangChiTiet ON dbo.PhieuMuaHang.SoPhieuChi = dbo.PhieuMuaHangChiTiet.SoPhieuChi INNER JOIN
                      dbo.DMMonAn ON dbo.PhieuMuaHangChiTiet.MonAnId = dbo.DMMonAn.MonAnId
WHERE     (dbo.PhieuMuaHang.NgayChi >= @ngayBd) AND (dbo.PhieuMuaHang.NgayChi <= @ngayKt)
GROUP BY dbo.PhieuMuaHangChiTiet.MonAnId, dbo.DMMonAn.TenMonAn, dbo.DMMonAn.MuaBan
HAVING      (dbo.DMMonAn.MuaBan LIKE @muaBan)

END
' 
END
GO
/****** Object:  View [dbo].[vBanHang]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vBanHang]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vBanHang]
AS
SELECT     MonAnId, SUM(SoLuong) AS SoLuongBan, SUM(ThanhTien) AS TienBan, AVG(DonGiaBan) AS DonGiaBan
FROM         dbo.PhieuTinhTienChiTiet
GROUP BY MonAnId

'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vBanHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PhieuTinhTienChiTiet"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vBanHang'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vBanHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vBanHang'
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__03317E3D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'0fde7077-343a-40fd-ab6b-10999523b76f', N'bean', N'bean', NULL, 0, CAST(0x0000A33000717278 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'leminh', N'leminh', NULL, 0, CAST(0x0000A33B00F44C5E AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'tho', N'tho', NULL, 0, CAST(0x0000A336002D7539 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'tuan', N'tuan', NULL, 0, CAST(0x0000A336000E61D3 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__44FF419A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Roles__31EC6D26] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'150015c7-a30f-4d14-8aa6-6f149068f596', N'Admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'2bc7684e-1646-46af-b0a2-082812686f7d', N'Bep', N'bep', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'bbcd768d-2b10-43d0-aa28-db7827d09055', N'ChayBan', N'chayban', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'44836198-2e7f-429d-acd5-636cfa810f6d', N'editor', N'editor', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'080be643-3a7f-43a8-b0c6-3608e203932e', N'KeToan', N'ketoan', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4D94879B] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__286302EC] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Membershi__1367E606] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'0fde7077-343a-40fd-ab6b-10999523b76f', N'6T/ppqYrfCaPm158xGBdIWoWJjk=', 1, N'zAmLhnur1LN8a6BGr2tzgw==', NULL, N'bean@123.com', N'bean@123.com', NULL, NULL, 1, 0, CAST(0x0000A33000717168 AS DateTime), CAST(0x0000A33000717278 AS DateTime), CAST(0x0000A33000717168 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'uw/Alzu6r0LY5K07UeE+1HAwg6E=', 1, N'nSUP0BeDBTd6n1YSsqY+eQ==', NULL, N'thminhle@yahoo.com', N'thminhle@yahoo.com', NULL, NULL, 1, 0, CAST(0x0000A2FF00C62370 AS DateTime), CAST(0x0000A33B00F44C5E AS DateTime), CAST(0x0000A2FF00C62370 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'JQBYuNVyMn1TUJaUa2zmxo+dfDA=', 1, N'R0KuE8VL39S5EZMPRGAtew==', NULL, N'tho123@123.com', N'tho123@123.com', NULL, NULL, 1, 0, CAST(0x0000A33000714990 AS DateTime), CAST(0x0000A336002D7539 AS DateTime), CAST(0x0000A33000714990 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c8bdad72-db16-4947-bc3f-9923ab05bf8e', N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'XkzglBIncEWytpLvmLWPvPz412E=', 1, N'hkzqJDiyRut0EA6TlnbX9w==', NULL, N'tuan123@123.com', N'tuan123@123.com', NULL, NULL, 1, 0, CAST(0x0000A33000711F60 AS DateTime), CAST(0x0000A336000E61D3 AS DateTime), CAST(0x0000A33000711F60 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 3, CAST(0x0000A339001AD608 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4AB81AF0] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 05/31/2014 00:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_UsersInRo__35BCFE0A] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0fde7077-343a-40fd-ab6b-10999523b76f', N'2bc7684e-1646-46af-b0a2-082812686f7d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'2bc7684e-1646-46af-b0a2-082812686f7d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'2bc7684e-1646-46af-b0a2-082812686f7d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'2bc7684e-1646-46af-b0a2-082812686f7d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0fde7077-343a-40fd-ab6b-10999523b76f', N'080be643-3a7f-43a8-b0c6-3608e203932e')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'080be643-3a7f-43a8-b0c6-3608e203932e')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'080be643-3a7f-43a8-b0c6-3608e203932e')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'080be643-3a7f-43a8-b0c6-3608e203932e')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0fde7077-343a-40fd-ab6b-10999523b76f', N'44836198-2e7f-429d-acd5-636cfa810f6d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'44836198-2e7f-429d-acd5-636cfa810f6d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'44836198-2e7f-429d-acd5-636cfa810f6d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'44836198-2e7f-429d-acd5-636cfa810f6d')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0fde7077-343a-40fd-ab6b-10999523b76f', N'150015c7-a30f-4d14-8aa6-6f149068f596')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'150015c7-a30f-4d14-8aa6-6f149068f596')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'150015c7-a30f-4d14-8aa6-6f149068f596')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'150015c7-a30f-4d14-8aa6-6f149068f596')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0fde7077-343a-40fd-ab6b-10999523b76f', N'bbcd768d-2b10-43d0-aa28-db7827d09055')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1d69f232-0abc-46b7-8419-1dcfcc922246', N'bbcd768d-2b10-43d0-aa28-db7827d09055')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8eb66825-05bf-40ae-a6b5-350ba27fae56', N'bbcd768d-2b10-43d0-aa28-db7827d09055')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e2a1373d-f326-4c1d-a014-ed24a501bdad', N'bbcd768d-2b10-43d0-aa28-db7827d09055')
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  View [dbo].[vMuaBanHang]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vMuaBanHang]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vMuaBanHang]
AS
SELECT     dbo.DMMonAn.MonAnId, dbo.DMMonAn.TenMonAn, ISNULL(dbo.vMuaHang.SoLuongMua, 0) AS SoLuongMua, ISNULL(dbo.vBanHang.SoLuongBan, 0) 
                      AS SoLuongBan, ISNULL(dbo.vMuaHang.SoLuongMua, 0) - ISNULL(dbo.vBanHang.SoLuongBan, 0) AS TonHang, ISNULL(dbo.vMuaHang.DonGiaMua, 0) 
                      AS DonGiaMua, ISNULL(dbo.vBanHang.DonGiaBan, 0) AS DonGiaBan, ISNULL(dbo.vMuaHang.TienMua, 0) AS TienMua, ISNULL(dbo.vBanHang.TienBan, 0) 
                      AS TienBan, ISNULL(dbo.vBanHang.TienBan, 0) - ISNULL(dbo.vMuaHang.TienMua, 0) AS TienLai, CASE WHEN SoLuongBan = 0 THEN 0 ELSE CONVERT(DECIMAL(10, 
                      2), (CONVERT(DECIMAL(10, 2), dbo.vBanHang.DonGiaBan) - dbo.vMuaHang.DonGiaMua) / dbo.vMuaHang.DonGiaMua) END AS TyLeLai
FROM         dbo.vBanHang RIGHT OUTER JOIN
                      dbo.DMMonAn ON dbo.vBanHang.MonAnId = dbo.DMMonAn.MonAnId LEFT OUTER JOIN
                      dbo.vMuaHang ON dbo.DMMonAn.MonAnId = dbo.vMuaHang.MonAnId
WHERE     (dbo.DMMonAn.MuaBan LIKE N''MB'') AND (ISNULL(dbo.vMuaHang.SoLuongMua, 0) <> 0) OR
                      (dbo.DMMonAn.MuaBan LIKE N''MB'') AND (ISNULL(dbo.vBanHang.SoLuongBan, 0) <> 0)

'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vMuaBanHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[11] 4[24] 2[25] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DMMonAn"
            Begin Extent = 
               Top = 5
               Left = 306
               Bottom = 124
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vBanHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vMuaHang"
            Begin Extent = 
               Top = 6
               Left = 540
               Bottom = 125
               Right = 700
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1710
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 9150
         Alias = 1200
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMuaBanHang'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vMuaBanHang', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMuaBanHang'
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  StoredProcedure [dbo].[XoaMotUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XoaMotUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[XoaMotUser] 
	@UserName         nvarchar(256)
AS
BEGIN
	SET NOCOUNT ON;
DECLARE @UserId uniqueidentifier
SET @UserId  =	(SELECT UserID
				FROM [dbo].[aspnet_Users]
				WHERE LoweredUserName = LOWER(@UserName))

/*
	delete from WidgetInstance where WidgetZoneID in (
		select WidgetZoneID from [Column] where PageID in (
			select ID from Page where UserID = @UserId
			)
		)

	delete from [Column] where PageId IN (
		select ID from Page where UserID = @UserId
		)

	delete from WidgetZone where ID IN (
		select WidgetZoneID from [Column] where PageID in (
			select ID from Page where UserID = @UserId
			)
		)

	delete from UserSetting where UserID = @UserId

	delete from Page where UserID = @UserId

	delete from Token where UserID = @UserId
	
	delete from aspnet_UsersInRoles where UserID = @UserId
*/	
	delete from aspnet_membership where UserID = @UserId
	
	delete from aspnet_profile where UserID = @UserId
	
	delete from aspnet_UsersInRoles where UserID = @UserId
	
	delete from aspnet_users where UserID = @UserId
	
END


' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  StoredProcedure [dbo].[UserInRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UserInRoles]
(
	@UserName nvarchar(256)
)
AS
	SET NOCOUNT ON;
SELECT     aspnet_Users.UserName, aspnet_Roles.RoleName
FROM         aspnet_Roles INNER JOIN
                      aspnet_UsersInRoles ON aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId INNER JOIN
                      aspnet_Users ON aspnet_UsersInRoles.UserId = aspnet_Users.UserId
WHERE     (aspnet_Users.UserName = @UserName)' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, @CurrentTimeUtc, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 05/31/2014 00:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__014935CB]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]  DEFAULT (newid()) FOR [ApplicationId]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__164452B1]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__164452B1]  DEFAULT ((0)) FOR [PasswordFormat]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]  DEFAULT (newid()) FOR [PathId]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]  DEFAULT (newid()) FOR [Id]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]  DEFAULT (newid()) FOR [RoleId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0519C6AF]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]  DEFAULT (newid()) FOR [UserId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]  DEFAULT (NULL) FOR [MobileAlias]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__07020F21]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]  DEFAULT ((0)) FOR [IsAnonymous]
END


End
GO
/****** Object:  Default [DF_DMBan_CoKhach]    Script Date: 05/31/2014 00:57:21 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DMBan_CoKhach]') AND parent_object_id = OBJECT_ID(N'[dbo].[DMBan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DMBan_CoKhach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DMBan] ADD  CONSTRAINT [DF_DMBan_CoKhach]  DEFAULT ((0)) FOR [CoKhach]
END


End
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__15502E78] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__5070F446] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__29572725] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0425A276] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Script Date: 05/31/2014 00:57:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__36B12243] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_CreateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetAllUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPassword] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPasswordWithFormat] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ResetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_SetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UnlockUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUserInfo] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Paths_CreatePath] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Personalization_GetApplicationId] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_FindState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetUserState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteInactiveProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_SetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_CreateRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_DeleteRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_GetAllRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_RoleExists] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Users_DeleteUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_AddUsersToRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_FindUsersInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetUsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_WebEvent_LogEvent] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
