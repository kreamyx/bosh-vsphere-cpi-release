=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class VsphereDeploymentConfig
    attr_accessor :placement_type

    # List of distributed portgroup identifiers to which the datapath serving vnics of edge node vm will be connected. 
    attr_accessor :data_network_ids

    # The edge node vm will be deployed on the specified Host within the cluster if host_id is specified. Note - User must ensure that storage and specified networks are accessible by this host. 
    attr_accessor :host_id

    # Distributed portgroup identifier to which the management vnic of edge node vm will be connected. This portgroup must have connectivity with MP and CCP. 
    attr_accessor :management_network_id

    # The vc specific identifiers will be resolved on this VC. So all other identifiers specified here must belong to this vcenter server. 
    attr_accessor :vc_id

    # The edge node vm will be deployed on the specified datastore. User must ensure that storage is accessible by the specified cluster/host. 
    attr_accessor :storage_id

    # The default gateway for edge node must be specified if all the nodes it communicates with are not in the same subnet. Note: only single IPv4 default gateway address is supported and it must belong to management network. Do not specify this field and management_port_subnets to use DHCP. 
    attr_accessor :default_gateway_addresses

    # IP Address and subnet configuration for the management port. Note: only one IPv4 address is supported for the management port. Do not specify this field and default_gateway_addresses to use DHCP. 
    attr_accessor :management_port_subnets

    # Host name or FQDN for edge node.
    attr_accessor :hostname

    # The edge node vm will be deployed on the specified cluster or resourcepool. Note - all the hosts must have nsx fabric prepared in the specified cluster. 
    attr_accessor :compute_id

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
        :'placement_type' => :'placement_type',
        :'data_network_ids' => :'data_network_ids',
        :'host_id' => :'host_id',
        :'management_network_id' => :'management_network_id',
        :'vc_id' => :'vc_id',
        :'storage_id' => :'storage_id',
        :'default_gateway_addresses' => :'default_gateway_addresses',
        :'management_port_subnets' => :'management_port_subnets',
        :'hostname' => :'hostname',
        :'compute_id' => :'compute_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'placement_type' => :'String',
        :'data_network_ids' => :'Array<String>',
        :'host_id' => :'String',
        :'management_network_id' => :'String',
        :'vc_id' => :'String',
        :'storage_id' => :'String',
        :'default_gateway_addresses' => :'Array<String>',
        :'management_port_subnets' => :'Array<IPSubnet>',
        :'hostname' => :'String',
        :'compute_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'placement_type')
        self.placement_type = attributes[:'placement_type']
      end

      if attributes.has_key?(:'data_network_ids')
        if (value = attributes[:'data_network_ids']).is_a?(Array)
          self.data_network_ids = value
        end
      end

      if attributes.has_key?(:'host_id')
        self.host_id = attributes[:'host_id']
      end

      if attributes.has_key?(:'management_network_id')
        self.management_network_id = attributes[:'management_network_id']
      end

      if attributes.has_key?(:'vc_id')
        self.vc_id = attributes[:'vc_id']
      end

      if attributes.has_key?(:'storage_id')
        self.storage_id = attributes[:'storage_id']
      end

      if attributes.has_key?(:'default_gateway_addresses')
        if (value = attributes[:'default_gateway_addresses']).is_a?(Array)
          self.default_gateway_addresses = value
        end
      end

      if attributes.has_key?(:'management_port_subnets')
        if (value = attributes[:'management_port_subnets']).is_a?(Array)
          self.management_port_subnets = value
        end
      end

      if attributes.has_key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.has_key?(:'compute_id')
        self.compute_id = attributes[:'compute_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @placement_type.nil?
        invalid_properties.push("invalid value for 'placement_type', placement_type cannot be nil.")
      end

      if @data_network_ids.nil?
        invalid_properties.push("invalid value for 'data_network_ids', data_network_ids cannot be nil.")
      end

      if @management_network_id.nil?
        invalid_properties.push("invalid value for 'management_network_id', management_network_id cannot be nil.")
      end

      if @vc_id.nil?
        invalid_properties.push("invalid value for 'vc_id', vc_id cannot be nil.")
      end

      if @storage_id.nil?
        invalid_properties.push("invalid value for 'storage_id', storage_id cannot be nil.")
      end

      if @hostname.nil?
        invalid_properties.push("invalid value for 'hostname', hostname cannot be nil.")
      end

      if @compute_id.nil?
        invalid_properties.push("invalid value for 'compute_id', compute_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @placement_type.nil?
      placement_type_validator = EnumAttributeValidator.new('String', ["VsphereDeploymentConfig"])
      return false unless placement_type_validator.valid?(@placement_type)
      return false if @data_network_ids.nil?
      return false if @management_network_id.nil?
      return false if @vc_id.nil?
      return false if @storage_id.nil?
      return false if @hostname.nil?
      return false if @compute_id.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] placement_type Object to be assigned
    def placement_type=(placement_type)
      validator = EnumAttributeValidator.new('String', ["VsphereDeploymentConfig"])
      unless validator.valid?(placement_type)
        fail ArgumentError, "invalid value for 'placement_type', must be one of #{validator.allowable_values}."
      end
      @placement_type = placement_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          placement_type == o.placement_type &&
          data_network_ids == o.data_network_ids &&
          host_id == o.host_id &&
          management_network_id == o.management_network_id &&
          vc_id == o.vc_id &&
          storage_id == o.storage_id &&
          default_gateway_addresses == o.default_gateway_addresses &&
          management_port_subnets == o.management_port_subnets &&
          hostname == o.hostname &&
          compute_id == o.compute_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [placement_type, data_network_ids, host_id, management_network_id, vc_id, storage_id, default_gateway_addresses, management_port_subnets, hostname, compute_id].hash
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
