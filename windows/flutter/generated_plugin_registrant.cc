//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dd_check_plugin/dd_check_plugin.h>
#include <dd_js_util/dd_js_util_plugin.h>
#include <network_info_plus_windows/network_info_plus_windows_plugin.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DdCheckPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdCheckPlugin"));
  DdJsUtilPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdJsUtilPlugin"));
  NetworkInfoPlusWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NetworkInfoPlusWindowsPlugin"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
