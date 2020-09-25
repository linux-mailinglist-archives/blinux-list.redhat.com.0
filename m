Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1C62793FB
	for <lists+blinux-list@lfdr.de>; Sat, 26 Sep 2020 00:13:02 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601071981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R/EDT5w2XEeVQGsCtWZZm7OolZuhmgq51sd0nWJ67t4=;
	b=h8yxjpH2gU93T0pILNMldYk/Yq5AQloQUSQ/yN8w946Ssmr866XbcQcWSlqCHfPoGjLE5e
	gd3U1SuO5WoMiaf9qfNriRJYm1U26oxHvDxjvOjgaUbS4QYFcSXkAwgvvlGr5O8S+t7klH
	VPcixBUTT+xd4Gug0sZ5OfDl0Q5j+bA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-s5am2cNRPTmVwoWOH1uLfw-1; Fri, 25 Sep 2020 18:12:59 -0400
X-MC-Unique: s5am2cNRPTmVwoWOH1uLfw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99B5F107464A;
	Fri, 25 Sep 2020 22:12:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B995D9F1;
	Fri, 25 Sep 2020 22:12:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7457879FF3;
	Fri, 25 Sep 2020 22:12:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08PMCjc7002461 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Sep 2020 18:12:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 24D4C11E5B7; Fri, 25 Sep 2020 22:12:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2044D11E5BB
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 22:12:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DBC0101A53F
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 22:12:43 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-410-swncLedrNHWgl9ngymEG5A-1; Fri, 25 Sep 2020 18:12:40 -0400
X-MC-Unique: swncLedrNHWgl9ngymEG5A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BymPN3P6NzqQl;
	Fri, 25 Sep 2020 18:12:40 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BymPN2MBLzcbc; Fri, 25 Sep 2020 18:12:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BymPN1pLNzcbV;
	Fri, 25 Sep 2020 18:12:40 -0400 (EDT)
Date: Fri, 25 Sep 2020 18:12:40 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [orca-list] jenux status
In-Reply-To: <CAJ1g4g8Ydo32J70Pz20Z6+baPxFgnbJdwNE0SJtehf1QLCsJuQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2009251811390.4111@panix1.panix.com>
References: <alpine.NEB.2.23.451.2009250454490.7003@panix1.panix.com>
	<0b3401d69353$43db9140$7001a8c0@NUCPPYH>
	<alpine.NEB.2.23.451.2009251630502.8733@panix1.panix.com>
	<CAJ1g4g8Ydo32J70Pz20Z6+baPxFgnbJdwNE0SJtehf1QLCsJuQ@mail.gmail.com>
MIME-Version: 1.0
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
Cc: Glenn K0LNY <glennervin@cableone.net>, orca-list@gnome.org
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

That is not jenux.  If you go to the correct url, you will find no
mention of rockbox.

On Fri, 25 Sep 2020, Linux for blind general discussion wrote:

> Date: Fri, 25 Sep 2020 17:06:19
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Cc: Glenn K0LNY <glennervin@cableone.net>, orca-list@gnome.org
> Subject: Re: [orca-list] jenux status
>
> On Fri, Sep 25, 2020 at 1:36 PM Linux for blind general discussion
> <blinux-list@redhat.com> wrote:
> >
> >
> > On Fri, 25 Sep 2020, Glenn K0LNY wrote:
> >
> > > Can you refresh us on what Genux is?
>
> "This is a bootable DVD image that can be used to install either
> android or a fully accessible Arch Linux based System called Jenux. It
> runs on any intel-compatible (64-bit) computer. "
>
> <https://jennios.com/projects.html>
>
> Best regards,
>
> Paul
>
> --
> [Notice not included in the above original message:  The U.S. National
> Security Agency neither confirms nor denies that it intercepted this
> message.]
>                                                 ?\_(?)_/?
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

