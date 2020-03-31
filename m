Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 041B619A294
	for <lists+blinux-list@lfdr.de>; Wed,  1 Apr 2020 01:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585697932;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CNfAqD3F4Dxoe8HHEF6kAzdry7VNOJFAYfrG3mjhKa8=;
	b=RIFnSGRKzTbd7DI1Wx6zM0+yOEZNtofzm8Rjy3Dj6ryPJM40X2SKJw9VVxSmHQEOCimOeq
	MpAvH4QMrJX51TKbRw5a3HzNSZEXXWPsVhdISELuNFjLwmACJK6DqQX/1v8Dvepv26a23I
	2TcRJYSaiMeIb1qU5JWO3XwmE7uYfMo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-hNYF30H2Mnq1g9yV2DS6qQ-1; Tue, 31 Mar 2020 19:38:50 -0400
X-MC-Unique: hNYF30H2Mnq1g9yV2DS6qQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA533107ACC7;
	Tue, 31 Mar 2020 23:38:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C6AC1001B09;
	Tue, 31 Mar 2020 23:38:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60C3A18089CD;
	Tue, 31 Mar 2020 23:38:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02VNcUKn002818 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Mar 2020 19:38:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0FD0310A8581; Tue, 31 Mar 2020 23:38:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B64710A8584
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 23:38:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34C4D101A55E
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 23:38:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-479-KT-DR8lyNWGEaDdB4--KGQ-1; Tue, 31 Mar 2020 19:38:22 -0400
X-MC-Unique: KT-DR8lyNWGEaDdB4--KGQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48sQkQ0tQBz1Vk0
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 19:38:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48sQkP62P8zcbc; Tue, 31 Mar 2020 19:38:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48sQkP5S8SzcbV
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 19:38:21 -0400 (EDT)
Date: Tue, 31 Mar 2020 19:38:21 -0400
To: blinux-list@redhat.com
Subject: Alien::SVN
Message-ID: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02VNcUKn002818
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

is Alien::SVN supposed to take several hours to install?
If no, that's what's happening over here.
If I ever run this again I think I want to watch perl code execution as it
happens when this one installs.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

