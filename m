Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B94BD91C
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 11:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645439656;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=/SUihqc90ABrNJLtAEBKXeh6rLVL0XeRzs2wiiskxWQ=;
	b=jVR4ivEO137JTtOzWbRkHWxxbS6kA2sug83lPVFWAe0DGJLU2lL6IIcGrEf6sNngUL6cjM
	OTmH5ST83GGZXYDEk7ABVDXfyg7t5lu3om6c709mvH1KGYMB6wyNxNr4Wxfam0m++ma7C6
	zDk7AuOo9XFsUo9jyL/z4zY7dpD/kSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-b8XC6bd4MvaBjC7as4MGOw-1; Mon, 21 Feb 2022 05:34:13 -0500
X-MC-Unique: b8XC6bd4MvaBjC7as4MGOw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A751100C610;
	Mon, 21 Feb 2022 10:34:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD3E36F199;
	Mon, 21 Feb 2022 10:34:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18A6E1809C87;
	Mon, 21 Feb 2022 10:34:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LAXsaV032307 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 05:33:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E9ACB112132D; Mon, 21 Feb 2022 10:33:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E47321121322
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 10:33:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46A5329DD982
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 10:33:46 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-403-kAkECoQSOMWro905lylO8w-1; Mon, 21 Feb 2022 05:33:44 -0500
X-MC-Unique: kAkECoQSOMWro905lylO8w-1
Received: from [192.168.116.128] (unknown [176.230.58.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 562DF39EBCE1
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 10:33:42 +0000 (UTC)
Date: Mon, 21 Feb 2022 12:33:38 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mutt or Alpine
In-Reply-To: <e22b2dca-c7a5-7fe6-6488-c51e72aa2811@gmail.com>
Message-ID: <alpine.DEB.2.11.2202211230450.1580@debian.work>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
	<f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
	<e22b2dca-c7a5-7fe6-6488-c51e72aa2811@gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-936768232-1645439622=:1580"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-936768232-1645439622=:1580
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On Fri, 18 Feb 2022, Linux for blind general discussion wrote:

7> Belatedly, Mutt (I don't have Neomutt on this machine, because...thanks=
=20
> Solus?) works really, really well in a terminal oddly enough as well as a=
=20
> pure console. Alpine sadly doesn't so at least for my use case, Mutt wins=
 out
>
> Now to figure out if Mutt or Neomutt is a better fit? I'd say you can=20
> probably ransition from Alpine to Mutt with a bit of a learning curve, fo=
r me

> Alpine. But Mutt, at least on my machine, works better with Orca in=C2=A0=
 a=20
> terminal, I don't run into horizontally laid out things, Mutt has it list=
ed=20
> alphabetically so I know or example my Blinux folder is always at the top=
 of=20
> the heap, Inbox is option #5 and so forth. To me that makes more sense th=
an=20
> having Inbox/Drafts/etc all on one line, but YMMV on that of course, ...

You can fix this in ALPINE by setting

single-column-folder-list

I would think that most of us here would want this feature set.

HTH,
Geoff.

--8323329-936768232-1645439622=:1580
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--8323329-936768232-1645439622=:1580--

