using System;

namespace Wss.Foundation.Designer.Command
{
    /// <summary>
    ///     ��������߳�����
    /// </summary>
    public abstract class Command
    {
        /// <summary>
        ///     ����
        /// </summary>
        /// <param name="mgr">���������</param>
        /// <param name="param">�������</param>
        /// <returns>��Ҫ�����������true������Ҫ�ķ���false</returns>
        public abstract Boolean Run(CommandManager mgr, params object[] param);

        /// <summary>
        ///     �����ƶ�����
        /// </summary>
        /// <param name="mgr"></param>
        /// <param name="param"></param>
        /// <returns>��Ҫ�ָ��������true������Ҫ�ķ���false</returns>
        public abstract Boolean UnRun(CommandManager mgr);

        //��������
        public abstract Boolean ReRun(CommandManager mgr);
    }
}