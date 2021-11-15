Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 725114515DA
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 21:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637009793;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c2dgOS7CPiCOW9WDMnkPkKPDkTp3rzJVJbWa14OsCTU=;
	b=IbYK+WQngAP+RhgEeytzHL4Sg5ckxvfKVamGAT5y3bT3OSPPnen/f7dFB73hkj0Tuz8hSp
	KwV3D0l2Ig1NE1WYiY0lmyS/od1DeeZJpKwh03AqDvWfn0osdS1442i9R2d1D1LWARNlnZ
	8nSjEGRTJzcVbSG+so1qKU9ELc4doJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-QHnd4Yv7ODmmezTuoH-nMg-1; Mon, 15 Nov 2021 15:56:29 -0500
X-MC-Unique: QHnd4Yv7ODmmezTuoH-nMg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0FA487D544;
	Mon, 15 Nov 2021 20:56:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F41275C1A1;
	Mon, 15 Nov 2021 20:56:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DD704EA2A;
	Mon, 15 Nov 2021 20:56:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFKrCiZ020513 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 15:53:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A34A34010FE9; Mon, 15 Nov 2021 20:53:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E3A74010E8A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 20:53:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 866CF8011A5
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 20:53:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-204-4yUFwxcCOGeHTjKo9jHhKA-1; Mon, 15 Nov 2021 15:53:10 -0500
X-MC-Unique: 4yUFwxcCOGeHTjKo9jHhKA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HtLxf33Gjz3jD2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:53:10 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HtLxf2TC0zcbc; Mon, 15 Nov 2021 15:53:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HtLxf27tmzcbP
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:53:10 -0500 (EST)
Date: Mon, 15 Nov 2021 15:53:10 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: re: telegram-cli
In-Reply-To: <alpine.NEB.2.23.451.2111151517560.11715@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2111151547220.14994@panix1.panix.com>
References: <alpine.NEB.2.23.451.2111151517560.11715@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I tried nctelegram which runs on top of telegram-cli and the keyboard
doesn't appear to work.  Next I installed purple-telegram since pidjin
only had gadugadu as an available protocol and purple-telegram did not add
any protocol to pidjin.  Slint cannot be used for telegram so will be
using my android phone exclusively for this app.  nctelegram has been
abandoned by its developer tooa little web research found that for me.  I
don't know if all of the python breakage has or is contributing to all of
these failures but suspect it's a probability.


On Mon, 15 Nov 2021, Linux for blind general discussion wrote:

> once all versions of telegram-cli got deleted I ran slapt-get -i
> telegram-cli.  The slint package installed correctly.  The version
> reported by telegram-cli when starting is 1.4.1 no mention of beta inside
> the app.
> Unfortunately, the beta version also cannot export_card either and I
> haven't checked out import_card yet either.  The beta version was
> mentioned as slapt-get -i telegram-cli did its work though.
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

