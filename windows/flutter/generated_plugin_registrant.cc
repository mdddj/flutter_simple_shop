//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dd_check_plugin/dd_check_plugin.h>
#include <dd_models/dd_models_plugin_c_api.h>
#include <file_selector_windows/file_selector_windows.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DdCheckPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdCheckPlugin"));
  DdModelsPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdModelsPluginCApi"));
  FileSelectorWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileSelectorWindows"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
