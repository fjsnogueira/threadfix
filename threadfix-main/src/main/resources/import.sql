-- ----------------------------------------------------------------------
-- Complete Report of all Data
--
-- ----------------------------------------------------------------------

-- ------------------------------------
-- ROLES ------------------------------
-- ------------------------------------
INSERT INTO Role (createdDate, modifiedDate, displayname, active, canManageVulnFilters,canManageSystemSettings,canManageScanAgents,canGenerateReports,canGenerateWafRules,canManageApiKeys,canManageApplications,canManageGrcTools,canManageDefectTrackers,canManageRemoteProviders,canManageRoles,canManageTeams,canManageUsers,canManageWafs,canModifyVulnerabilities,canSubmitDefects,canUploadScans,canViewErrorLogs,canViewJobStatuses,canManageTags,canSubmitComments,canManageEmailReports,canManageCustomCweText,canManageScanResultFilters) VALUES (getdate(), getdate(), 'Administrator', 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO Role (createdDate, modifiedDate, displayname, active, canManageVulnFilters,canManageSystemSettings,canManageScanAgents,canGenerateReports,canGenerateWafRules,canManageApiKeys,canManageApplications,canManageGrcTools,canManageDefectTrackers,canManageRemoteProviders,canManageRoles,canManageTeams,canManageUsers,canManageWafs,canModifyVulnerabilities,canSubmitDefects,canUploadScans,canViewErrorLogs,canViewJobStatuses,canManageTags,canSubmitComments,canManageEmailReports,canManageCustomCweText,canManageScanResultFilters) VALUES (getdate(), getdate(), 'User', 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

INSERT INTO [User] (active, approved, createdDate, modifiedDate, name, password, roleId, salt, failedPasswordAttemptWindowStart, failedPasswordAttempts, lastLoginDate, lastPasswordChangedDate, locked, hasGlobalGroupAccess, isLdapUser) VALUES (1, 1, getdate(), getdate(), 'user', '1ad7cb5116eea07356140e718895d3bad52220589e00efe99108031cc93df924', 1, 'd4639110-c8f1-4654-887f-aa9634bc457b', getdate(), 0, getdate(), getdate(),0,1,0);
