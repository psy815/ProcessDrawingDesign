using System.Collections.Generic;
using System.Linq;
using System.Windows.Controls;
using Wss.Foundation.Controls;

namespace Wss.Foundation.Designer.Command
{
    /// <summary>
    ///     ������ ����
    /// </summary>
    public class CommandAlignTop : Command
    {
        private List<DesignerContainer> m_delist;
        private List<double> m_delt;
        private double m_newplace;
        private List<double> m_newPlaceList;
        private double m_oldplace;
        private List<double> m_oldPlaceList;

        public override bool Run(CommandManager mgr, params object[] param)
        {
            var items = param[0] as IEnumerable<DesignerContainer>;
            m_delist = items.ToList();

            if (items.Count() > 1)
            {
                //��������ͼԪ��λ��
                var top = Canvas.GetTop(items.First());

                foreach (var item in items)
                {
                    //��¼ÿ��ͼԪ���������λ�ò�
                    var delta = top - Canvas.GetTop(item);
                    //��¼ÿ��ͼԪ��ԭ����λ��
                    m_oldplace = Canvas.GetTop(item);

                    if (m_oldPlaceList == null)
                    {
                        m_oldPlaceList = new List<double>();
                    }
                    if (m_delt == null)
                    {
                        m_delt = new List<double>();
                    }
                    m_delt.Add(delta);

                    m_oldPlaceList.Add(m_oldplace);
                    foreach (DesignerContainer di in mgr.CurrentCanvas.SelectionService.GetGroupMembers(item))
                    {
                        Canvas.SetTop(di, Canvas.GetTop(di) + delta);
                        //��¼ÿ��ͼԪ���µ�λ��
                        m_newplace = Canvas.GetTop(di) + delta;
                        if (m_newPlaceList == null)
                        {
                            m_newPlaceList = new List<double>();
                        }
                        m_newPlaceList.Add(m_newplace);
                    }
                }
                return true;
            }
            return false;
        }

        public override bool UnRun(CommandManager mgr)
        {
            if (m_delist.Count > 0)
            {
                DesignerContainer di = null;
                for (var i = 0; i <= m_delist.Count - 1; i++)
                {
                    di = m_delist[i];
                    if (di != null)
                    {
                        Canvas.SetTop(di, m_oldPlaceList[i]);
                    }
                }

                return true;
            }
            return false;
        }

        public override bool ReRun(CommandManager mgr)
        {
            if (m_delist.Count > 0)
            {
                DesignerContainer di = null;
                for (var i = m_delist.Count - 1; i > -1; i--)
                {
                    di = m_delist[i];
                    if (di != null)
                    {
                        Canvas.SetTop(di, m_newPlaceList[i] - m_delt[i]);
                    }
                }

                return true;
            }
            return false;
        }

        public static void Run(CommandManager cmgr, IEnumerable<DesignerContainer> items)
        {
            cmgr.Run<CommandAlignTop>(items);
        }
    }
}