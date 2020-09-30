Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A194327F1B1
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 20:55:10 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601492109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RI2qcfzguSDYmtFSAHc4Be3uwslUhjv/dNJ/bEmQB4I=;
	b=J1zppUZn43uYj/6iuaWAL+5smIl5/ow0yB+CxvfPLIkhbKmon9oBONXegH7956NXPa8u/v
	5FH6DYNaz3p8SBVE1oD13RvwVZ0Je0uB+kkifZXvpH/q0akqhY+fsdb5yIZGnNb4T7LfyD
	Ado8U2rKeMr6MLUOyAKuNH3dcgkeRyk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-1G8EbJQUPVmg7rbPtB1JAg-1; Wed, 30 Sep 2020 14:55:07 -0400
X-MC-Unique: 1G8EbJQUPVmg7rbPtB1JAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81006188C122;
	Wed, 30 Sep 2020 18:55:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA19327CCD;
	Wed, 30 Sep 2020 18:55:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4947183D021;
	Wed, 30 Sep 2020 18:55:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UIst6P027562 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 14:54:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 31135201EB53; Wed, 30 Sep 2020 18:54:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CB3D201828A
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:54:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E557180158E
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:54:51 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-391-pXqnByCOPguwuAuzVqQgrg-1; Wed, 30 Sep 2020 14:54:48 -0400
X-MC-Unique: pXqnByCOPguwuAuzVqQgrg-1
Received: by mail-qv1-f49.google.com with SMTP id cv8so1459240qvb.12
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 11:54:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dI85fQUeYMD/13PO+cF0t8Yhy1URZZuDduucwf2oN/s=;
	b=SmKtXeUe2BL5AjKUuc4Rk4IAhoyHaqel4w+AJboctHNpOk4AEkmg3cPpAsTpnz6D/I
	inOSZNOk4BW7g9xOaX9Dgx9ZFL/sg+qYKFSafx2BJj+ho4A1Z0IVeqWwWKvQMMy+Fh9J
	13RopnMbj/4H7yS5+5gGPLWd3ijlqTGGo6f0lt3VZqiOHYRNmghemliuqN/ADhe+D/NK
	QhsKXKwTUKVbYIRb3UGFx0aGEDN8mH89ua1TnFeLnxpS1IY92EycUgofR10lCZeJn6yZ
	38oaywfbLohT9SjeRMFtvqgbAohyIjBVfbQna62dguPuCh+q+H/Faw4pz982UGwEj7G4
	BYyQ==
X-Gm-Message-State: AOAM532wq5Yd+3dP6oamtExyDQxtLarDLhlWcyPhUgclI+hPIpby3BRN
	55BBn6YOw7imblYJXQeka4pSY1989toQU3iU33wcqT2tJBA=
X-Google-Smtp-Source: ABdhPJz9zKw6tY5JcyqXIjj6awj610gx3TqiQJpSzHtfhm7GTlhX4xNO2q2K1iFmLLMREB4Iq9H9BSyw7aSCbrLu7Z0=
X-Received: by 2002:a0c:b78c:: with SMTP id l12mr4036722qve.38.1601492087443; 
	Wed, 30 Sep 2020 11:54:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP; Wed, 30 Sep 2020 11:54:46
	-0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
Date: Wed, 30 Sep 2020 18:54:46 +0000
Message-ID: <CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm personally a fan of SBL, particularly for it's
hold down caps lock and use arrow keys to navigate the screen like a
text document" style of screen review and it generally only reading
the output from verbose commands that I tell it too instead of trying
to read absolutely everything like espeakup does... though admittedly,
I prefer espeakup's more verbose style when playing classic infocom
text adventures in Fizmo or Frotz since I don't have to manually
review the output of every action. I also find SBL works better with
scrolling curses-basedapps as espeakup has a bad habit of reading a
line that just scrolled on screen instead of the line that just came
into focus when the two happen simultaneously.

Sadly, SBL is, as far as I know, only available for OpenSUse and
Knoppix as a precompiled package, and even then, Knoppix only has an
i386 version and the .deb isn't readily available ever since Alioth
was taken offline and too the Knoppix repository with it. SBL isn't in
active development either as far as I know, though I can't say I've
noticed any issues with the current version's age.

About all I know about Fenrir is that it's userland-based while
espeakup requires the speakup kernel module and that it's written in
Python. I believe it also uses Speech dispatcher, which might make
using software speech synths other than espeak/espak-ng easier in some
cases(I've never had issues with espeak-ng, so I can't really comment
on other synths).

I know even less about YASR than Fenrir, but I understand it requires
a hardware speech synth to function properly.


-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

