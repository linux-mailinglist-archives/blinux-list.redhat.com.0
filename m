Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 53BED2B838A
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 19:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605722614;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D795h0ELDINyA1nUdpUXsxx1l/OIVUIADSnkrsYd6x8=;
	b=Y/2Awho3ZNwvBRSq/cjWrDXyfN+9IKqPh4w87vgjyhXoaOk7gYR7Nkaxtg/z71nEu2OQXD
	lRrcHJ3cjJfxytlYnqrmOC7Q/WIm6hfoijvXQzycmAEt/0uzasnc4onySc4L4ql5sNw/61
	sdzwYqBZ1X2hVh6Sh91b758Y2LPBnhY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-6tkN7Q45OsaO8mQrUpai3g-1; Wed, 18 Nov 2020 13:03:31 -0500
X-MC-Unique: 6tkN7Q45OsaO8mQrUpai3g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7C8A6D246;
	Wed, 18 Nov 2020 18:03:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C1EE60C0F;
	Wed, 18 Nov 2020 18:03:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 121415810A;
	Wed, 18 Nov 2020 18:03:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AII3EAs007332 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 13:03:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CEC662022792; Wed, 18 Nov 2020 18:03:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA71B202278F
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 18:03:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80823182360F
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 18:03:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-401-kj7oXP_ZNOGFx0Xjqvh4NQ-1; Wed, 18 Nov 2020 13:03:09 -0500
X-MC-Unique: kj7oXP_ZNOGFx0Xjqvh4NQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CbrJX5m9Lz1PBc
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 13:03:08 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CbrJX53J2zcbc; Wed, 18 Nov 2020 13:03:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CbrJX4cXhzcbW
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 13:03:08 -0500 (EST)
Date: Wed, 18 Nov 2020 13:03:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: =?ISO-8859-15?Q?Re=3A_=3D=3FUTF-8=3FQ=3FIn=5Freply=5Fto=5F=3A=5FLe=5Fma?=
	=?ISO-8859-15?Q?r=2E=5F17=5Fnov=2E=5F2020=2C_=5F=3DC3=3DA0=5F21=5Fh=5F0?=
	=?ISO-8859-15?Q?3=2C_=5FLinux=5Ffor=5F=3F=3D_blind_general_discus?=
	=?ISO-8859-15?Q?sion_=3C_blinux-list=40redhat=2Ecom=3E_a_=E9crit?=
In-Reply-To: <2090659264.7117408.1605721923947@mail.yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2011181301280.25416@panix1.panix.com>
References: <mailman.165471.1605718957.17494.blinux-list@redhat.com>
	<2090659264.7117408.1605721923947@mail.yahoo.com>
MIME-Version: 1.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

If the iso runs that is one possibility you could also install jenux which
is a security version of archlinux called blackarch.  You get a menu and
choices.  Hit the first letter of the menu choice you want then enter to
get that started. On Wed, 18 Nov 2020, Linux for blind general discussion
wrote:

> Date: Wed, 18 Nov 2020 12:52:03
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: "blinux-list@redhat.com" <blinux-list@redhat.com>
> Subject: =?UTF-8?Q?In_reply_to_:_Le_mar._17_nov._2020, _=C3=A0_21_h_03,
>     _Linux_for_?= blind general discussion < blinux-list@redhat.com> a ?crit
>
>
> Sir: So that I understand you correctly: we are to install "Jenux for Android" on a desktop computer in order to get talkback working?
> Denny
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

