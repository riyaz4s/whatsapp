enum TabIndex {
  CAMMERA, CHATS, STATUS, CALLS
}
class SwitchTabsEvent {
 TabIndex tabIndex;
 SwitchTabsEvent({
   this.tabIndex
 });
}