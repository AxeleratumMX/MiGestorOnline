interface NavAttributes {
  [propName: string]: any;
}
interface NavWrapper {
  attributes: NavAttributes;
  element: string;
}
interface NavBadge {
  text: string;
  variant: string;
}
interface NavLabel {
  class?: string;
  variant: string;
}

export interface NavData {
  name?: string;
  url?: string;
  icon?: string;
  badge?: NavBadge;
  title?: boolean;
  children?: NavData[];
  variant?: string;
  attributes?: NavAttributes;
  divider?: boolean;
  class?: string;
  label?: NavLabel;
  wrapper?: NavWrapper;
}

export const navItems: NavData[] = [
  {
    name: 'MEDIACIONES',
   icon:'icon-menu'
   
  },
  {
    name: '',
  },
  {
    name: 'REALIZADAS',
    //url: '/theme/colors',
    icon: 'icon-check'
  },
  {
    name: 'CON CONVENIO',
    //url: '/theme/colors',
     icon: 'icon-folder-alt'
  },  
  {
    name: 'PENDIENTES',
    //url: '/theme/colors',
    icon: 'icon-clock'
  },
  {
    name: 'ABANDONADAS',
    //url: '/theme/colors',
    icon: 'icon-logout'
  },
  {
    name: 'NUEVA',
    //url: '/theme/colors',
    icon: 'icon-plus'
  },
  {
    name: 'METRICAS',
    //url: '/theme/colors',
    icon: 'icon-graph'
  },
  {
    name: 'HISTORIAL',
  //  url: '/base',
    icon: 'icon-book-open',
    children: [
      {
        name: 'Gestor',
        //url: '/base/cards',
        icon: 'icon-people'
      },
      {
        name: 'Agenda',
        //url: '/base/carousels',
        icon: 'icon-calendar'
      },
      {
        name: 'Videollamada',
        //url: '/base/collapses',
        icon: 'icon-camera'
      }
    ]
    }
  
  /*
  {
    name: 'Base',
    url: '/base',
    icon: 'icon-puzzle',
    children: [
      {
        name: 'Cards',
        url: '/base/cards',
        icon: 'icon-puzzle'
      },
      {
        name: 'Carousels',
        url: '/base/carousels',
        icon: 'icon-puzzle'
      },
      {
        name: 'Collapses',
        url: '/base/collapses',
        icon: 'icon-puzzle'
      },
      {
        name: 'Forms',
        url: '/base/forms',
        icon: 'icon-puzzle'
      },
      {
        name: 'Pagination',
        url: '/base/paginations',
        icon: 'icon-puzzle'
      },
      {
        name: 'Popovers',
        url: '/base/popovers',
        icon: 'icon-puzzle'
      },
      {
        name: 'Progress',
        url: '/base/progress',
        icon: 'icon-puzzle'
      },
      {
        name: 'Switches',
        url: '/base/switches',
        icon: 'icon-puzzle'
      },
      {
        name: 'Tables',
        url: '/base/tables',
        icon: 'icon-puzzle'
      },
      {
        name: 'Tabs',
        url: '/base/tabs',
        icon: 'icon-puzzle'
      },
      {
        name: 'Tooltips',
        url: '/base/tooltips',
        icon: 'icon-puzzle'
      }
    ]
  }
  */
];
