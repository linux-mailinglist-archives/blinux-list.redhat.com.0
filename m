Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E1B85271502
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 16:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600612319;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bLc08TczEqdz3VZZlpMcXA7/iWmvQfM8pGdWUv2AAn4=;
	b=Dh4dAVO9wTMMNeaVeWmEkT/1lfOoxJ0VFAPmYXOGIpb/ZpMLBGeQP0Qb7fGKRkSADL8qjS
	qWIZSeIwq8AyFzUFU1hpSR61ewKgt01Lywj20hv2I6D0GldNXgpT6xqeIfbAevvfGRXEgy
	nLIDekc2fNtmnesH/SpolOFaDH+ZH5Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-CryXo4ZuNkiWSA-X90n6lg-1; Sun, 20 Sep 2020 10:31:57 -0400
X-MC-Unique: CryXo4ZuNkiWSA-X90n6lg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 500B156ADE;
	Sun, 20 Sep 2020 14:31:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD7435C1C4;
	Sun, 20 Sep 2020 14:31:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECC44183D043;
	Sun, 20 Sep 2020 14:31:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KEVk8g006739 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 10:31:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C64F749C1A; Sun, 20 Sep 2020 14:31:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1D8249C3B
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:31:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B695101A53F
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:31:43 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-552-eTZ6Nyu-NeGp6VmNLdWwhA-1; Sun, 20 Sep 2020 10:31:40 -0400
X-MC-Unique: eTZ6Nyu-NeGp6VmNLdWwhA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4BvVPm3Zkyz21gq
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:31:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id S7V_WRKUZrYm for <blinux-list@redhat.com>;
	Sun, 20 Sep 2020 14:30:37 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4BvVNX5c2tz21gp
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:30:36 +0000 (UTC)
Message-ID: <20200920.143000.205.58@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: ebook-speaker/UTF-8 long files
Date: Sun, 20 Sep 2020 09:30:00 -0500
MIME-Version: 1.0
In-Reply-To: <b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
	<20200920.133216.759.57@[192.168.1.130]>
	<b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08KEVk8g006739
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

What sort of error.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 20 Sep 2020 15:19:50 +0100
Subject: Re: ebook-speaker/UTF-8 long files

> That just give me an error on input/output files however though
> 
> On 20/09/2020 14:32, Linux for blind general discussion wrote:
> > Try this
> > ebook-convert file.mobi file.txt --linearize-tables --asciize
> > See if that fixes your problem.
> > Rob
> >
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Date: Sun, 20 Sep 2020 14:07:24 +0100
> > Subject: Re: ebook-speaker/UTF-8 long files
> >
> >> Tim, it's ebook-convert from the Calibre package, and yes they are .mobi
> >> format originally, and given I've not found a way to natively read them
> >> on Linux with Orca, I figured okay, I'll convert them. They do display
> >> fine in Pluma however and I can read them that way, but I'd like the
> >> convenience of ebook-speaker really.
> >>
> >> On 20/09/2020 13:30, Linux for blind general discussion wrote:
> >>> Tim here.  You say "It tells me to wait", but it's hard to tell
> >>> whether it's "ebook-converr" or "ebook-speaker" that's giving the
> >>> error.  So it's hard to tell whether it's source lines in the
> >>> original ebook that are giving trouble (in which case it would help
> >>> to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
> >>> If it's the former, it sounds like an issue with "ebook-converr"
> >>> which I'm not sure I know how to deal with other than to try a
> >>> different program.  If it's successfully producing .txt files but
> >>> they have long lines that choke "ebook-speaker", you might be able to
> >>> use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
> >>> shorter and hopefully don't choke "ebook-speaker".
> >>>
> >>> -tim
> >>>
> >>> On September 20, 2020, Linux for blind general discussion wrote:
> >>>> So I just ran into this and was wondering if anyone else has. I've
> >>>> converted ebooks to .txt with ebook-converr and wanted to run them
> >>>> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
> >>>> long phrases and give sme numbers, then does....precisely nothing,
> >>>> boots me back to the terminal with a bell sound...
> >>>>
> >>>> Any ideas?
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
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

