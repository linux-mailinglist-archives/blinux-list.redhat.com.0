Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 69287381C41
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621136437;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R9zmbiIA+l1zfO2RkhUJ7Od1vMgSu3mwBYmkt706bP4=;
	b=QpOQ0EIj8fNS6Uoc+wlNjlQ9f0IXemF41KSQeZrHWdWPBgsYnTnuMBgSe4d4L/z5fBPGAp
	sGNQmVJKTgbrGfysN/D4swReIJlTDIw5/kAPDIzHw7O1dMBLdCwLRYUvQ9VPDznXtv+yJp
	Tg3DnjKcZwmo1BW9HEiSOPLNJah+8Yc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-DDnMf2IjOX-xtm8HN7Q6yw-1; Sat, 15 May 2021 23:40:35 -0400
X-MC-Unique: DDnMf2IjOX-xtm8HN7Q6yw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D9971854E25;
	Sun, 16 May 2021 03:40:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6043719D9B;
	Sun, 16 May 2021 03:40:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8A121801028;
	Sun, 16 May 2021 03:40:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3eRFG024728 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:40:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D9B5A1134CA5; Sun, 16 May 2021 03:40:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D51341134CA2
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:40:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D7E63101A531
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:40:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-342-sbXmn86YMECvuzPcHfQtBA-1; Sat, 15 May 2021 23:40:22 -0400
X-MC-Unique: sbXmn86YMECvuzPcHfQtBA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjShP6PLmz2WSZ;
	Sat, 15 May 2021 23:40:21 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjShP5M1rzcbc; Sat, 15 May 2021 23:40:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjShP4pZKzcbW;
	Sat, 15 May 2021 23:40:21 -0400 (EDT)
Date: Sat, 15 May 2021 23:40:21 -0400
To: blinux-list@redhat.com
Subject: InfoWorld: 11 tips for speeding up Python programs (fwd)
Message-ID: <alpine.NEB.2.23.451.2105152340010.25128@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: orca-list@gnome.org
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



---------- Forwarded message ----------
Date: Thu, 13 May 2021 16:05:17
From: Jude DaShiell <dashielljude@gmail.com>
To: fidel.viegas@gmail.com, peter youssef <kingtut41@gmail.com>,
    Joel Ralon <jralon@comcast.net>, Jude DaShiell <jdashiel@panix.com>
Subject: InfoWorld: 11 tips for speeding up Python programs

InfoWorld: 11 tips for speeding up Python programs.
https://www.infoworld.com/article/3044088/11-tips-for-speeding-up-python-programs.html

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

