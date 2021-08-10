Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 92CAD3E7D2F
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 18:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628611729;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KVVyljOOzd+o9jwIkU0hNzqWk0BP25dmd4upQs+w750=;
	b=ZTAHVYCSl80ZB2io14SoOG/+78oIKJUkeAIsN2omGMjCUj9EtjwgKR7P5mZSiIlFNdWX9S
	dsKyYkEhRUlg86TXts18khN9BLu+3ODxTXQzk5dskudfVeIAiIXrxh3DDLs7YvsZpl44xg
	ZN5iZ96EYvRctepMIJlLW0D73Lavrmc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-Cdh4lMKwOUS5iwj8Pnoqwg-1; Tue, 10 Aug 2021 12:08:47 -0400
X-MC-Unique: Cdh4lMKwOUS5iwj8Pnoqwg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9790C7400;
	Tue, 10 Aug 2021 16:08:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1642C620DE;
	Tue, 10 Aug 2021 16:08:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A21DD181A2A6;
	Tue, 10 Aug 2021 16:08:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AG5TFN013768 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 12:05:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 556F944019; Tue, 10 Aug 2021 16:05:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5144EDEE96
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 16:05:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E210101A529
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 16:05:25 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9]) by
	relay.mimecast.com with ESMTP id us-mta-541-R6uKURalM6-v7HlZ6Y0UxQ-1;
	Tue, 10 Aug 2021 12:05:23 -0400
X-MC-Unique: R6uKURalM6-v7HlZ6Y0UxQ-1
Received: from [141.126.133.160] (port=37764 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1mDUFm-000PdQ-O4
	for blinux-list@redhat.com; Tue, 10 Aug 2021 11:05:22 -0500
Date: Tue, 10 Aug 2021 11:05:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <YRKjwo6PdL66bwRn@abilitiessoft>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
MIME-Version: 1.0
In-Reply-To: <9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Didier,

I'm 85. I tried dual boot, but I found that it was troublesome. I am runnin=
g Debian. How would I try slint?

John

On Tue, Aug 10, 2021 at 04:16:57PM +0200, Linux for blind general discussio=
n wrote:
> Hi John,
>=20
> I don't think anyone here will mark you as a fool, certainly not me.
>=20
> Having one system par machine is certainly a trouble free solution.
>=20
> Another one is to have each system on a separate drive (one being possibl=
y
> removable)
>=20
> Or dual boot, if there is enough space on the drive and the machine boots=
 in
> EFI mode.
>=20
> I take this occasion to tell you that Slint that I maintain is free for
> people meeting all the conditions listed below:
> 1. Smart
> 2. Linux developer
> 3. Blind
> 4. Deaf
> 5. At least 2O years older that the Slint maintainer.
> Hint: I am 72 years old
>=20
> So, I'd be glad that you try Slint and give us a feedback. <smile>
>=20
> All you need to know should be in our handbook:
> https://slint.fr/doc/HandBook.html
>=20
> Please let us know also how to enhance Slint and its documentation.
>=20
> Warm regards,
> Didier
> --
> Didier Spaier
> Slint maintainer
>=20
>=20
> Le 10/08/2021 =E0 14:34, Linux for blind general discussion a =E9crit=A0:
> > Well, this will probably mark me as a fool, but I just use a Linux mach=
ine and a Windows machine connected by Samba.
> > Computers are relatively inexensive now, so why bother with virtual mac=
hines?
> >=20
> > John
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--=20
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM servic=
es=20
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

