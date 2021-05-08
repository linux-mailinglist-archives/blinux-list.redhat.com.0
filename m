Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 768BA3772A7
	for <lists+blinux-list@lfdr.de>; Sat,  8 May 2021 17:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620487946;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+Ac0CQLX/RdPSnrX2Rr50wOVAUeTIrgoq7oTpBNHWSs=;
	b=fh1xdaxVdVC9PoEwmckWZEwlK3CLl2HmPSPP9JCI982hyWJrMu2Z0L87iGOPOb9VMhzPnG
	oUWxfOQnViyTBwHP0+Rihke1sy6sFEqz8tEGNhLhpY2KvMLpB6covC8W850XNE6Ag8kx3u
	dWhabyBLVWCRQXhWqkVyM6jLNNbylCc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-yVTbIdHBNNqiB8GExanJng-1; Sat, 08 May 2021 11:32:23 -0400
X-MC-Unique: yVTbIdHBNNqiB8GExanJng-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6E7D8015F3;
	Sat,  8 May 2021 15:32:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF6E418135;
	Sat,  8 May 2021 15:32:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 011061800BB0;
	Sat,  8 May 2021 15:32:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 148FUaqw007451 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 8 May 2021 11:30:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 077AFF9AAD; Sat,  8 May 2021 15:30:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03379F97F6
	for <blinux-list@redhat.com>; Sat,  8 May 2021 15:30:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4EF6185A79C
	for <blinux-list@redhat.com>; Sat,  8 May 2021 15:30:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-272-H52FVi56PnmH3yXu3NGiVw-1; Sat, 08 May 2021 11:30:30 -0400
X-MC-Unique: H52FVi56PnmH3yXu3NGiVw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FcrqT6hRrz21lb
	for <blinux-list@redhat.com>; Sat,  8 May 2021 11:30:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FcrqT5QdPzcbc; Sat,  8 May 2021 11:30:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FcrqT55XnzcbW
	for <blinux-list@redhat.com>; Sat,  8 May 2021 11:30:29 -0400 (EDT)
Date: Sat, 8 May 2021 11:30:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Fedora 34- Orca works on logon screen but not after signed in
In-Reply-To: <PH0PR14MB4296F7065AF04FE6E34F7F36C8569@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <alpine.NEB.2.23.451.2105081129540.28052@panix1.panix.com>
References: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
	<PH0PR14MB4296F7065AF04FE6E34F7F36C8569@PH0PR14MB4296.namprd14.prod.outlook.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

User needs to be in audio group.


On Sat, 8 May 2021, Linux for blind general discussion wrote:

> I can't help much, but on Linux the Windows key is called the Super key.
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
> Sent: Friday, May 7, 2021 10:55 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Fedora 34- Orca works on logon screen but not after signed in
>
> Hello.  I just installed Fedora 34 Mate spen on my laptop.  I got Orca started on the logon screen by pressing Windows Alt S.  I think the Windows key is called something else on Linux, but I don't remember what it is.  I put my password in for my user account and press Enter.  I don't hear Orca come up after I am signed in, so I pressed Windows Alt S again.  I do not hear anything from Orca.  Just in case Windows Alt S does not work after sign in, I pressed Alt F2.  Type Orca and press Enter.  I still do not hear anything from Orca.  Does this have something to do with my user account not having permission to access the sound device?  If so, is there a group I can ad the user account to? If it is not a permission issue, what else would it be?
> Thanks.
>
>
> Get Outlook for Android<https://aka.ms/AAb9ysg> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

