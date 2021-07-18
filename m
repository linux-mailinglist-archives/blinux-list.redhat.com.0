Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 714133CC9EA
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 18:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626626616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BIPfsUjcTCeIKqVTxDuglPcXgTmDhHCPSJTdyOyuaZg=;
	b=K/HO02LXg/CuSX6RnBE25kGKGdOJULng50J5oCYQ05bnY+avGPoZwYszVWtRc6NaY9nO6x
	jVcMj9kUq7Vx3oskcOkW33v3y1ioeM2RvQ2/ZAZAhmuJ8K9Fduxj60JNx8sfbKdobYeJHU
	zQySqLXI2OrRvc/dUhLcTzuF2GaVvtA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-567-dLzIEx8rMumDftvhImdDIw-1; Sun, 18 Jul 2021 12:43:35 -0400
X-MC-Unique: dLzIEx8rMumDftvhImdDIw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BF52801B0A;
	Sun, 18 Jul 2021 16:43:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4643860C82;
	Sun, 18 Jul 2021 16:43:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 669AF4A712;
	Sun, 18 Jul 2021 16:43:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IGXNLJ020565 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 12:33:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F421202699A; Sun, 18 Jul 2021 16:33:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AD252026D60
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 16:33:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0F6A1064E6A
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 16:33:20 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-463-Z3LPfKxmNY6Na-IYIh66dA-1; Sun, 18 Jul 2021 12:33:18 -0400
X-MC-Unique: Z3LPfKxmNY6Na-IYIh66dA-1
Received: by mail-qt1-f176.google.com with SMTP id c13so8636564qtc.10
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 09:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=TqAcv4FeJbTt6SKjEvkmekIUhIgaq04W2KILSCt/4/A=;
	b=BM5QZ3h6RypUVWpDSH0dyp4qgXxs5B/A4MerR3s11c9EPHSXa55XCZklRSZQq4hDKo
	F1Yj04+MI2xGhi8M98ixEwDiov73xQCBO3g2BYY8OHh+uwpIvv/zZVgc+/by527dQBTZ
	uvhIzXBFHCRj2C6ne/mioSah0s53y993EElYoLkuB/MKNqxWs7sW9vIOvuDLdyIls4mP
	Jzn+50d3Xad+6u6Mdrx8+LtRXT6e1Wy00ir2Fr525tjpVYHUM9OWbEAGle8JITns8CA7
	SmKSFHEmmj1uzeDO/em6aRvTHCv7xqhwjnrePlpO/hftr2o9Clq8TzO91rckCeMr4lm8
	1U2g==
X-Gm-Message-State: AOAM533MzQBhClo+/AYQuOiHyJwXcND2Xlmi6/JpiorUpeA1nk1Duok/
	81LIdv5L5ZDvNOWMjZ+tIjby0BdZU04HlifoLBA1/2Fa
X-Google-Smtp-Source: ABdhPJxGsIMt2/MofgWgjleWrl8odj9S56LinpcuByrP/ZlKMChHK3QcntVbTu9e3kpmkH6ysZLYkc9lULZAUi7b3dI=
X-Received: by 2002:ac8:7f42:: with SMTP id g2mr13664743qtk.218.1626625997338; 
	Sun, 18 Jul 2021 09:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
Date: Sun, 18 Jul 2021 18:33:04 +0000
Message-ID: <CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
Subject: Re: espeak-ng on archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Hello there,

It works for me here.
Did you install speech-dispatcher, alsa-utils and alsa-plugins? Did you
install pulseaudio and all related stuff as well?
I am using pipewire here, but it works without a hitch anyways.
If you're trying to get a screen reader running on the graphical user
interface, make sure to install orca as well.
Best regards.
Francisco.

On Sun, Jul 18, 2021 at 4:29 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I got espeak-ng partly working but not completely.
> When I key a line in and hit enter, espeak-ng speaks what I keyed in.
> That is all espeak-ng does.  So far as I can tell no espeak-ng.service
> file exists to enable and start espeak-ng when the system boots either.
> Finally, if during an archlinux installation espeak-ng is installed rather
> than espeak it's possible it's not pulling dependencies espeak-ng needs to
> speak.
> It would be nice if espeak-ng would speak what the computer puts up on the
> screen after I type a command but this isn't yet happening over here.
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

