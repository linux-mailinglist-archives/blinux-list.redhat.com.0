Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 1850F5196F
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2019 19:22:00 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 390FC3082E6E;
	Mon, 24 Jun 2019 17:21:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BA685C238;
	Mon, 24 Jun 2019 17:21:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E93A1806B18;
	Mon, 24 Jun 2019 17:20:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5OHKEWC019865 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jun 2019 13:20:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 616B35C232; Mon, 24 Jun 2019 17:20:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BE7A5C236
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 17:20:12 +0000 (UTC)
Received: from omta02.suddenlink.net (omta02.suddenlink.net [208.180.40.72])
	by mx1.redhat.com (Postfix) with ESMTP id 0B9DB81F0D
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 17:19:41 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep02.suddenlink.net
	(InterMail vM.8.04.03.22.01 201-2389-100-168-20180813) with ESMTP
	id <20190624171935.HEWU7430.dalofep02.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 12:19:35 -0500
Received: from martin by wb5agz with local (Exim 4.89)
	(envelope-from <martin.m@suddenlink.net>) id 1hfScw-0000I3-8S
	for blinux-list@redhat.com; Mon, 24 Jun 2019 12:19:34 -0500
To: blinux-list@redhat.com
Subject: Some basic Pulseaudio Questions
MIME-Version: 1.0
Content-ID: <1117.1561396773.1@wb5agz>
Date: Mon, 24 Jun 2019 12:19:33 -0500
Message-Id: <E1hfScw-0000I3-8S@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep02.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Mon, 24 Jun 2019 12:19:35 -0500
X-CM-Analysis: v=2.3 cv=Cdh2G4jl c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=dq6fvYVFJ5YA:10 a=djXoE-JUuapqWdzFUWUA:9
	a=CjuIK1q_8ugA:10
X-CM-Envelope: MS4wfAq6tJGz8hEP6PCJwSthfHN4t7WtaJjeez17tLJT5bG4wfOEPncJSSWB9Pi4cLhGPvd4Pkoof97BT83OPnk8YNVYYKxgd+a0a1e4tOtBX+Nj4iISS8Mv
	bDC0H32vvxxkSyR/WnH0zGIo/BZKTjB2uE4eidw6UfAAjlTyjFXSI0PY
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.27]); Mon, 24 Jun 2019 17:19:50 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Mon, 24 Jun 2019 17:19:50 +0000 (UTC) for IP:'208.180.40.72'
	DOMAIN:'omta02.suddenlink.net' HELO:'omta02.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: -0.7  (RCVD_IN_DNSWL_LOW, SPF_HELO_NONE,
	SPF_PASS) 208.180.40.72 omta02.suddenlink.net
	208.180.40.72 omta02.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Mon, 24 Jun 2019 17:21:58 +0000 (UTC)

	Is it even worthwhile to get pulseaudio to run on a
debian system without a x display?

	I would like to have speakup and mplayer not fight over
the same sound card.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
