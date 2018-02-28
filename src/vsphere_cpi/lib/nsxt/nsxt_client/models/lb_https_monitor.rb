=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class LbHttpsMonitor
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # Load balancers monitor the health of backend servers to ensure traffic is not black holed. There are two types of healthchecks: active and passive. Passive healthchecks depend on failures in actual client traffic (e.g. RST from server in response to a client connection) to detect that the server or the application is down. In case of active healthchecks, load balancer itself initiates new connections (or sends ICMP ping) to the servers periodically to check their health, completely independent of any data traffic. Currently, active health monitors are supported for HTTP, HTTPS, TCP, UDP and ICMP protocols. 
    attr_accessor :resource_type

    # If the monitor port is specified, it would override pool member port setting for healthcheck. A port range is not supported. 
    attr_accessor :monitor_port

    # num of consecutive checks must fail before marking it down
    attr_accessor :fall_count

    # the frequency at which the system issues the monitor check (in second)
    attr_accessor :interval

    # num of consecutive checks must pass before marking it up
    attr_accessor :rise_count

    # the number of seconds the target has in which to respond to the monitor request 
    attr_accessor :timeout

    # The HTTP response status code should be a valid HTTP status code. 
    attr_accessor :response_status_codes

    # A Certificate Revocation List (CRL) can be specified in the server-side SSL profile binding to disallow compromised server certificates. 
    attr_accessor :server_auth_crl_ids

    # server authentication mode
    attr_accessor :server_auth

    # String to send as part of HTTP health check request body. Valid only for certain HTTP methods like POST. 
    attr_accessor :request_body

    # If HTTP response body match string (regular expressions not supported) is specified (using LbHttpMonitor.response_body) then the healthcheck HTTP response body is matched against the specified string and server is considered healthy only if there is a match. If the response body string is not specified, HTTP healthcheck is considered successful if the HTTP response status code is 2xx, but it can be configured to accept other status codes as successful. 
    attr_accessor :response_body

    # supported SSL cipher list to servers
    attr_accessor :ciphers

    # client certificate can be specified to support client authentication. 
    attr_accessor :client_certificate_id

    # the health check method for HTTP monitor type
    attr_accessor :request_method

    # authentication depth is used to set the verification depth in the server certificates chain. 
    attr_accessor :certificate_chain_depth

    # This flag is set to true when all the ciphers and protocols are secure. It is set to false when one of the ciphers or protocols is insecure. 
    attr_accessor :is_secure

    # URL used for HTTP monitor
    attr_accessor :request_url

    # If server auth type is REQUIRED, server certificate must be signed by one of the trusted Certificate Authorities (CAs), also referred to as root CAs, whose self signed certificates are specified. 
    attr_accessor :server_auth_ca_ids

    # HTTP request version
    attr_accessor :request_version

    # SSL versions TLS1.1 and TLS1.2 are supported and enabled by default. SSLv2, SSLv3, and TLS1.0 are supported, but disabled by default. 
    attr_accessor :protocols

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'monitor_port' => :'monitor_port',
        :'fall_count' => :'fall_count',
        :'interval' => :'interval',
        :'rise_count' => :'rise_count',
        :'timeout' => :'timeout',
        :'response_status_codes' => :'response_status_codes',
        :'server_auth_crl_ids' => :'server_auth_crl_ids',
        :'server_auth' => :'server_auth',
        :'request_body' => :'request_body',
        :'response_body' => :'response_body',
        :'ciphers' => :'ciphers',
        :'client_certificate_id' => :'client_certificate_id',
        :'request_method' => :'request_method',
        :'certificate_chain_depth' => :'certificate_chain_depth',
        :'is_secure' => :'is_secure',
        :'request_url' => :'request_url',
        :'server_auth_ca_ids' => :'server_auth_ca_ids',
        :'request_version' => :'request_version',
        :'protocols' => :'protocols'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'monitor_port' => :'String',
        :'fall_count' => :'Integer',
        :'interval' => :'Integer',
        :'rise_count' => :'Integer',
        :'timeout' => :'Integer',
        :'response_status_codes' => :'Array<Integer>',
        :'server_auth_crl_ids' => :'Array<String>',
        :'server_auth' => :'String',
        :'request_body' => :'String',
        :'response_body' => :'String',
        :'ciphers' => :'Array<String>',
        :'client_certificate_id' => :'String',
        :'request_method' => :'String',
        :'certificate_chain_depth' => :'Integer',
        :'is_secure' => :'BOOLEAN',
        :'request_url' => :'String',
        :'server_auth_ca_ids' => :'Array<String>',
        :'request_version' => :'String',
        :'protocols' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'monitor_port')
        self.monitor_port = attributes[:'monitor_port']
      end

      if attributes.has_key?(:'fall_count')
        self.fall_count = attributes[:'fall_count']
      else
        self.fall_count = 3
      end

      if attributes.has_key?(:'interval')
        self.interval = attributes[:'interval']
      else
        self.interval = 5
      end

      if attributes.has_key?(:'rise_count')
        self.rise_count = attributes[:'rise_count']
      else
        self.rise_count = 3
      end

      if attributes.has_key?(:'timeout')
        self.timeout = attributes[:'timeout']
      else
        self.timeout = 15
      end

      if attributes.has_key?(:'response_status_codes')
        if (value = attributes[:'response_status_codes']).is_a?(Array)
          self.response_status_codes = value
        end
      end

      if attributes.has_key?(:'server_auth_crl_ids')
        if (value = attributes[:'server_auth_crl_ids']).is_a?(Array)
          self.server_auth_crl_ids = value
        end
      end

      if attributes.has_key?(:'server_auth')
        self.server_auth = attributes[:'server_auth']
      else
        self.server_auth = "IGNORE"
      end

      if attributes.has_key?(:'request_body')
        self.request_body = attributes[:'request_body']
      end

      if attributes.has_key?(:'response_body')
        self.response_body = attributes[:'response_body']
      end

      if attributes.has_key?(:'ciphers')
        if (value = attributes[:'ciphers']).is_a?(Array)
          self.ciphers = value
        end
      end

      if attributes.has_key?(:'client_certificate_id')
        self.client_certificate_id = attributes[:'client_certificate_id']
      end

      if attributes.has_key?(:'request_method')
        self.request_method = attributes[:'request_method']
      else
        self.request_method = "GET"
      end

      if attributes.has_key?(:'certificate_chain_depth')
        self.certificate_chain_depth = attributes[:'certificate_chain_depth']
      else
        self.certificate_chain_depth = 3
      end

      if attributes.has_key?(:'is_secure')
        self.is_secure = attributes[:'is_secure']
      end

      if attributes.has_key?(:'request_url')
        self.request_url = attributes[:'request_url']
      end

      if attributes.has_key?(:'server_auth_ca_ids')
        if (value = attributes[:'server_auth_ca_ids']).is_a?(Array)
          self.server_auth_ca_ids = value
        end
      end

      if attributes.has_key?(:'request_version')
        self.request_version = attributes[:'request_version']
      else
        self.request_version = "HTTP_VERSION_1_1"
      end

      if attributes.has_key?(:'protocols')
        if (value = attributes[:'protocols']).is_a?(Array)
          self.protocols = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push("invalid value for 'display_name', the character length must be smaller than or equal to 255.")
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 1024.")
      end

      if @resource_type.nil?
        invalid_properties.push("invalid value for 'resource_type', resource_type cannot be nil.")
      end

      if !@fall_count.nil? && @fall_count < 1
        invalid_properties.push("invalid value for 'fall_count', must be greater than or equal to 1.")
      end

      if !@interval.nil? && @interval < 1
        invalid_properties.push("invalid value for 'interval', must be greater than or equal to 1.")
      end

      if !@rise_count.nil? && @rise_count < 1
        invalid_properties.push("invalid value for 'rise_count', must be greater than or equal to 1.")
      end

      if !@timeout.nil? && @timeout < 1
        invalid_properties.push("invalid value for 'timeout', must be greater than or equal to 1.")
      end

      if !@certificate_chain_depth.nil? && @certificate_chain_depth < 1
        invalid_properties.push("invalid value for 'certificate_chain_depth', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ["LbHttpMonitor", "LbHttpsMonitor", "LbIcmpMonitor", "LbTcpMonitor", "LbUdpMonitor", "LbPassiveMonitor"])
      return false unless resource_type_validator.valid?(@resource_type)
      return false if !@fall_count.nil? && @fall_count < 1
      return false if !@interval.nil? && @interval < 1
      return false if !@rise_count.nil? && @rise_count < 1
      return false if !@timeout.nil? && @timeout < 1
      server_auth_validator = EnumAttributeValidator.new('String', ["REQUIRED", "IGNORE"])
      return false unless server_auth_validator.valid?(@server_auth)
      request_method_validator = EnumAttributeValidator.new('String', ["GET", "OPTIONS", "POST", "HEAD", "PUT"])
      return false unless request_method_validator.valid?(@request_method)
      return false if !@certificate_chain_depth.nil? && @certificate_chain_depth < 1
      request_version_validator = EnumAttributeValidator.new('String', ["HTTP_VERSION_1_0", "HTTP_VERSION_1_1", "HTTP_VERSION_2_0"])
      return false unless request_version_validator.valid?(@request_version)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)

      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'display_name', the character length must be smaller than or equal to 255."
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 1024."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ["LbHttpMonitor", "LbHttpsMonitor", "LbIcmpMonitor", "LbTcpMonitor", "LbUdpMonitor", "LbPassiveMonitor"])
      unless validator.valid?(resource_type)
        fail ArgumentError, "invalid value for 'resource_type', must be one of #{validator.allowable_values}."
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method with validation
    # @param [Object] fall_count Value to be assigned
    def fall_count=(fall_count)

      if !fall_count.nil? && fall_count < 1
        fail ArgumentError, "invalid value for 'fall_count', must be greater than or equal to 1."
      end

      @fall_count = fall_count
    end

    # Custom attribute writer method with validation
    # @param [Object] interval Value to be assigned
    def interval=(interval)

      if !interval.nil? && interval < 1
        fail ArgumentError, "invalid value for 'interval', must be greater than or equal to 1."
      end

      @interval = interval
    end

    # Custom attribute writer method with validation
    # @param [Object] rise_count Value to be assigned
    def rise_count=(rise_count)

      if !rise_count.nil? && rise_count < 1
        fail ArgumentError, "invalid value for 'rise_count', must be greater than or equal to 1."
      end

      @rise_count = rise_count
    end

    # Custom attribute writer method with validation
    # @param [Object] timeout Value to be assigned
    def timeout=(timeout)

      if !timeout.nil? && timeout < 1
        fail ArgumentError, "invalid value for 'timeout', must be greater than or equal to 1."
      end

      @timeout = timeout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] server_auth Object to be assigned
    def server_auth=(server_auth)
      validator = EnumAttributeValidator.new('String', ["REQUIRED", "IGNORE"])
      unless validator.valid?(server_auth)
        fail ArgumentError, "invalid value for 'server_auth', must be one of #{validator.allowable_values}."
      end
      @server_auth = server_auth
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_method Object to be assigned
    def request_method=(request_method)
      validator = EnumAttributeValidator.new('String', ["GET", "OPTIONS", "POST", "HEAD", "PUT"])
      unless validator.valid?(request_method)
        fail ArgumentError, "invalid value for 'request_method', must be one of #{validator.allowable_values}."
      end
      @request_method = request_method
    end

    # Custom attribute writer method with validation
    # @param [Object] certificate_chain_depth Value to be assigned
    def certificate_chain_depth=(certificate_chain_depth)

      if !certificate_chain_depth.nil? && certificate_chain_depth < 1
        fail ArgumentError, "invalid value for 'certificate_chain_depth', must be greater than or equal to 1."
      end

      @certificate_chain_depth = certificate_chain_depth
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_version Object to be assigned
    def request_version=(request_version)
      validator = EnumAttributeValidator.new('String', ["HTTP_VERSION_1_0", "HTTP_VERSION_1_1", "HTTP_VERSION_2_0"])
      unless validator.valid?(request_version)
        fail ArgumentError, "invalid value for 'request_version', must be one of #{validator.allowable_values}."
      end
      @request_version = request_version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          monitor_port == o.monitor_port &&
          fall_count == o.fall_count &&
          interval == o.interval &&
          rise_count == o.rise_count &&
          timeout == o.timeout &&
          response_status_codes == o.response_status_codes &&
          server_auth_crl_ids == o.server_auth_crl_ids &&
          server_auth == o.server_auth &&
          request_body == o.request_body &&
          response_body == o.response_body &&
          ciphers == o.ciphers &&
          client_certificate_id == o.client_certificate_id &&
          request_method == o.request_method &&
          certificate_chain_depth == o.certificate_chain_depth &&
          is_secure == o.is_secure &&
          request_url == o.request_url &&
          server_auth_ca_ids == o.server_auth_ca_ids &&
          request_version == o.request_version &&
          protocols == o.protocols
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, monitor_port, fall_count, interval, rise_count, timeout, response_status_codes, server_auth_crl_ids, server_auth, request_body, response_body, ciphers, client_certificate_id, request_method, certificate_chain_depth, is_secure, request_url, server_auth_ca_ids, request_version, protocols].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
