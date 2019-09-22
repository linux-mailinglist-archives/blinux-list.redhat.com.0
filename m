Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D260DBA35A
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2019 19:37:46 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8846610DCC83;
	Sun, 22 Sep 2019 17:37:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3DEB5C21F;
	Sun, 22 Sep 2019 17:37:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8D754E58A;
	Sun, 22 Sep 2019 17:37:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MHaZ0I018335 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 13:36:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AAABC19C58; Sun, 22 Sep 2019 17:36:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx19.extmail.prod.ext.phx2.redhat.com
	[10.5.110.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A557019C4F
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 17:36:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 18860307D8E3
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 17:36:32 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46bvl31x6nz1Dly
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 13:36:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46bvl30lrRzcbR; Sun, 22 Sep 2019 13:36:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46bvl30QGbzcbQ
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 13:36:31 -0400 (EDT)
Date: Sun, 22 Sep 2019 13:36:30 -0400
To: blinux-list@redhat.com
Subject: [Slint] chromium with chromevox setup notes (fwd)
Message-ID: <alpine.NEB.2.21.1909221336190.10288@panix1.panix.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.48]); Sun, 22 Sep 2019 17:36:32 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]);
	Sun, 22 Sep 2019 17:36:32 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.48
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]); Sun, 22 Sep 2019 17:37:45 +0000 (UTC)



-- 


---------- Forwarded message ----------
Date: Mon, 13 May 2019 22:38:25
From: Jude DaShiell <jdashiel@panix.com>
Reply-To: List for Slint users and contributors <slint@slint.fr>
To: slint@slint.fr
Subject: [Slint] chromium with chromevox setup notes

These are by way of a couple post-install notes for making chromium
workable enough to log into google.  The default language that will come
up will be africans so this may need adjustment.  f10 followed by two left
arrows and enter gets you into options.  Tab until you land on voices
combo box and then down arrow onto the language you want and hit space.
Tab out of voices box and into key maps box.  Classic is the default and
this will not be good so down arrow until flat comes up and hit space then
tab to reset current key map and hit enter on that button.  Then if you
can find a close button and get onto a search bar key in the google url
and try signing in.  You'll know if you have the classic key map in effect
if you have an s character anywhere in your gmail address or password
since that s key will toggle start and stop selection in the middle of
your editing and thoroughly break your edit session.  I ended up doing a
little experimentation and found this out.  I don't know what the other
two key maps will do either since I didn't check them out yet.  With these
steps, I was able to use chromium and chromevox and log into google so
figured to pass these along.



--


_______________________________________________
Slint mailing list
Slint@slint.fr
http://slint.fr/mailman/listinfo/slint_slint.fr

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
