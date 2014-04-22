<%@ include file="/common/taglibs.jsp"%>

<table class="table" ng-show="maps">
    <thead>
    <tr>
        <th class="medium first">Team</th>
        <th class="medium">Application</th>
        <th class="medium">Role</th>
        <th class="short" style="text-align:center">Edit</th>
        <th class="short last" style="text-align:center">Delete</th>
    </tr>
    </thead>
    <tbody ng-repeat="map in maps" style="border-top: 0">
        <tr ng-show="map.allApps && map.active" class="bodyRow">
            <td id="teamName{{ $index }}">{{ map.organization.name }}</td>
            <td id="applicationName{{ $index }}">
                All
            </td>
            <td id="roleName{{ $index }}">
                {{ map.role.displayName }}
            </td>
            <td style="text-align:center">
                <a id="editAppMap{{ $index }}" class="btn" ng-click="edit(map)">
                    Edit
                </a>
            </td>
            <td style="text-align:center">
                <a class="btn" id="deleteAppMap{{ $index }}" ng-click="delete(map)">
                    Delete
                </a>
            </td>
        </tr>
        <tr ng-repeat="appMap in map.accessControlApplicationMaps" ng-show="!map.allApps && map.active" class="bodyRow">
            <td id="teamName{{ $index }}">
                {{ map.organization.name }}
            </td>
            <td id="applicationName{{ $index }}">
                {{ appMap.application.name }}
            </td>
            <td id="roleName{{ $index }}">
                {{ appMap.role.displayName }}
            </td>
            <td style="text-align:center">
                <a id="editAppMap{{ $index }}" class="btn" ng-click="edit(map)">
                    Edit
                </a>
            </td>
            <td style="text-align:center">
                <a class="btn" id="deleteAppMap{{ $index }}" ng-click="delete(map)">
                    Delete
                </a>
            </td>
        </tr>
    </tbody>
</table>