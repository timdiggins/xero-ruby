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

  class Contact
    # Xero identifier
    attr_accessor :contact_id
    
    # This can be updated via the API only i.e. This field is read only on the Xero contact screen, used to identify contacts in external systems (max length = 50). If the Contact Number is used, this is displayed as Contact Code in the Contacts UI in Xero.
    attr_accessor :contact_number
    
    # A user defined account number. This can be updated via the API and the Xero UI (max length = 50)
    attr_accessor :account_number
    
    # Current status of a contact – see contact status types
    attr_accessor :contact_status
    ACTIVE = "ACTIVE".freeze
    ARCHIVED = "ARCHIVED".freeze
    GDPRREQUEST = "GDPRREQUEST".freeze
    
    # Full name of contact/organisation (max length = 255)
    attr_accessor :name
    
    # First name of contact person (max length = 255)
    attr_accessor :first_name
    
    # Last name of contact person (max length = 255)
    attr_accessor :last_name
    
    # Email address of contact person (umlauts not supported) (max length  = 255)
    attr_accessor :email_address
    
    # Skype user name of contact
    attr_accessor :skype_user_name
    
    # See contact persons
    attr_accessor :contact_persons
    
    # Bank account number of contact
    attr_accessor :bank_account_details
    
    # Tax number of contact – this is also known as the ABN (Australia), GST Number (New Zealand), VAT Number (UK) or Tax ID Number (US and global) in the Xero UI depending on which regionalized version of Xero you are using (max length = 50)
    attr_accessor :tax_number
    
    # The tax type from TaxRates
    attr_accessor :accounts_receivable_tax_type
    
    # The tax type from TaxRates
    attr_accessor :accounts_payable_tax_type
    
    # Store certain address types for a contact – see address types
    attr_accessor :addresses
    
    # Store certain phone types for a contact – see phone types
    attr_accessor :phones
    
    # true or false – Boolean that describes if a contact that has any AP  invoices entered against them. Cannot be set via PUT or POST – it is automatically set when an accounts payable invoice is generated against this contact.
    attr_accessor :is_supplier
    
    # true or false – Boolean that describes if a contact has any AR invoices entered against them. Cannot be set via PUT or POST – it is automatically set when an accounts receivable invoice is generated against this contact.
    attr_accessor :is_customer
    

    attr_accessor :default_currency
    
    # Store XeroNetworkKey for contacts.
    attr_accessor :xero_network_key
    
    # The default sales account code for contacts
    attr_accessor :sales_default_account_code
    
    # The default purchases account code for contacts
    attr_accessor :purchases_default_account_code
    
    # The default sales tracking categories for contacts
    attr_accessor :sales_tracking_categories
    
    # The default purchases tracking categories for contacts
    attr_accessor :purchases_tracking_categories
    
    # The name of the Tracking Category assigned to the contact under SalesTrackingCategories and PurchasesTrackingCategories
    attr_accessor :tracking_category_name
    
    # The name of the Tracking Option assigned to the contact under SalesTrackingCategories and PurchasesTrackingCategories
    attr_accessor :tracking_category_option
    

    attr_accessor :payment_terms
    
    # UTC timestamp of last update to contact
    attr_accessor :updated_date_utc
    
    # Displays which contact groups a contact is included in
    attr_accessor :contact_groups
    
    # Website address for contact (read only)
    attr_accessor :website
    

    attr_accessor :branding_theme
    

    attr_accessor :batch_payments
    
    # The default discount rate for the contact (read only)
    attr_accessor :discount
    

    attr_accessor :balances
    
    # Displays array of attachments from the API
    attr_accessor :attachments
    
    # A boolean to indicate if a contact has an attachment
    attr_accessor :has_attachments
    
    # Displays validation errors returned from the API
    attr_accessor :validation_errors
    
    # A boolean to indicate if a contact has an validation errors
    attr_accessor :has_validation_errors
    
    # Status of object
    attr_accessor :status_attribute_string
    
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
        :'contact_id' => :'ContactID',
        :'contact_number' => :'ContactNumber',
        :'account_number' => :'AccountNumber',
        :'contact_status' => :'ContactStatus',
        :'name' => :'Name',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'email_address' => :'EmailAddress',
        :'skype_user_name' => :'SkypeUserName',
        :'contact_persons' => :'ContactPersons',
        :'bank_account_details' => :'BankAccountDetails',
        :'tax_number' => :'TaxNumber',
        :'accounts_receivable_tax_type' => :'AccountsReceivableTaxType',
        :'accounts_payable_tax_type' => :'AccountsPayableTaxType',
        :'addresses' => :'Addresses',
        :'phones' => :'Phones',
        :'is_supplier' => :'IsSupplier',
        :'is_customer' => :'IsCustomer',
        :'default_currency' => :'DefaultCurrency',
        :'xero_network_key' => :'XeroNetworkKey',
        :'sales_default_account_code' => :'SalesDefaultAccountCode',
        :'purchases_default_account_code' => :'PurchasesDefaultAccountCode',
        :'sales_tracking_categories' => :'SalesTrackingCategories',
        :'purchases_tracking_categories' => :'PurchasesTrackingCategories',
        :'tracking_category_name' => :'TrackingCategoryName',
        :'tracking_category_option' => :'TrackingCategoryOption',
        :'payment_terms' => :'PaymentTerms',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'contact_groups' => :'ContactGroups',
        :'website' => :'Website',
        :'branding_theme' => :'BrandingTheme',
        :'batch_payments' => :'BatchPayments',
        :'discount' => :'Discount',
        :'balances' => :'Balances',
        :'attachments' => :'Attachments',
        :'has_attachments' => :'HasAttachments',
        :'validation_errors' => :'ValidationErrors',
        :'has_validation_errors' => :'HasValidationErrors',
        :'status_attribute_string' => :'StatusAttributeString'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact_id' => :'String',
        :'contact_number' => :'String',
        :'account_number' => :'String',
        :'contact_status' => :'String',
        :'name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email_address' => :'String',
        :'skype_user_name' => :'String',
        :'contact_persons' => :'Array<ContactPerson>',
        :'bank_account_details' => :'String',
        :'tax_number' => :'String',
        :'accounts_receivable_tax_type' => :'String',
        :'accounts_payable_tax_type' => :'String',
        :'addresses' => :'Array<Address>',
        :'phones' => :'Array<Phone>',
        :'is_supplier' => :'Boolean',
        :'is_customer' => :'Boolean',
        :'default_currency' => :'CurrencyCode',
        :'xero_network_key' => :'String',
        :'sales_default_account_code' => :'String',
        :'purchases_default_account_code' => :'String',
        :'sales_tracking_categories' => :'Array<SalesTrackingCategory>',
        :'purchases_tracking_categories' => :'Array<SalesTrackingCategory>',
        :'tracking_category_name' => :'String',
        :'tracking_category_option' => :'String',
        :'payment_terms' => :'PaymentTerm',
        :'updated_date_utc' => :'DateTime',
        :'contact_groups' => :'Array<ContactGroup>',
        :'website' => :'String',
        :'branding_theme' => :'BrandingTheme',
        :'batch_payments' => :'BatchPaymentDetails',
        :'discount' => :'BigDecimal',
        :'balances' => :'Balances',
        :'attachments' => :'Array<Attachment>',
        :'has_attachments' => :'Boolean',
        :'validation_errors' => :'Array<ValidationError>',
        :'has_validation_errors' => :'Boolean',
        :'status_attribute_string' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Contact` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Contact`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.key?(:'contact_number')
        self.contact_number = attributes[:'contact_number']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'contact_status')
        self.contact_status = attributes[:'contact_status']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'skype_user_name')
        self.skype_user_name = attributes[:'skype_user_name']
      end

      if attributes.key?(:'contact_persons')
        if (value = attributes[:'contact_persons']).is_a?(Array)
          self.contact_persons = value
        end
      end

      if attributes.key?(:'bank_account_details')
        self.bank_account_details = attributes[:'bank_account_details']
      end

      if attributes.key?(:'tax_number')
        self.tax_number = attributes[:'tax_number']
      end

      if attributes.key?(:'accounts_receivable_tax_type')
        self.accounts_receivable_tax_type = attributes[:'accounts_receivable_tax_type']
      end

      if attributes.key?(:'accounts_payable_tax_type')
        self.accounts_payable_tax_type = attributes[:'accounts_payable_tax_type']
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'phones')
        if (value = attributes[:'phones']).is_a?(Array)
          self.phones = value
        end
      end

      if attributes.key?(:'is_supplier')
        self.is_supplier = attributes[:'is_supplier']
      end

      if attributes.key?(:'is_customer')
        self.is_customer = attributes[:'is_customer']
      end

      if attributes.key?(:'default_currency')
        self.default_currency = attributes[:'default_currency']
      end

      if attributes.key?(:'xero_network_key')
        self.xero_network_key = attributes[:'xero_network_key']
      end

      if attributes.key?(:'sales_default_account_code')
        self.sales_default_account_code = attributes[:'sales_default_account_code']
      end

      if attributes.key?(:'purchases_default_account_code')
        self.purchases_default_account_code = attributes[:'purchases_default_account_code']
      end

      if attributes.key?(:'sales_tracking_categories')
        if (value = attributes[:'sales_tracking_categories']).is_a?(Array)
          self.sales_tracking_categories = value
        end
      end

      if attributes.key?(:'purchases_tracking_categories')
        if (value = attributes[:'purchases_tracking_categories']).is_a?(Array)
          self.purchases_tracking_categories = value
        end
      end

      if attributes.key?(:'tracking_category_name')
        self.tracking_category_name = attributes[:'tracking_category_name']
      end

      if attributes.key?(:'tracking_category_option')
        self.tracking_category_option = attributes[:'tracking_category_option']
      end

      if attributes.key?(:'payment_terms')
        self.payment_terms = attributes[:'payment_terms']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'contact_groups')
        if (value = attributes[:'contact_groups']).is_a?(Array)
          self.contact_groups = value
        end
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'branding_theme')
        self.branding_theme = attributes[:'branding_theme']
      end

      if attributes.key?(:'batch_payments')
        self.batch_payments = attributes[:'batch_payments']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'balances')
        self.balances = attributes[:'balances']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end

      if attributes.key?(:'has_validation_errors')
        self.has_validation_errors = attributes[:'has_validation_errors']
      else
        self.has_validation_errors = false
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@contact_number.nil? && @contact_number.to_s.length > 50
        invalid_properties.push('invalid value for "contact_number", the character length must be smaller than or equal to 50.')
      end

      if !@account_number.nil? && @account_number.to_s.length > 50
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 50.')
      end

      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 255
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 255.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 255
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 255.')
      end

      if !@email_address.nil? && @email_address.to_s.length > 255
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 255.')
      end

      if !@tax_number.nil? && @tax_number.to_s.length > 50
        invalid_properties.push('invalid value for "tax_number", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@contact_number.nil? && @contact_number.to_s.length > 50
      return false if !@account_number.nil? && @account_number.to_s.length > 50
      contact_status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "ARCHIVED", "GDPRREQUEST"])
      return false unless contact_status_validator.valid?(@contact_status)
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@first_name.nil? && @first_name.to_s.length > 255
      return false if !@last_name.nil? && @last_name.to_s.length > 255
      return false if !@email_address.nil? && @email_address.to_s.length > 255
      return false if !@tax_number.nil? && @tax_number.to_s.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_number Value to be assigned
    def contact_number=(contact_number)
      if !contact_number.nil? && contact_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "contact_number", the character length must be smaller than or equal to 50.'
      end

      @contact_number = contact_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if !account_number.nil? && account_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 50.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contact_status Object to be assigned
    def contact_status=(contact_status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "ARCHIVED", "GDPRREQUEST"])
      unless validator.valid?(contact_status)
        fail ArgumentError, "invalid value for \"contact_status\", must be one of #{validator.allowable_values}."
      end
      @contact_status = contact_status
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 255.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 255.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if !email_address.nil? && email_address.to_s.length > 255
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 255.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_number Value to be assigned
    def tax_number=(tax_number)
      if !tax_number.nil? && tax_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "tax_number", the character length must be smaller than or equal to 50.'
      end

      @tax_number = tax_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact_id == o.contact_id &&
          contact_number == o.contact_number &&
          account_number == o.account_number &&
          contact_status == o.contact_status &&
          name == o.name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email_address == o.email_address &&
          skype_user_name == o.skype_user_name &&
          contact_persons == o.contact_persons &&
          bank_account_details == o.bank_account_details &&
          tax_number == o.tax_number &&
          accounts_receivable_tax_type == o.accounts_receivable_tax_type &&
          accounts_payable_tax_type == o.accounts_payable_tax_type &&
          addresses == o.addresses &&
          phones == o.phones &&
          is_supplier == o.is_supplier &&
          is_customer == o.is_customer &&
          default_currency == o.default_currency &&
          xero_network_key == o.xero_network_key &&
          sales_default_account_code == o.sales_default_account_code &&
          purchases_default_account_code == o.purchases_default_account_code &&
          sales_tracking_categories == o.sales_tracking_categories &&
          purchases_tracking_categories == o.purchases_tracking_categories &&
          tracking_category_name == o.tracking_category_name &&
          tracking_category_option == o.tracking_category_option &&
          payment_terms == o.payment_terms &&
          updated_date_utc == o.updated_date_utc &&
          contact_groups == o.contact_groups &&
          website == o.website &&
          branding_theme == o.branding_theme &&
          batch_payments == o.batch_payments &&
          discount == o.discount &&
          balances == o.balances &&
          attachments == o.attachments &&
          has_attachments == o.has_attachments &&
          validation_errors == o.validation_errors &&
          has_validation_errors == o.has_validation_errors &&
          status_attribute_string == o.status_attribute_string
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contact_id, contact_number, account_number, contact_status, name, first_name, last_name, email_address, skype_user_name, contact_persons, bank_account_details, tax_number, accounts_receivable_tax_type, accounts_payable_tax_type, addresses, phones, is_supplier, is_customer, default_currency, xero_network_key, sales_default_account_code, purchases_default_account_code, sales_tracking_categories, purchases_tracking_categories, tracking_category_name, tracking_category_option, payment_terms, updated_date_utc, contact_groups, website, branding_theme, batch_payments, discount, balances, attachments, has_attachments, validation_errors, has_validation_errors, status_attribute_string].hash
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
