Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 19F8C301960
	for <lists+blinux-list@lfdr.de>; Sun, 24 Jan 2021 04:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611459670;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uUGsUO4NF0fYvmcycHI0CtBnAtMptEp8UsGh5NRHzXQ=;
	b=Zy3LnNB0czc9ypzfpjUP5Cqg4lUgygwFS6wBJUmRrEcwiayoiw3hHATrrgZsldGbNqVPsd
	KHeQRFJBCzOXXVT4RUe6xPIckNCTSVfQ8rz4zlKXpaEasPccLW2y2umWosrTlRrgpCC8KB
	wS5j2K026JamLK43LHvnJ82Ph4Q01hs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-qWPdtMPZOc2LJQMvd7EEBA-1; Sat, 23 Jan 2021 22:41:08 -0500
X-MC-Unique: qWPdtMPZOc2LJQMvd7EEBA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A3F259;
	Sun, 24 Jan 2021 03:41:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BE745F9D7;
	Sun, 24 Jan 2021 03:41:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6CE1A4A7C6;
	Sun, 24 Jan 2021 03:40:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10O3engk031986 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 23 Jan 2021 22:40:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9AC504E3D9; Sun, 24 Jan 2021 03:40:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 952059D461
	for <blinux-list@redhat.com>; Sun, 24 Jan 2021 03:40:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27C40800BFF
	for <blinux-list@redhat.com>; Sun, 24 Jan 2021 03:40:47 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-391-vyUKUEAqNMqQk9wHqtQC4Q-1; Sat, 23 Jan 2021 22:40:45 -0500
X-MC-Unique: vyUKUEAqNMqQk9wHqtQC4Q-1
Received: by mail-qv1-f44.google.com with SMTP id ew18so524517qvb.4
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 19:40:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2UKFXPd8A708/Jqv7L/IFpQyrEHhk536nFNm59E5E4E=;
	b=hZ72M19mo1xca5uzcXONNR01aHKpblTtUaNEpYpu5APfdcqIBTaMgBaD2h55YQI+oT
	qxKr1f7223Q7l/Hn4JpFTCMN39Uwzq/0SrmWnLDAlnMkb7m0IyH0tIv6jJJ5XY2mwbUu
	PRkouqbBkfhBr1CDJaI7dl5Sjxset1BNLSZYFHVUZ2tELdXTWjXlvZ+tEsbi7PhEXHeM
	urhhy7O8Cn8x/vVfNXfX/M5Qg0VMF+VrCBipXrMpoqOSwrk4D5b0zEi7chwrKLmSr2po
	jRg1O6w6rybRt13jJVz9HuSjBjPzoWJWPJdTLMsJpvGdLHbaxFRdQKmJ+1zUyuE7Bj5Y
	tbPQ==
X-Gm-Message-State: AOAM532zRDzrc08zRK1Esm9kovKHgpVhDmQ/2Kq5sVcdetFfI+uUem/d
	4XrY/KZ+25tb7NLCb6hQnPwU8l+blkwpHcEGLbqbM7ygcP4=
X-Google-Smtp-Source: ABdhPJzJSqPPhIdR3D9Vxjye6vfZsI9wv2GBpBEcsrheLKYywd5R68fgYbABd988OIOVihTWUdYP/555ktPr1MSHJBk=
X-Received: by 2002:a0c:a5a5:: with SMTP id z34mr360311qvz.59.1611459644466;
	Sat, 23 Jan 2021 19:40:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:46c2:0:0:0:0:0 with HTTP; Sat, 23 Jan 2021 19:40:44
	-0800 (PST)
In-Reply-To: <161145510571.6.16283696956580322170.3279435@slmail.me>
References: <161139635710.6.15346525701550806542.3266624@slmail.me>
	<CAO2sX32cNAg1c4RSf8GVq_hSMPNNre1Rpz8U6LAjd4ty6EMuFA@mail.gmail.com>
	<161145510571.6.16283696956580322170.3279435@slmail.me>
Date: Sun, 24 Jan 2021 03:40:44 +0000
Message-ID: <CAO2sX32_mf5G6-EJV_VunXrfZaMUyPh1xpyMkvmdOYh8tdqHdw@mail.gmail.com>
Subject: Re: Is there an easy to use Equalizer for Ubuntu based Distros?
To: blinux-list@redhat.com
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

Regarding text editors, well quite frankly, the selection is kind of staggering.

In the terminal, the big two are vi and emacs and their derivatives,
but there's also ed, nano(what I use), and micro that I can name off
top of my head. I like Nano because it's small, and I find it more
straight forward to use than the bit I've messed around with vi or
emacs, though coming from Windows, you might prefer micro, which is
inspired by nano but might have a more familiar set of keybindings(I'm
using nano instead of micro largely because I had already grown
acustomed to nano's quirks by the time micro came along... in nano,
some of the keybindings that might trip up someone coming from Windows
include crtl+x for closing the open file, ctrl+o to save, ctrl+k to
cut(and cutting the whole line at that), ctrl+u to paste(pasting all
lines that were cut without a keystroke other than ctrl+K), ctrl+w to
search forward, ctrl+Q to search backwards, just to name a few).

On the graphical side, I think every desktop environment has its own
text editor and then some. Gnome has gedit, KDE has Kate, LXDE has
Leafpad, there's one in there called nedit, I think there's an editor
written in Java called jedit, and I think I've used pretty much all of
them at one point or another and found them more or less
interchangeable... Granted, I haven't tried a graphical editor since
going blind... and Kate probably isn't too accessible since, as a KDE
app, it's built with the QT ttoolkit, which isn't as well supported by
Orca as GTK.

Not sure I've ever used Notepad++(I was still using a word processor
for most of my document creation when I was using Windows regularly),
but I suspect there's a lot of commonalities between it and the
graphical editors I mentioned above.

And Visual Studio is more of an integrated development environment
than a stand alone editor... Though I generally prefer to code in a
stand-alone editor and invoke a compiler from the command line when I
program, though Eclipse is one IDE that runs under Linux... Eclipse is
optimized for Java development, though I believe it can be used for
C/C++ and perhaps other related languages.

And for what it's worth, I'm pretty sure all of the editors I've
mentioned offer syntax highlighting.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

