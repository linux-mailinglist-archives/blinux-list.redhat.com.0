Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 234032E8F27
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 02:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609722450;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dBzMG0p2hrnajdBFQxMxumrDor59w7VtTZ67PvkT1nE=;
	b=O06QRmSLAX4hLI0N2gnj9nZWl6fYHz4KoIOg4csB5p65Z8oTq0BGlaS0K9RKbm4JsKu9I/
	BBAWlIfMTwka898i+ZCyg8MS3/1rceOkruTd9aJxkMkRLU3ZoFK7qqhFSjULelR/O2fW0p
	NBF279ef5/vpgW2+XmKLIWWn//Z194o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-tqyqrsozNOq0FAeWDlxC6Q-1; Sun, 03 Jan 2021 20:07:28 -0500
X-MC-Unique: tqyqrsozNOq0FAeWDlxC6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A12ED15720;
	Mon,  4 Jan 2021 01:07:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 212065D9D3;
	Mon,  4 Jan 2021 01:07:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A1B64A7C6;
	Mon,  4 Jan 2021 01:07:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10416wDT014832 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 20:06:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD0B47C51; Mon,  4 Jan 2021 01:06:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D76E49D484
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:06:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A71ED858EEC
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:06:56 +0000 (UTC)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
	[209.85.166.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-488-g9hAoYxZMY-koAAsXV_hqg-1; Sun, 03 Jan 2021 20:06:54 -0500
X-MC-Unique: g9hAoYxZMY-koAAsXV_hqg-1
Received: by mail-il1-f181.google.com with SMTP id u12so23868514ilv.3
	for <blinux-list@redhat.com>; Sun, 03 Jan 2021 17:06:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=uwHNNCr0uQTJQ3d0dNThyvOHvef759KEtABkgSRd/vE=;
	b=iDdYU77Im4zem016ZWcTPA/4RMZqDKoKIbA1gkUu0lH4Tl1Hktpv6CPBuAaWYHIkdF
	GYE0vn8I8G8AhVL61vgUAeE4dVC/3+cJAT8Szv50spRJAGMk1wmhNlJlwIWWQxkV9O56
	h29OXGAgAfsSLhYDdDXX8FciKCcbR87O/DzKijCNWlZM2D7eXxw4kiIM07aF+PjVErEn
	8JhsOI31iA/ekoRHolLjfruVDD8GX6A/bdYd8+oKGM4l651h37flJHR6SPBqtI5Yllzh
	MX3tyP7264xOUvhiKTTxnr/bciXhRDC+DaedHLYDVCwNJR6slM95vQrtNpD1/soApTxb
	JVQg==
X-Gm-Message-State: AOAM533mTi8DK48sKesMhzkuGPsytZ6+QYa8NLFdJUUbA4tV43f+LSPQ
	qTyEEHokPO8M2YinXl7/XfUPuMs4QJk=
X-Google-Smtp-Source: ABdhPJw8zTlHwaBTmG89vpgeRnbKnrZAXVIthuO3YCXYM6+mg0swHE9YipEU38wpWwxcoCJryMYXTg==
X-Received: by 2002:a92:6403:: with SMTP id y3mr67117312ilb.72.1609722413574; 
	Sun, 03 Jan 2021 17:06:53 -0800 (PST)
Received: from ?IPv6:2601:249:c000:3ca0:19b5:99aa:30f:dab4?
	([2601:249:c000:3ca0:19b5:99aa:30f:dab4])
	by smtp.gmail.com with ESMTPSA id y3sm41691145ilc.2.2021.01.03.17.06.52
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 03 Jan 2021 17:06:53 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: speech output log
Message-ID: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
Date: Sun, 3 Jan 2021 20:06:52 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I'm using kodi on my laptop and need to get messages that kodi 
screenreader outputs. Is there a way I can find this log because I have 
no clue what to monitor with tail.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

