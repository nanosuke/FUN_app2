JLayeredPane getLayeredPanel() {  // パネル
  PSurfaceAWT.SmoothCanvas canvas;
  canvas = (PSurfaceAWT.SmoothCanvas)getSurface().getNative();
  return(JLayeredPane)canvas.getParent().getParent();
}
