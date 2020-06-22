Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 53EF2204402
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 00:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592866057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cjtxHowah7DJFjs4fyLY2F/Zyd8kKVGhAJ8Y2+tdLsI=;
	b=i+HvwZpgfN7Qb+75jMpkJZpWsEgv6rmOWayOPwNZjhDTiAuOr7T8aC6HqELIxUZ/WK/OfO
	IByutdPo2Tirp5f89Ts0ZgcDXkjJH85y1csErzFsRqAQuGcfvDMOw6C0RTJLwm3g0m6UEJ
	JoRQnr7ksTYia16GhMabfePO+WsY0ls=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-Eml0LKMAMBC4J-UmsVFaMg-1; Mon, 22 Jun 2020 18:47:35 -0400
X-MC-Unique: Eml0LKMAMBC4J-UmsVFaMg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8134691164;
	Mon, 22 Jun 2020 22:47:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD04210013D2;
	Mon, 22 Jun 2020 22:47:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EFF01809547;
	Mon, 22 Jun 2020 22:47:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MMlOj9003290 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 18:47:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED2702156A59; Mon, 22 Jun 2020 22:47:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E87D92156A54
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 22:47:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9EE5858EE2
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 22:47:17 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-96-DaUWTIkKOrKzDt6uloxqHQ-1; Mon, 22 Jun 2020 18:47:15 -0400
X-MC-Unique: DaUWTIkKOrKzDt6uloxqHQ-1
Received: by mail-qv1-f53.google.com with SMTP id u8so1726882qvj.12
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 15:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=UMC88dBzYzrvApDDSeXJeE2QnI04/fyarY9Yd2UgFRI=;
	b=Tm3B/Embha+S3SBQBKwSNTq3S9yd+oEb5njhoev16EpbuooNEeVZ9MQOQnTncoRTqg
	jFkI5nH3Q+BKmEYHacNoyH1b7JUNnH4CB5V5myRTh4fJYbPITkKBewMQPgRx+xjJX3BT
	CsdKFRYFFzC9l4qboBSsF1iWpOXevyOpWu4zTMQrXOd9mSjFcdb0G8nuyxfCH6FVj3rc
	l/V4xSxEdzLc9izuvh67vK3PSRbSsl8n6q13ao6VKy1zv9yTMoZOI7zudR+yczUJAIm8
	fcDNGIq4uxECeip8DHW2RyznVusMIAezLYYXdSAx3hn11247wux8iDEEk9iSWUhMbcHV
	Zimg==
X-Gm-Message-State: AOAM532fjkOm8poYu4fTz0mtbFFZtLB5x4hUcKetP6QRACcI1cmBszqu
	Fu6mW0TBmw1TbIcHi+24I1fcdskgREi235ukbACi/Y5Z
X-Google-Smtp-Source: ABdhPJzTQP1kh3UMtpaci2YFerodv3UqsNzOsrbxanLDXXqrHh0d/m4C4q5Mq+dlZuzVFP3m06wlrSkEu/bLALg4GHs=
X-Received: by 2002:a0c:bd91:: with SMTP id n17mr7447798qvg.226.1592866034998; 
	Mon, 22 Jun 2020 15:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Mon, 22 Jun 2020 15:47:14
	-0700 (PDT)
In-Reply-To: <004701d648e3$0ac2e850$2048b8f0$@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
Date: Mon, 22 Jun 2020 22:47:14 +0000
Message-ID: <CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, I don't really get the objection to the word "share" in the
context of telling someone about an experience, and while saying
someone has issues is vaguer than saying someone's nuts, I don't
really see such as euphemistic... granted, someone having issues could
just as easily refer to everyday stress and/or bad luck.

I'm also okay with the word "literally" being used figuratively(e.g.
saying someone literally exploded as metaphor/hyperbole for a fit of
anger).

Then again, perhaps my inner linguist is just more of a descriptivist
than a prescriptivist.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

