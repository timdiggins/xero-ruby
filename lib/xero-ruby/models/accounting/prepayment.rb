=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.8.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class Prepayment
    # See Prepayment Types
    attr_accessor :type
    RECEIVE_PREPAYMENT = "RECEIVE-PREPAYMENT".freeze
    SPEND_PREPAYMENT = "SPEND-PREPAYMENT".freeze
    ARPREPAYMENT = "ARPREPAYMENT".freeze
    APPREPAYMENT = "APPREPAYMENT".freeze
    

    attr_accessor :contact
    
    # The date the prepayment is created YYYY-MM-DD
    attr_accessor :date
    
    # See Prepayment Status Codes
    attr_accessor :status
    AUTHORISED = "AUTHORISED".freeze
    PAID = "PAID".freeze
    VOIDED = "VOIDED".freeze
    

    attr_accessor :line_amount_types
    
    # See Prepayment Line Items
    attr_accessor :line_items
    
    # The subtotal of the prepayment excluding taxes
    attr_accessor :sub_total
    
    # The total tax on the prepayment
    attr_accessor :total_tax
    
    # The total of the prepayment(subtotal + total tax)
    attr_accessor :total
    
    # Returns Invoice number field. Reference field isn't available.
    attr_accessor :reference
    
    # UTC timestamp of last update to the prepayment
    attr_accessor :updated_date_utc
    

    attr_accessor :currency_code
    
    # Xero generated unique identifier
    attr_accessor :prepayment_id
    
    # The currency rate for a multicurrency prepayment. If no rate is specified, the XE.com day rate is used
    attr_accessor :currency_rate
    
    # The remaining credit balance on the prepayment
    attr_accessor :remaining_credit
    
    # See Allocations
    attr_accessor :allocations
    
    # The amount of applied to an invoice
    attr_accessor :applied_amount
    
    # boolean to indicate if a prepayment has an attachment
    attr_accessor :has_attachments
    
    # See Attachments
    attr_accessor :attachments
    
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
        :'type' => :'Type',
        :'contact' => :'Contact',
        :'date' => :'Date',
        :'status' => :'Status',
        :'line_amount_types' => :'LineAmountTypes',
        :'line_items' => :'LineItems',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'reference' => :'Reference',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'currency_code' => :'CurrencyCode',
        :'prepayment_id' => :'PrepaymentID',
        :'currency_rate' => :'CurrencyRate',
        :'remaining_credit' => :'RemainingCredit',
        :'allocations' => :'Allocations',
        :'applied_amount' => :'AppliedAmount',
        :'has_attachments' => :'HasAttachments',
        :'attachments' => :'Attachments'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'contact' => :'Contact',
        :'date' => :'Date',
        :'status' => :'String',
        :'line_amount_types' => :'LineAmountTypes',
        :'line_items' => :'Array<LineItem>',
        :'sub_total' => :'BigDecimal',
        :'total_tax' => :'BigDecimal',
        :'total' => :'BigDecimal',
        :'reference' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'currency_code' => :'CurrencyCode',
        :'prepayment_id' => :'String',
        :'currency_rate' => :'BigDecimal',
        :'remaining_credit' => :'BigDecimal',
        :'allocations' => :'Array<Allocation>',
        :'applied_amount' => :'Float',
        :'has_attachments' => :'Boolean',
        :'attachments' => :'Array<Attachment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Prepayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Prepayment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'prepayment_id')
        self.prepayment_id = attributes[:'prepayment_id']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'remaining_credit')
        self.remaining_credit = attributes[:'remaining_credit']
      end

      if attributes.key?(:'allocations')
        if (value = attributes[:'allocations']).is_a?(Array)
          self.allocations = value
        end
      end

      if attributes.key?(:'applied_amount')
        self.applied_amount = attributes[:'applied_amount']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["RECEIVE-PREPAYMENT", "SPEND-PREPAYMENT", "ARPREPAYMENT", "APPREPAYMENT"])
      return false unless type_validator.valid?(@type)
      status_validator = EnumAttributeValidator.new('String', ["AUTHORISED", "PAID", "VOIDED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["RECEIVE-PREPAYMENT", "SPEND-PREPAYMENT", "ARPREPAYMENT", "APPREPAYMENT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["AUTHORISED", "PAID", "VOIDED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          contact == o.contact &&
          date == o.date &&
          status == o.status &&
          line_amount_types == o.line_amount_types &&
          line_items == o.line_items &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          reference == o.reference &&
          updated_date_utc == o.updated_date_utc &&
          currency_code == o.currency_code &&
          prepayment_id == o.prepayment_id &&
          currency_rate == o.currency_rate &&
          remaining_credit == o.remaining_credit &&
          allocations == o.allocations &&
          applied_amount == o.applied_amount &&
          has_attachments == o.has_attachments &&
          attachments == o.attachments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, contact, date, status, line_amount_types, line_items, sub_total, total_tax, total, reference, updated_date_utc, currency_code, prepayment_id, currency_rate, remaining_credit, allocations, applied_amount, has_attachments, attachments].hash
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
