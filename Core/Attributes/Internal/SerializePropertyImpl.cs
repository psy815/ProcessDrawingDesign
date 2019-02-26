using System;
using System.ComponentModel;

namespace Wss.FoundationCore.Attributes.Internal
{
    internal class SerializePropertyImpl : ISerializeProperty
    {
        private string _name;
        public Type OwnerType { get; set; }

        /// <summary>
        ///     ����������
        /// </summary>
        public object Owner { get; set; }

        /// <summary>
        ///     ������Ϣ
        /// </summary>
        public PropertyDescriptor Descriptor { get; set; }

        /// <summary>
        ///     ����ֵ����ת����
        /// </summary>
        public TypeConverter Converter { get; set; }

        public string Name
        {
            get
            {
                if (_name == null && Descriptor != null && OwnerType != null)
                {
                    _name = Descriptor.ComponentType == OwnerType
                        ? Descriptor.Name
                        : Descriptor.ComponentType.Name + "." + Descriptor.Name;
                }
                return _name;
            }
        }
        private string _guid;
        public string guid
        {
            get
            {
                return _guid;
            }

            set
            {
                _guid = value;
            }
        }

        public object GetValue()
        {
            return Descriptor.GetValue(Owner);
        }

        public void SetValue(object value)
        {
            Descriptor.SetValue(Owner, value);
        }

        /// <summary>
        /// ������ת��
        /// </summary>
        /// <param name="obj"></param>
        public virtual void CopyFrom(object obj)
        {
            var sp = (SerializePropertyImpl) obj;

            Converter = sp.Converter;
            Descriptor = sp.Descriptor;
            OwnerType = sp.OwnerType;
            Owner = sp.Owner;
        }

        public static SerializePropertyImpl Create(Type ownerType, PropertyDescriptor pd, TypeConverter converter)
        {
            return new SerializePropertyImpl
            {
                OwnerType = ownerType,
                Descriptor = pd,
                Converter = converter
            };
        }
    }
}