Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EEC663ADB65
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 20:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624127935;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=72kT+q5QtBqnhDK/cm1459XFE5Rkl5M6mLwackN42oU=;
	b=Sr7p53uyjox5tCfzdxKeY+x0aEjMO3ESCYy6E2Au472f/ZOeJeOd4k08p1TGejjJDLJgfm
	O7bxP0S5xRwQ1sv0/yBZ3Mpncwi0wjWoOJHxaTUxkF2yZkiQexQEBQHO7R+XGAH1K2Dfxv
	xlwtatlHoXIRp5VRCrMac77T0Fi9uWM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-CMfOXQ7CM8qRq8XN8huHFQ-1; Sat, 19 Jun 2021 14:38:53 -0400
X-MC-Unique: CMfOXQ7CM8qRq8XN8huHFQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 13E4E801B2F;
	Sat, 19 Jun 2021 18:38:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB5B810023B5;
	Sat, 19 Jun 2021 18:38:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6316D4E9F5;
	Sat, 19 Jun 2021 18:38:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JIZbd6024263 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 14:35:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 686EA20236D1; Sat, 19 Jun 2021 18:35:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63E8B20236D2
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:35:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1279C858287
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:35:35 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-205-0DGSY1GjMLKi_GEX341U4A-1; Sat, 19 Jun 2021 14:35:32 -0400
X-MC-Unique: 0DGSY1GjMLKi_GEX341U4A-1
Received: by mail-qk1-f180.google.com with SMTP id i68so19616909qke.3
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 11:35:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=XYVElzuYdwXaVG1V+TqZrhtg5PkOvIbHsnOhErLIvAQ=;
	b=QftoCBVNgBloNuPT97QH3LhGAvCB/JPi5qdtPUa1zVquHJPkzQFmkzt0fAKFouzcaP
	AEu6cr+Ahn7p2idNGe8RfdlQxRihvZobhbKMRl3a9oMsXnfU6o0+RJscJ63UyfyI9/wE
	8ENTW/iIVVl7DNbD6Tpo8LKKu/NyjOod99mxUAZKUgISNOWr2BYkqO/pPNfyg93lFG6Z
	UT43VY6wcHglUQZw0c03Iq17xO8U5FHvTUo59xDIHfIdKNXoYIJKdTXLUAThMxnjVUqb
	lcZZEokuJPxV67KHDhGc0u2m5WpP8MfJyPeEoB9r9YjCoW0soaWHhqO3wCnYYB44Y5CS
	q5rg==
X-Gm-Message-State: AOAM531YfjGUQmnpch6smsAXSceq0u0uDFDLWe+PBnHfZMsucaGTD3MH
	aTjG0YXr3QaUDueRiB8NztsJehWm4SCrwOax/qXDt6JmZf8=
X-Google-Smtp-Source: ABdhPJwqlaeIGrUEOCRH9REGj+CY2d2PBHPJj8016Vyx52gegafGBRafOEXUjsLR7aSdaFI+gex3HLifqFbWEG0K0PI=
X-Received: by 2002:a37:8dc4:: with SMTP id
	p187mr15644226qkd.264.1624127732335; 
	Sat, 19 Jun 2021 11:35:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:fd8c:0:0:0:0:0 with HTTP; Sat, 19 Jun 2021 11:35:31
	-0700 (PDT)
In-Reply-To: <CAO2QrD6DD6r67u-7bQDEk1Ff+d=g9azSEJ-3xMQEKfC4S+9DNA@mail.gmail.com>
References: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
	<CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
	<alpine.NEB.2.23.451.2106191320550.21342@panix1.panix.com>
	<CAO2sX31MW+14At-s9oXoDpdi7YHLH+Gj=LQtug_EcpAjcTVzgw@mail.gmail.com>
	<CAO2QrD6DD6r67u-7bQDEk1Ff+d=g9azSEJ-3xMQEKfC4S+9DNA@mail.gmail.com>
Date: Sat, 19 Jun 2021 18:35:31 +0000
Message-ID: <CAO2sX31aoPFptRvmtp_um+ZQdw2g3aqZ4MR=ENPBjVtPY7cujA@mail.gmail.com>
Subject: Re: Accessible linux distro for raspberry pi?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

The e-mail to send messages to the Raspberry VI mailing list is

raspberry-vi@freelists.org

No idea how to subscribe as I've been on there since before the
original Pi 3 came out.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

