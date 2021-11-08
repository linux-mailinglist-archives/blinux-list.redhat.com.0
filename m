Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D311E447CEA
	for <lists+blinux-list@lfdr.de>; Mon,  8 Nov 2021 10:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636364131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=4IWJwFhjdkRFeL91Wsz+HqQzj8WLIznOG9Gl+o0dL80=;
	b=O3G90WKtsII+1i1DWaX8vRj9l84GHwHaXvE81HN6EfyAmgCojnSM12rY/tJzgNs82Vt3RX
	uG0IWidjEWY5aYBq3fWBCoP8nrKqQY/U0qmP8snyWGdeva+RiiaRurqVuQCWCJnLsxy1NQ
	mbqBwmeSaRf1mga3OiQ7PbdjtqQhpyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-qfA5XONLOAqE9lCrtRIwlQ-1; Mon, 08 Nov 2021 04:35:28 -0500
X-MC-Unique: qfA5XONLOAqE9lCrtRIwlQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8781487D541;
	Mon,  8 Nov 2021 09:35:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43B49708E0;
	Mon,  8 Nov 2021 09:35:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5616180BAD1;
	Mon,  8 Nov 2021 09:35:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A89Z2ht030113 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 04:35:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7D6D12026D67; Mon,  8 Nov 2021 09:35:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79A522026D48
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 09:34:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D713D106655B
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 09:34:57 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-237-v66PbQLrO5e3QCebvQebKw-1; Mon, 08 Nov 2021 04:34:55 -0500
X-MC-Unique: v66PbQLrO5e3QCebvQebKw-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	B8EBE2978CB8_188EDF6B
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 09:29:26 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
	6789029761CA_188EDF6F
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 09:29:26 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 5DA97274C9
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 11:29:26 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id T9fR9CR0bedW for <blinux-list@redhat.com>;
	Mon,  8 Nov 2021 11:29:26 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 11:29:26 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1mk0xx-00032p-U7
	for blinux-list@redhat.com; Mon, 08 Nov 2021 11:29:26 +0200
Date: Mon, 8 Nov 2021 11:29:25 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: blinux-list@redhat.com
Subject: anonymous postings was not so in the past
Message-ID: <alpine.DEB.2.21.1.2111081126290.11628@willempc.meraka.csir.co.za>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="8323329-1166774508-1636363765=:11628"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-1166774508-1636363765=:11628
Content-Type: text/plain; CHARSET=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

See the message below.
I personally would much prefer it if they change back the mailman settings=
=20
as it was in the message below.
Regards, Willem


---------- Forwarded message ----------
Date: Tue, 16 Dec 2003 17:35:28 +0100
From: Kristoffer Gustafsson <kristoffer.gustafsson@telia.com>
Reply-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: SV: ViaVoice for Linux Kiosks

     Hello!
  you can get viavoice from here

http://www.ecn.purdue.edu/~laird/Linux/ViaVoice/

  hope this helps.



kristoffer




   -----Ursprungligt meddelande-----
   Fr=C3=A5n: blinux-list-admin@redhat.com
[mailto:blinux-list-admin@redhat.com]F=C3=B6r mayank tyagi
   Skickat: den 16 december 2003 18:45
   Till: blinux-list@redhat.com
   =C3=84mne: ViaVoice for Linux Kiosks


   Hey all,


   I am a new member on the board...

   I am making a Linux kiosk and i want to voice enable it. i.e i want the
machine to "talk back" to the user when he/she selects something from the
menu on the touch screen.

   From what i have gathered from reading the literature on tne net, i need
to download the ViaVoice outloud libraries and use the TTS when i want my
application to "talk back".

   But i couldnot find the place from where i can download these libraies.

   Can someone tell me whats the procedure like?

   I appreciate ya all..

   mIKe






--8323329-1166774508-1636363765=:11628
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--8323329-1166774508-1636363765=:11628--

