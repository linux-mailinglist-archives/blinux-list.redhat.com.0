Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2817A2A5B3B
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 01:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604451174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ybWEwheGWnwBttOpJXKtNZOYulJM03qmkfpBbJUaMgw=;
	b=VbHmu8o07cJ9STE8fCIVWrhwDd2vK6BzKsDexQG7QTH2fz1D1yYup2pqqIKNZHInRyK+Fl
	mMk6AKzNoZeqY5VSTf5gmiR8VvTUZufO7q87Bb0XRa2U+c5fToFXaW4pMtteEv2dlbh4ql
	44aTyAld6idqUdoaeJfboqtGAcwQYq4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-fRoOL4sENg2hlqp01cZ82Q-1; Tue, 03 Nov 2020 19:52:52 -0500
X-MC-Unique: fRoOL4sENg2hlqp01cZ82Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 759908015FB;
	Wed,  4 Nov 2020 00:52:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E00355B4DF;
	Wed,  4 Nov 2020 00:52:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 109EC180B791;
	Wed,  4 Nov 2020 00:52:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A40qh3T006818 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 19:52:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E502F100294B; Wed,  4 Nov 2020 00:52:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B501134CD0
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 00:52:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4A68811E82
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 00:52:40 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-244-97jizu8TNf-OOPZu3NemQQ-1; Tue, 03 Nov 2020 19:52:38 -0500
X-MC-Unique: 97jizu8TNf-OOPZu3NemQQ-1
Received: by mail-qk1-f175.google.com with SMTP id k9so17344545qki.6
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 16:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BhgzJ2sT/kruJUbnaHAHzsY0rrZZD6KY6m2pT2o4dGE=;
	b=FgDOPXZv71RC92gzcUcfD1iJCXm+w0N3kQCRXOCsPG5JLh84pbQi+ZriEO1ytE/J4B
	+99GYBwA4jAB43AYi+i8BKIrTTRx1Bhv3alJ/a4xSFjCz3tedRzcnauG1AQnhLEyPDSc
	aHmALhl5UFwT5DZCnkXvVUhv/7TnIkj21Vxb7U484AkhHWiouWG5b4DzJVhF3coO4OUG
	6EHk1O9Xxv4/ioUmsOU2oGsKT0vfCjThOGvl32XFbPhc3Dy8lBa/cyfA13P+TUJMGj3F
	SWDbdysqr3Px8U4M/i60VIb92wlApvBueqQ6NzkPVYwwAubJ4mvCVYU3riS3AJ+fMoa9
	eTfw==
X-Gm-Message-State: AOAM531InIVmnH6BZDH24Uk60hOS5R0V+xuUWB8keVzDAnQPjNLIL51P
	cqETbi1kuGsWWg2LpPtCpt0YXQKOeZ+MRw==
X-Google-Smtp-Source: ABdhPJySx/PvyzprtdZZLs2/zHAHvY1qANNqkxz9xEZoQUpYdp2HbMzC/gydt03ULt9MenI79fxc+A==
X-Received: by 2002:a05:620a:22c9:: with SMTP id
	o9mr23070247qki.286.1604451157991; 
	Tue, 03 Nov 2020 16:52:37 -0800 (PST)
Received: from [10.1.1.228] ([71.65.173.238])
	by smtp.gmail.com with ESMTPSA id z69sm736852qkb.7.2020.11.03.16.52.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Nov 2020 16:52:37 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<81EA0C39-FAB8-4D0A-AE23-20128A853C36@gmail.com>
Message-ID: <2efcfd32-6658-b7ed-0782-fc44648e6b6e@gmail.com>
Date: Tue, 3 Nov 2020 19:52:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <81EA0C39-FAB8-4D0A-AE23-20128A853C36@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Since that machine is a tower, the ethernet chip could possibly be on 
the motherboard, but it may also be a card that you can remove and 
replace with another. Ethernet cards that plug into PCI or similar 
internal slots are not very expensive usually. If you do have a card and 
not something onboard, I would recommend replacing it. Broadcom hardware 
does tend to be a bit of a pita on some Linux distributions. Wifi is the 
worst, but ethernet can be problematic as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

