Geocoder.configure(
  # Geocoding options
  timeout: 5,                 # geocoding service timeout (secs)
  # lookup: :nominatim,         # name of geocoding service (symbol)
  ip_lookup: :ipapi_com,      # name of IP address geocoding service (symbol)
  # ip_lookup: :'pelias',      # name of IP address geocoding service (symbol)
  language: :ru,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  # api_key: nil,               # API key for geocoding service
  cache: Redis.new,             # cache object (must respond to #[], #[]=, and #del)
  cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
  # units: :mi,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear

  # street address geocoding service (default :nominatim)
  # lookup: :ipo_api,
)
