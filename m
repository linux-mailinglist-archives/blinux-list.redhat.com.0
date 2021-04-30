Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id AD6803700BA
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 20:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619808534;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=otFZvyAYg2KlVHs5JQKMSiXxcoUqZeNJ3UCBV8cm9K0=;
	b=OY9jB73TlRtZjnTJ18AMExpwXzcOhJfkPFj/bu5ttT1VPKZL6LY4KRPc+f8iIQcok6Huq5
	WAD/eCvZwrhY14fvF0ZYAfWwUe3/iyOIxYSZEuxmo25f8OLNSX/IOnDymcI+mYGcocX+LF
	+b2L/d7C0jtZKkkYyzj2hN5+ZLL20mY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-Vu_Q4iynNTGWmAi__AaG2w-1; Fri, 30 Apr 2021 14:48:52 -0400
X-MC-Unique: Vu_Q4iynNTGWmAi__AaG2w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD19C1922965;
	Fri, 30 Apr 2021 18:48:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42B5D2B19E;
	Fri, 30 Apr 2021 18:48:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9971418095C2;
	Fri, 30 Apr 2021 18:48:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UImMtq018163 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 14:48:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE35E1055079; Fri, 30 Apr 2021 18:48:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C93021055073
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:48:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAAB718E0922
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:48:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-SNJEd_luN4u1zs4ARNeUwA-1; Fri, 30 Apr 2021 14:48:14 -0400
X-MC-Unique: SNJEd_luN4u1zs4ARNeUwA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FX1bK5NpDz2Gc8
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 14:48:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FX1bK4gHQzcbc; Fri, 30 Apr 2021 14:48:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FX1bK4K52zcbW
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 14:48:13 -0400 (EDT)
Date: Fri, 30 Apr 2021 14:48:13 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Best Distro for Blind
In-Reply-To: <CAO2sX33xYLcdO7pDhYJ9L2_7T8_mv4Bhu6Msr4oRuqj1bk3WuA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2104301441020.15796@panix1.panix.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
	<YIxCF1C83HFrpbkN@panix.com>
	<CAO2sX33xYLcdO7pDhYJ9L2_7T8_mv4Bhu6Msr4oRuqj1bk3WuA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To be on the bleeding edge for accessibility and other needs, Jenux may
work well for you.
With that install disk, you can install android though jenux itself is a
fork of blackarch which is a security flavor of archlinux.  Jenux rolls
new isos that have dates change in their names sometimes once a month.  It
can install a base system (console) gnome mate kde and some other options
as well.  You choose when you run it.  orca comes already installed on
gnome and mate and since you download from archlinux blackarch and jenux
repositories you get a current version of those desktops.  There is also
the aur repository for stuff that's really on the bleeding edge too.
I have jenux installed on a drive since slint hasn't got dosemu2 yet.

#mailto:dnl.nash@gmail.com
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso.sha512
#wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso
#sha512sum -c Jenux-2021.04.20-dual.iso.sha512

Those commands are commented out and may not work if the names of the iso
and sha512sum files have changed.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

