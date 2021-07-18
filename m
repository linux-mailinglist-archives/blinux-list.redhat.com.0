Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D12D63CCA07
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 19:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626629190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A7Edbv/EzKqpQwoCS6rEVd3M1i/nJCbzYq3lyYDjz4w=;
	b=QiHt5qLJFDbhUzCoG1rS18vQfUpf612CawhbnOV39sjipWaY7+R9A7XZ8dY4Df8a70UOUY
	wNmoTu1hKqe8ySJB3o7yM6ayhTlkPc1mh8iBxRIClHYWp6DuJbVJHVTHhPI5gtITkyZfi6
	ZIoTBfHV2AnkS6DUReDjMin39snu1KI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-ejl_CzyPPdSU91GJTlmaeQ-1; Sun, 18 Jul 2021 13:26:28 -0400
X-MC-Unique: ejl_CzyPPdSU91GJTlmaeQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 10A43362FB;
	Sun, 18 Jul 2021 17:26:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55E8560C82;
	Sun, 18 Jul 2021 17:26:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FE981809C97;
	Sun, 18 Jul 2021 17:26:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IHQGbG024233 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 13:26:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3693021686AC; Sun, 18 Jul 2021 17:26:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32A5221686A9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:26:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3CFA789C7DC
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:26:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-214-_q7eVSrhOVe5NUcQVGaIOg-1; Sun, 18 Jul 2021 13:26:11 -0400
X-MC-Unique: _q7eVSrhOVe5NUcQVGaIOg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GSX2B3JXlzFvv
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 13:26:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GSX2B2B5wzcbc; Sun, 18 Jul 2021 13:26:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GSX2B1lwxzcbW
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 13:26:10 -0400 (EDT)
Date: Sun, 18 Jul 2021 13:26:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: espeak-ng on archlinux
In-Reply-To: <CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107181324090.12858@panix1.panix.com>
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
	<CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

The only item not installed yet is pipewire.  Did you write a
espeak-ng.service file to bring up espeak-ng on boot up?  I haven't done
that yet and have to manually start it after login.


On Sun, 18 Jul 2021, Linux for blind general discussion wrote:

> Hello there,
>
> It works for me here.
> Did you install speech-dispatcher, alsa-utils and alsa-plugins? Did you
> install pulseaudio and all related stuff as well?
> I am using pipewire here, but it works without a hitch anyways.
> If you're trying to get a screen reader running on the graphical user
> interface, make sure to install orca as well.
> Best regards.
> Francisco.
>
> On Sun, Jul 18, 2021 at 4:29 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > I got espeak-ng partly working but not completely.
> > When I key a line in and hit enter, espeak-ng speaks what I keyed in.
> > That is all espeak-ng does.  So far as I can tell no espeak-ng.service
> > file exists to enable and start espeak-ng when the system boots either.
> > Finally, if during an archlinux installation espeak-ng is installed rather
> > than espeak it's possible it's not pulling dependencies espeak-ng needs to
> > speak.
> > It would be nice if espeak-ng would speak what the computer puts up on the
> > screen after I type a command but this isn't yet happening over here.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

