Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9964F3F4BAF
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 15:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629725411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ju3QxDDYtR1dkqKlSYzt3YTgxD4gBi6CXOZ4NdsTHMM=;
	b=FM+LnFsr/KEAYhX+QbY3Bzgxj0w7cebt+vhAnz8CxCbrPR+5jVIAdEjYLW05MqSgVXIUoX
	usuSA1Ga0b1qBdBw1f06pe6BtN/vYxn2YNvcWWXQqarbNIKJAWmJGmEuxBY/Mqz3Js2urJ
	2x7OWwEBUDw8vYdQHe1QRc7DuwJg/wg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-HCjbSN_xNMupwIYPs29PFg-1; Mon, 23 Aug 2021 09:30:09 -0400
X-MC-Unique: HCjbSN_xNMupwIYPs29PFg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99E5C760C1;
	Mon, 23 Aug 2021 13:30:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ACB75D6AB;
	Mon, 23 Aug 2021 13:30:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 701C0181A0F2;
	Mon, 23 Aug 2021 13:30:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NDSu1P008805 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 09:28:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5131A2156896; Mon, 23 Aug 2021 13:28:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C9102156894
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:28:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EFF1802700
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:28:52 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-591-K0IhoZHNPFGX_BSs0Tr4oA-1; Mon, 23 Aug 2021 09:28:50 -0400
X-MC-Unique: K0IhoZHNPFGX_BSs0Tr4oA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GtY3j3QM6z8tQY
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:28:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id FIvdCKwC8puy for <blinux-list@redhat.com>;
	Mon, 23 Aug 2021 13:28:48 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GtY3h2Vr3z8tQW
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:28:48 +0000 (UTC)
Message-ID: <20210823.132854.634.2@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Assigning audio devices for applications
Date: Mon, 23 Aug 2021 08:28:54 -0500
MIME-Version: 1.0
In-Reply-To: <8b0792c8-75b7-0861-7a43-50e3088ba54b@slint.fr>
References: <20210823.124438.168.1@[192.168.1.100]>
	<8b0792c8-75b7-0861-7a43-50e3088ba54b@slint.fr>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NDSu1P008805
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm on arch, with espeakup and orca.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 23 Aug 2021 15:21:54 +0200
Subject: Re: Assigning audio devices for applications

> Hello,

this depends on which distribution and screen reader you are using.=20
Which are
they?

In Slint that I maintain espeakup honors the value of ALSA_CARD.

Maybe fenrir does the same if in the config file settings.conf driver is=20
set to
genericDriver or espeakDriver, I didn't check yet.

Didier
--
Didier Spaier
Slint maintainer
didieratslintdotfr

Le 23/08/2021 =E0 14:44, Linux for blind general discussion a =E9crit=A0:
> It's been a while since I did this and I don't have my notes anymore.
> I want to use my USB sound card for speech output and my  onboard card fo=
r media. I do not have pulse installed, only alsa and libao.
> What is the best way of accomplishing this?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

