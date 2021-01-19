Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9442FC0C5
	for <lists+blinux-list@lfdr.de>; Tue, 19 Jan 2021 21:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611087570;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Rn8hoe53fzuqTBOsA7LsBL5mxqOZXEvTXzjg+IqA0kc=;
	b=fvmOp++YeiEl7NwKHIFePJ8kk/vz5uE/E2HaVJnx7gIPf1PHyY3xuvgnj4uBGv+pSOrpqH
	usAxgo4CJKTPoZkkuGFPgA8JTypsktieakf00i6nCskcVow9RBvr0mL16Kum+Rh680/py3
	yi6nZTt+7aERTO9K/8+7yxGBganjhVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-zkjCw6nFP_26MtU1VIDVwA-1; Tue, 19 Jan 2021 15:19:27 -0500
X-MC-Unique: zkjCw6nFP_26MtU1VIDVwA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACC8081470A;
	Tue, 19 Jan 2021 20:19:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07EC45D6AD;
	Tue, 19 Jan 2021 20:19:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 971484BB7B;
	Tue, 19 Jan 2021 20:19:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10JKJ8GZ026673 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 Jan 2021 15:19:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4B4452166B2E; Tue, 19 Jan 2021 20:19:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 469502166B2C
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 20:19:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25A9D187504D
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 20:19:06 +0000 (UTC)
Received: from mail.suchdamage.org (mail.suchdamage.org [52.9.186.167])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-r4wuA3g5MM2PDr5lA5HvOA-1; Tue, 19 Jan 2021 15:19:03 -0500
X-MC-Unique: r4wuA3g5MM2PDr5lA5HvOA-1
Received: from localhost (localhost [127.0.0.1])
	by mail.suchdamage.org (Postfix) with ESMTP id 70CCA301AF
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 15:13:46 -0500 (EST)
Received: from mail.suchdamage.org ([127.0.0.1])
	by localhost (mail.suchdamage.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40EQjqgypEab for <blinux-list@redhat.com>;
	Tue, 19 Jan 2021 15:13:46 -0500 (EST)
Received: from carter-zimmerman.suchdamage.org
	(cpe-24-165-19-20.hawaii.res.rr.com [24.165.19.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "laptop", Issuer "laptop" (not verified))
	(Authenticated sender: hartmans-laptop)
	by mail.suchdamage.org (Postfix) with ESMTPSA
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 15:13:46 -0500 (EST)
Received: by carter-zimmerman.suchdamage.org (Postfix, from userid 8042)
	id F3CE6C3BC5; Tue, 19 Jan 2021 15:13:44 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: an espeak phenomena
References: <20210119192128.GA9767@panix.com>
Date: Tue, 19 Jan 2021 15:13:44 -0500
In-Reply-To: <20210119192128.GA9767@panix.com> (Linux for blind general
	discussion's message of "Tue, 19 Jan 2021 14:21:28 -0500")
Message-ID: <tsleeig1y87.fsf@suchdamage.org>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



> I'm using speakup with espeak and espeakup, and over the past
> couple of weeks I've noticed an odd phenomena: on occasion,
> the speech sounds gravelly. If I continue to use speakup the
> gravelliness or roughness of the voice becomes worse and
> worse. But If I stop the speech and wait a few seconds, the
> speech smoothes out and I can use speakup extensively with no
> problems, at least until the problem recurs a few days later.

Are you using pulseaudio?
If so, there seem to be some cases especially with espeak where pulse's
adaptive latency algorithms get unstable and introduce some really
horrible crackle.
This can be particularly bad on HDMI audio out.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

