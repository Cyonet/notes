/**
 * 事件订阅
 * @type {Class}
 */
class EventEmitter {
  events = {};
  on(type, listener) {
    const listeners = this.events[type] || (this.events[type] = []);
    listeners.push(listener);
    return this.off(type, listener);
  }
  off(type, listener) {
    const listeners = this.events[type] || [];
    this.events[type] = listeners.filter(i => i !== listener);
  }
  emit(type, ...arg) {
    const listeners = this.events[type] || [];
    listeners.forEach(i => i(arg));
  }
}

export EventEmitter;

export default new EventEmitter;
