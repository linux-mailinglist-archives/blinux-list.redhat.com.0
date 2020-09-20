Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 90655271499
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 15:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600609308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VxZrrHRgcB/RcaGHBLuiutfolZz068ol7UXZsgTFRQ4=;
	b=VFk2oPNErwTqncDGMvZQ+jyPtTs747rJPmy2OK3dBpQ1UoQ54Nnt+3RS4CY+QRWNJz92PL
	CWXXHFrcLJmoUFXj3rQa9r0Isc9fHOV9sB3poFjvvG21zJ+mBOg4FjiIXXNvZAgNIwjQ7A
	x6FlHfJS/nGhuAYcqOvGJHU3EE4vh3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-Ox1qY6RJNY2lacldspnv2g-1; Sun, 20 Sep 2020 09:41:46 -0400
X-MC-Unique: Ox1qY6RJNY2lacldspnv2g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DA4E1868407;
	Sun, 20 Sep 2020 13:41:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A0A15D9D5;
	Sun, 20 Sep 2020 13:41:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E744F8C7AC;
	Sun, 20 Sep 2020 13:41:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KDfYTW000712 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 09:41:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1973F201C0DC; Sun, 20 Sep 2020 13:41:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14A5420244F7
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:41:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A618680351B
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:41:31 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-212-T49kcIaLPESvWXzBus0ysw-1; Sun, 20 Sep 2020 09:41:29 -0400
X-MC-Unique: T49kcIaLPESvWXzBus0ysw-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4BvT7Q6f38z21gd
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:34:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id TDSydlPq8UJ2 for <blinux-list@redhat.com>;
	Sun, 20 Sep 2020 13:32:53 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4BvT5x37Zyz21fK
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:32:53 +0000 (UTC)
Message-ID: <20200920.133216.759.57@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: ebook-speaker/UTF-8 long files
Date: Sun, 20 Sep 2020 08:32:16 -0500
MIME-Version: 1.0
In-Reply-To: <c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08KDfYTW000712
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try this
ebook-convert file.mobi file.txt --linearize-tables --asciize
See if that fixes your problem.
Rob

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 20 Sep 2020 14:07:24 +0100
Subject: Re: ebook-speaker/UTF-8 long files

> Tim, it's ebook-convert from the Calibre package, and yes they are .mobi 
> format originally, and given I've not found a way to natively read them 
> on Linux with Orca, I figured okay, I'll convert them. They do display 
> fine in Pluma however and I can read them that way, but I'd like the 
> convenience of ebook-speaker really.
> 
> On 20/09/2020 13:30, Linux for blind general discussion wrote:
> > Tim here.  You say "It tells me to wait", but it's hard to tell
> > whether it's "ebook-converr" or "ebook-speaker" that's giving the
> > error.  So it's hard to tell whether it's source lines in the
> > original ebook that are giving trouble (in which case it would help
> > to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
> > If it's the former, it sounds like an issue with "ebook-converr"
> > which I'm not sure I know how to deal with other than to try a
> > different program.  If it's successfully producing .txt files but
> > they have long lines that choke "ebook-speaker", you might be able to
> > use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
> > shorter and hopefully don't choke "ebook-speaker".
> >
> > -tim
> >
> > On September 20, 2020, Linux for blind general discussion wrote:
> >> So I just ran into this and was wondering if anyone else has. I've
> >> converted ebooks to .txt with ebook-converr and wanted to run them
> >> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
> >> long phrases and give sme numbers, then does....precisely nothing,
> >> boots me back to the terminal with a bell sound...
> >>
> >> Any ideas?
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

