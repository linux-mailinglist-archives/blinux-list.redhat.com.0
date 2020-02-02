Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 861D814FB47
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 03:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580611526;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yW7SaD4tOJYvw+UfTNJK8kJD8dMz+yWpF+RrWo4f5HI=;
	b=NFRmH7QXOAFFaUttHBb5nWdsRtWpEHcxnnC7sOI0xA/jV01Njlj58TWR7P7Osw/J+xjDbq
	zomFbTUCotD9GDmdyK9O/KSAPfmyosuvoZ/egUAfXwzfW+7cSrMw9d/FtFKdoAvKHWZtve
	IWJ1ztXhLjMocf/U9N5FdgGoeJkjyhI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-WZhW_NMvOnmc55u8WVznOw-1; Sat, 01 Feb 2020 21:45:23 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3A158017DF;
	Sun,  2 Feb 2020 02:45:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAEA35D9E5;
	Sun,  2 Feb 2020 02:45:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80EB31809567;
	Sun,  2 Feb 2020 02:45:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0122j3jS010572 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 21:45:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 74BA32037E69; Sun,  2 Feb 2020 02:45:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB2D2037E43
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 02:45:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96C48800298
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 02:45:01 +0000 (UTC)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
	by relay.mimecast.com with ESMTP id us-mta-175-CJw0Y6fpMICUjzfGbdSuVA-1;
	Sat, 01 Feb 2020 21:44:59 -0500
Received: from wb5agz ([47.217.105.76]) by dalofep01.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20200202024458.ERCU16371.dalofep01.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Sat, 1 Feb 2020 20:44:58 -0600
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1iy5Fq-0006fl-BN
	for blinux-list@redhat.com; Sat, 01 Feb 2020 20:44:58 -0600
To: blinux-list@redhat.com
Subject: Re: A Live Boot Image for the Mac that Talks
In-reply-to: <10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Sat, 01 Feb 2020 18:15:59 -0600."
MIME-Version: 1.0
Content-ID: <25651.1580611498.1@wb5agz>
Date: Sat, 01 Feb 2020 20:44:58 -0600
Message-Id: <E1iy5Fq-0006fl-BN@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep01.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Sat, 1 Feb 2020 20:44:58 -0600
X-CM-Analysis: v=2.3 cv=XMBOtjpE c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=l697ptgUJYAA:10 a=7jTcn3IT1uMA:10
	a=V9zo-WL-nE5xUvCLnoMA:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-CM-Envelope: MS4wfC7+0mio5nfm6xpPyeWZs86LA5kmuNTcSTok+ePg0i1WGnBTxQpHQYZH2+FZ4x/ezc93TB40TYQsPh8YInAJKbMZO/V+mlBy1qOV9Vbh5DRfC4SdWomz
	tcaSL3IT51EyJhk6hl1oQdjK3i8DnH5HLPfDBYyf7IyKiJPrP/FBYTQi
X-MC-Unique: CJw0Y6fpMICUjzfGbdSuVA-1
X-MC-Unique: WZhW_NMvOnmc55u8WVznOw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0122j3jS010572
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

	I've been using unix commands of one kind or other for 30
years + and dd is the goto utility when copying disks.  What else should
we use if not dd?

	I have just tried two different thumb drives with unix
distributions on them and both throw an error if you plug them in
to the mac.  Both drives also mount without incident on a debian
user system

	The different format someone mentioned is called ufs or
something similar

Martin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

