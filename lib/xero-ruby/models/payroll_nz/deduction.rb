=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.8.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class Deduction
    # The Xero identifier for Deduction
    attr_accessor :deduction_id
    
    # Name of the deduction
    attr_accessor :deduction_name
    
    # Deduction Category type
    attr_accessor :deduction_category
    PAYROLL_GIVING = "PayrollGiving".freeze
    KIWI_SAVER_VOLUNTARY_CONTRIBUTIONS = "KiwiSaverVoluntaryContributions".freeze
    SUPERANNUATION = "Superannuation".freeze
    NZ_OTHER = "NzOther".freeze
    
    # Xero identifier for Liability Account
    attr_accessor :liability_account_id
    
    # Identifier of a record is active or not.
    attr_accessor :current_record
    
    # Standard amount of the deduction.
    attr_accessor :standard_amount
    
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
        :'deduction_id' => :'deductionId',
        :'deduction_name' => :'deductionName',
        :'deduction_category' => :'deductionCategory',
        :'liability_account_id' => :'liabilityAccountId',
        :'current_record' => :'currentRecord',
        :'standard_amount' => :'standardAmount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'deduction_id' => :'String',
        :'deduction_name' => :'String',
        :'deduction_category' => :'String',
        :'liability_account_id' => :'String',
        :'current_record' => :'Boolean',
        :'standard_amount' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::Deduction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::Deduction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'deduction_id')
        self.deduction_id = attributes[:'deduction_id']
      end

      if attributes.key?(:'deduction_name')
        self.deduction_name = attributes[:'deduction_name']
      end

      if attributes.key?(:'deduction_category')
        self.deduction_category = attributes[:'deduction_category']
      end

      if attributes.key?(:'liability_account_id')
        self.liability_account_id = attributes[:'liability_account_id']
      end

      if attributes.key?(:'current_record')
        self.current_record = attributes[:'current_record']
      end

      if attributes.key?(:'standard_amount')
        self.standard_amount = attributes[:'standard_amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @deduction_name.nil?
        invalid_properties.push('invalid value for "deduction_name", deduction_name cannot be nil.')
      end

      if @deduction_category.nil?
        invalid_properties.push('invalid value for "deduction_category", deduction_category cannot be nil.')
      end

      if @liability_account_id.nil?
        invalid_properties.push('invalid value for "liability_account_id", liability_account_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @deduction_name.nil?
      return false if @deduction_category.nil?
      deduction_category_validator = EnumAttributeValidator.new('String', ["PayrollGiving", "KiwiSaverVoluntaryContributions", "Superannuation", "NzOther"])
      return false unless deduction_category_validator.valid?(@deduction_category)
      return false if @liability_account_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deduction_category Object to be assigned
    def deduction_category=(deduction_category)
      validator = EnumAttributeValidator.new('String', ["PayrollGiving", "KiwiSaverVoluntaryContributions", "Superannuation", "NzOther"])
      unless validator.valid?(deduction_category)
        fail ArgumentError, "invalid value for \"deduction_category\", must be one of #{validator.allowable_values}."
      end
      @deduction_category = deduction_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          deduction_id == o.deduction_id &&
          deduction_name == o.deduction_name &&
          deduction_category == o.deduction_category &&
          liability_account_id == o.liability_account_id &&
          current_record == o.current_record &&
          standard_amount == o.standard_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [deduction_id, deduction_name, deduction_category, liability_account_id, current_record, standard_amount].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
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
        XeroRuby::PayrollNz.const_get(type).build_from_hash(value)
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
        value.compact.map { |v| _to_hash(v) }
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end
