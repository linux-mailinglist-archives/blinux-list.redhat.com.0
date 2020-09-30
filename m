Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 51CB227F150
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 20:31:23 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601490682;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nCi65NaTXkjv6l2hCI0Z73o5YcXXgkmzzDS3glI/ooA=;
	b=QDGtAkL2hSimUPVmEb8zp4r0mK7YrQ5bPMTaO9X0kDKZQx4xDwGbEw/rqw2BLr2WhgiSOD
	k1qmbPbiHxPsX24dRkhQqpRowVFj79/+BHi3iYk+KG5+mMgl/nE75vYcDaLOeJq2AJZWFY
	D/kxvZi3qyP0rsW9qpooLeRMuNlN9Tg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-PDDi3t1NM-SlLPseSdMW7Q-1; Wed, 30 Sep 2020 14:31:19 -0400
X-MC-Unique: PDDi3t1NM-SlLPseSdMW7Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6888B101FFA4;
	Wed, 30 Sep 2020 18:31:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F65E5D9D3;
	Wed, 30 Sep 2020 18:31:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEA0E44A5B;
	Wed, 30 Sep 2020 18:31:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UISMtJ024099 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 14:28:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F7CEF41B6; Wed, 30 Sep 2020 18:28:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B7A0F49C9
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:28:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F24F811E78
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:28:20 +0000 (UTC)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
	[71.19.155.94]) by relay.mimecast.com with ESMTP id
	us-mta-445-NpC_GVO3MraOx-EnXLelUg-1; Wed, 30 Sep 2020 14:28:17 -0400
X-MC-Unique: NpC_GVO3MraOx-EnXLelUg-1
Received: from localhost (unknown [63.224.249.220])
	by hurricane.the-brannons.com (Postfix) with ESMTPSA id B478221DE04
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 11:19:16 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
Date: Wed, 30 Sep 2020 11:19:16 -0700
In-Reply-To: <20200930121251.7d6b8c35@bigbox.attlocal.net> (Linux for blind
	general discussion's message of "Wed, 30 Sep 2020 12:12:51 -0500")
Message-ID: <87tuvf2km3.fsf@cmbmachine.messageid.invalid>
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

Linux for blind general discussion <blinux-list@redhat.com> writes:

> As my go-to, I'll add "yasr" to the list (though I've been meaning to
> check out fenrir).

There is Jupiter: <https://eklhad.net/jupiter.html>.  The author prefers
the term "adapter" to screen reader, and in many ways Jupiter doesn't
exactly behave like a screen reader.  It has a mode where it operates
like one, but by default it works by capturing and reading a
transcript of a terminal session.  So you aren't limited to the 25 rows
and 80 columns of a standard screen.  This works best with applications
that have a "command-and-response" style of interface, rather than a
full-screen curses interface.

Speaking of yasr, there is tdsr: <https://github.com/tspivey/tdsr> which
works similarly to yasr.  tdsr has a bit more of a modern feel, with no
dedicated review mode and so forth.  It is small and written in Python.
I think the author had a basic working implementation after a couple of
days.  It runs on Linux, Mac, and possibly other operating systems.

-- Chris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

