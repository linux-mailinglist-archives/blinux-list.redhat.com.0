Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 362F2425FAF
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 00:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633644779;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4koK63V34CDuRssYGFcE0HrTUPP6xJtzwHVydfvp5vU=;
	b=fxOXf64beNpvmmY3pVadv7UV6zGfgINS0BYLGaQT624/Qz1SmIWsEiVH6rSQfxHLb0xthd
	Jg+KLE935k3ao1xeao1qyDWVlwc/HA9929ca3jTk39FmpIdQeSjQkleaQeAaButh66TuIY
	q286kBmzVMPY7mjRUorUeUkRhfEfZnY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-j9KaCB2CNGaWkcutgLwrgw-1; Thu, 07 Oct 2021 18:12:57 -0400
X-MC-Unique: j9KaCB2CNGaWkcutgLwrgw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FCE6159D6A;
	Thu,  7 Oct 2021 22:00:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20C7B102AE47;
	Thu,  7 Oct 2021 22:00:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F73E1806D03;
	Thu,  7 Oct 2021 21:51:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197Lm8XX013348 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 17:48:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A7362166B3F; Thu,  7 Oct 2021 21:48:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4515C2166B2F
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 21:48:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54AB0800B28
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 21:48:04 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-212-_PpIh7dzN62hzzmdy_QuAw-1; Thu, 07 Oct 2021 17:47:56 -0400
X-MC-Unique: _PpIh7dzN62hzzmdy_QuAw-1
Received: by mail-oi1-f169.google.com with SMTP id t4so9165797oie.5
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 14:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=SWB+EfG3oSYAsx79U0XNHgRnRcYd7gwGBk0RAjKDepk=;
	b=0kfYI5leCZgK5M6j9kGBGzWBHOey09HYjaqCR8idN+9GRAkDPuLsxL7giNUV1upTZy
	Pt1Xey1lfnfGP87QLVSN0LTDSxE9l+m7SqfVCrbUfhoo+SfzV94XxcELYGG9dO723TBb
	MKuWY9UZgJLv8BUxahUv/MKJsDU+e66HfDvI+RaSonMD+U1/Cmwfqk1Ow/Ksr0o9Ajvg
	IqVeLZbYtCQdY/4WgNH2dk/K9hXr1H6xFznAgPs2/kwlsNURrmnHTJVBddaM3oWoUYa7
	0zSQkvLA5p3QsF8cSkR31zw33OHht/VvBjGbstg95+yr9fwHkOBE5igOjszLg3d80aM4
	yC3w==
X-Gm-Message-State: AOAM533o9mfSusYF2xjrV8h4EOrxYwOcHH+wfgJ9H8/HmPDTOLWUowVk
	8kTlkZMB64jIU6t1GOsRuPYvBsH8PbA=
X-Google-Smtp-Source: ABdhPJzCHeHnUxocn9HCHqK75piyjWS7NoRX8AKAgWzt7DnDMIG103jAQjfGc7dnL5/jkAo/xcozfQ==
X-Received: by 2002:a05:6808:1148:: with SMTP id
	u8mr5032957oiu.33.1633643275121; 
	Thu, 07 Oct 2021 14:47:55 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:6d95:cd33:efa8:ddc5])
	by smtp.gmail.com with ESMTPSA id x8sm130819otg.31.2021.10.07.14.47.54
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Oct 2021 14:47:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Mate Desktop questions
Date: Thu, 7 Oct 2021 16:47:53 -0500
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
Message-Id: <765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 197Lm8XX013348
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have not an answer for your question, but am curious as to installation.
When trying to install ubuntu mate 20, orca would come up, but I could not get to the install screen.
I was stuck at super user.
How did you install?

> On Oct 7, 2021, at 2:56 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi all,
> 
> I am setting up two laptops for sighted people, but I will be maintaining/supporting them. I am using Linux Mint Mate 20.2. I have two questions...
> 1. How do I access the task bar/system tray using Orca?
> 2. The Logon screen has multiple users defined. Sometimes, Orca will not speak on this screen. This sometimes happens at boot, but always happens after logging off one user and wanting to login again as a different user. When this happens, the Alt+Super+S keys have no effect. Other times it works perfectly fine--frustrating. Any thoughts/suggestions on this one?
> 
> Thanks,
> John
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

