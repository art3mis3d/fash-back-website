from CoreBackend.core.utils.collections import deep_update
from CoreBackend.core.utils.settings import get_settings_from_environment

deep_update(globals(), get_settings_from_environment(ENVVARS_SETTINGS_PREFIX))  # type: ignore # noqa: F821
