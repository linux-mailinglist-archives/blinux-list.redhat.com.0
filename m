Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2CCE4362F82
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 13:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618659188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vFNNiP3ZNi3EGEwPkrXF7l6VLWLfB60QG3s5491qQr0=;
	b=JdORDN2tmoIqgrQlI2waUmXl8ZH03klHnl02snpzf41G0T3X4cH+rWcGwh77qB6hbzLAHo
	/+Q3xG2ZzH1MUou2ft7e5QrlEc6j6nuskEydKhWletLSq7cyF9Er+EH0BF5R/gCZEyoEav
	C69gR9uvtRkgZWCnELqRBxs41RPb34A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-sN9embwkO4GcacGdiuTREQ-1; Sat, 17 Apr 2021 07:33:05 -0400
X-MC-Unique: sN9embwkO4GcacGdiuTREQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F18F107ACCD;
	Sat, 17 Apr 2021 11:33:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0A95D74B;
	Sat, 17 Apr 2021 11:32:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A12D1806D16;
	Sat, 17 Apr 2021 11:32:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HBWaLb004261 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 07:32:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 133389D49E; Sat, 17 Apr 2021 11:32:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DD4DE202C
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 11:32:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D8E285A5A8
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 11:32:32 +0000 (UTC)
Received: from mail.suchdamage.org (mail.suchdamage.org [52.9.186.167])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-463-_RiPq-B7Me2J1Kli4XecLQ-1; Sat, 17 Apr 2021 07:32:27 -0400
X-MC-Unique: _RiPq-B7Me2J1Kli4XecLQ-1
Received: from localhost (localhost [127.0.0.1])
	by mail.suchdamage.org (Postfix) with ESMTP id 9CCD630412
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 07:23:36 -0400 (EDT)
Received: from mail.suchdamage.org ([127.0.0.1])
	by localhost (mail.suchdamage.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UsS6wubxZZH for <blinux-list@redhat.com>;
	Sat, 17 Apr 2021 07:23:36 -0400 (EDT)
Received: from carter-zimmerman.suchdamage.org (unknown [66.30.213.255])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "laptop", Issuer "laptop" (not verified))
	(Authenticated sender: hartmans-laptop)
	by mail.suchdamage.org (Postfix) with ESMTPSA
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 07:23:36 -0400 (EDT)
Received: by carter-zimmerman.suchdamage.org (Postfix, from userid 8042)
	id 5B1981A4D162; Sat, 17 Apr 2021 05:23:34 -0600 (MDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Would you be interested in having natural sounding TTS voices
	by Readspeaker on Linux? demo link included
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<a292b20a-bcd7-0b81-b44b-2721e1453e6d@debian.org>
	<Pine.LNX.4.64.2104161344520.2344535@server2.shellworld.net>
	<PH0PR14MB4296C45B393DC59DA08B8B64C84C9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<Pine.LNX.4.64.2104161454040.2346012@server2.shellworld.net>
Date: Sat, 17 Apr 2021 05:23:34 -0600
In-Reply-To: <Pine.LNX.4.64.2104161454040.2346012@server2.shellworld.net>
	(Linux for blind general discussion's message of "Fri, 16 Apr 2021
	15:00:34 -0400 (EDT)")
Message-ID: <tsly2dhupc9.fsf@industrial-algebra.suchdamage.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



> I experience an auditory processing disorder caused by a
> vascular accident occurring during an eye surgery where I was
> given too much anesthetic impacting a part of my brain that
> manages verbal communication.  as a result, speech in certain
> frequency ranges can stimulate my brain's dizzy centres,
> impact how I speak, and if prolonged, can have other
> consequences.  Happens with more than just speech, some
> headphones, even cordless phones and cell models cause the
> same issue when used even if synthesized speech is not
> involved.

Espeak does have parameters to adjust the frequency of the voices.
I'm not saying you should use espeak, or like it, but It's probably easy
to make it less dangerous, and possibly even to make it safe for you.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

