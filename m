Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D94CC2D9006
	for <lists+blinux-list@lfdr.de>; Sun, 13 Dec 2020 20:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607887412;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kzA66oOmXxp+0adGB/ecSJoorlARDrPmjdlT3P7SSNg=;
	b=VtTE0fnWMBPBkP6eQ3MJayscaOtFdIImnbMa0vpZpE+iiWriDYaEvLCK5T8LxRzDHFCpQ7
	qIPPvgNu8BfS7yy7mPWapHJ4PzRSlp+MNJDOjUl0S30xoiwChwOxleqw95WiZF3dmSa2Aa
	WBY7nssc/U6a8TecBH/dtYBKaNSr9h0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-Gi6QbWhHNIWqXqR5fOQpGw-1; Sun, 13 Dec 2020 14:23:30 -0500
X-MC-Unique: Gi6QbWhHNIWqXqR5fOQpGw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E53C559;
	Sun, 13 Dec 2020 19:23:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50F6D10023B4;
	Sun, 13 Dec 2020 19:23:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA7CC4A7C7;
	Sun, 13 Dec 2020 19:23:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BDJN93V014637 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Dec 2020 14:23:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 736722166B29; Sun, 13 Dec 2020 19:23:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E56E2166B2A
	for <blinux-list@redhat.com>; Sun, 13 Dec 2020 19:23:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A30D800B3B
	for <blinux-list@redhat.com>; Sun, 13 Dec 2020 19:23:07 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-591-DOoVc1BzNGe0pORBTT_cOg-1; Sun, 13 Dec 2020 14:23:04 -0500
X-MC-Unique: DOoVc1BzNGe0pORBTT_cOg-1
Received: by mail-qk1-f176.google.com with SMTP id 186so13749090qkj.3
	for <Blinux-list@redhat.com>; Sun, 13 Dec 2020 11:23:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:message-id:date:to;
	bh=Ibonx7dGyfCt0R1TTSvCfLXJKNgj1pky35q2YTaufVs=;
	b=VDd4gBFFdVQ3r2CaUIAIDSv9xvw5paF6X7giaJecxf2IB4+N2aNX6zU2IIv6x/uwCD
	7ma5ikhwlsFLt4DAPVwk8CeISGcOuvB8YC4xx64m4kF1njSg56LZGY3Q3EQmvMA2Oal8
	mSCOeaOcUQBUPoD8o7oriQiCfXyFRH1xptjYlL6ms0/smvVx7q2mU2tUdheiYb1ayt7q
	KmtJevznoWyOXdk575RSteNbuqz9PP42SXMqTYaBqk5ecY+jgXn0Uysj/dj4NtN9I80n
	h0FSwyzjR9DQZqmHiqL582WhdO7C6P/P0wbYQTmmemUgzIaTiUwDejmcKCOZhMaiRQaf
	eweg==
X-Gm-Message-State: AOAM5330nNOw3O3OBCWEPoCgqDO1QBs3FKT9jWb1cEFlZsXHJP72q50b
	IIct6USz5+5eS9p7Gg+UMog1ZVM3rNzFAA==
X-Google-Smtp-Source: ABdhPJznGiDWrJ5pZYk4Na6jY6lde68T61JiqPRy0f8NrmYFlNvC4GDzx1+esyCGf5e3j/rcyL65iw==
X-Received: by 2002:a37:aa57:: with SMTP id t84mr7592959qke.348.1607887384038; 
	Sun, 13 Dec 2020 11:23:04 -0800 (PST)
Received: from ?IPv6:2603:9002:306:2200:f0c5:a9dd:ab5d:14e0?
	([2603:9002:306:2200:f0c5:a9dd:ab5d:14e0])
	by smtp.gmail.com with ESMTPSA id
	f11sm10077767qtm.45.2020.12.13.11.23.03 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 13 Dec 2020 11:23:03 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: Does anyone on here know anything about BRLTTY?
Message-Id: <B06F00C0-707F-45E0-BE3C-FEEFFD09EA97@gmail.com>
Date: Sun, 13 Dec 2020 13:23:02 -0600
To: Blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BDJN93V014637
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use it every day but only in ubuntu command-line.
For windows nvda was much easier for me.
Brltty has a configuration file or you can specify options on the command line.
Their email list is very friendly and helpful.
Brltty@brltty.app



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

