/*
  Copyright 2010-2017 BusinessCode GmbH, Germany

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/
/**
 *
 */
package de.businesscode.bcdui.menu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;

import org.apache.log4j.Logger;

import de.businesscode.bcdui.menu.config.Menu;

/**
 *
 * The servlet gets menu document by given over menuId or &lt;Empty/&gt;
 * if the menu missed
 *
 */
public class MenuServlet extends HttpServlet {


  private static final long serialVersionUID = 472884415395811048L;
  private static final Logger log = Logger.getLogger(MenuServlet.class);

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    servRequest(req, resp);
  }

  /**
   * serves request
   */
  protected void servRequest(HttpServletRequest req, HttpServletResponse res){
    try {
      String menuId = req.getParameter("menuId");
      res.setContentType("text/xml");
      res.setCharacterEncoding("UTF-8");
      boolean isCreated=false;
      Menu menu = Menus.getInstance().getMenuByIdOrDefault(menuId);
      if(menu != null){
        JAXBContext jc = JAXBContext.newInstance(Menu.class.getPackage().getName());
        Marshaller mar = jc.createMarshaller();
        mar.marshal(menu, res.getOutputStream());
        isCreated=true;
      }
      else{
        log.trace("Menu with menuId:" + menuId +" does not exist");
        if(Menus.getInstance().isEmpty())
          log.trace("The Menu map is empty, check your configuration");
      }

      if(! isCreated){
        res.getOutputStream().print("<Empty/>");
      }
    } catch (Exception e) {
      log.info("Exception by reading menu files", e);
    }
  }
}
