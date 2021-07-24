Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BB7523D4823
	for <lists+blinux-list@lfdr.de>; Sat, 24 Jul 2021 16:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627137014;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uY6SPA8NoIuu4IfjjcCPuGY/MescaBQPaNavXX8NWXs=;
	b=i4VqZMZgcmls0XnnBXrrvoUo4jezUUTmy2+AgKXy+kiFBGwTH0rU4jHTCfrxqbBSuc8bUY
	vTjLsStDvIgpOe7yFnBHBjI1watfNDkoqvywaDU9kZBI7a0mG8BsoPxY5wCeeRgIVA7GK8
	1PzvZ4izeZMqkWxXlat9GjoocsMRY6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-GvXRLU85MwqX_hfqL8FFXQ-1; Sat, 24 Jul 2021 10:30:13 -0400
X-MC-Unique: GvXRLU85MwqX_hfqL8FFXQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44CEA34879;
	Sat, 24 Jul 2021 14:30:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 354F817D4E;
	Sat, 24 Jul 2021 14:30:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E331B4BB7C;
	Sat, 24 Jul 2021 14:30:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OERhvG021476 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 10:27:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E6554215CDCC; Sat, 24 Jul 2021 14:27:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1D17215CDC0
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 14:27:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDD2E80D2AC
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 14:27:39 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-177-14jM6eXzPwGCj9S9Em4dGA-1; Sat, 24 Jul 2021 10:27:37 -0400
X-MC-Unique: 14jM6eXzPwGCj9S9Em4dGA-1
Received: by mail-wm1-f50.google.com with SMTP id
	m20-20020a05600c4f54b029024e75a15716so2391967wmq.2
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 07:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=b927gxi/PowDZfM8EO/XL13d8cX7N1pmR57snhFgJb4=;
	b=nbE7Hp4Lu0Yit9awZ+2z4E+cSOQL2VTuSWFvy8G7sM/YK6gZyHlkY/FP550lxFip4E
	j9StrD2YF4V7mxcNmEl4dCFIpQPb0P40g0FHU9O2Ie0XNEgsnwGMrm1Ni7inGmjZ6Ow2
	hBRRDaobquKLAoFOS2mUXuLUY/V+ojkmfSgLdu9l+5sIxrXDuuNNZ7EAN1LaNhhm9gKk
	J1kws81Y1kfLDiUK/F4y7Boc1EzLWtcPy4KgHHAIIBaD1njLqmmkaboyJ54xpD/9nKZ5
	DuUEZ2uF7wC6+hOxxZzZRcl3Wdh6P/6Wz/z1mP6sbCEAXE8GxsOG91TeeVpPFxOZ89/u
	WBvg==
X-Gm-Message-State: AOAM530lAY6khMDGlOYHz4ZScRJBsn7iUz6HE4tBbqGYcwXdd8O50HNG
	IKUCKWT5n3G20nwWOEGSPj8ezMaP8fw=
X-Google-Smtp-Source: ABdhPJyil5101N0dAMDE0+ijEl10wn4JyJjB5+RIXW7S6hwT8gByZ5vsrRxxro3DxH2hwXfYf1aRvA==
X-Received: by 2002:a05:600c:4f0d:: with SMTP id
	l13mr7110850wmq.109.1627136856233; 
	Sat, 24 Jul 2021 07:27:36 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id q14sm184365wrs.8.2021.07.24.07.27.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 24 Jul 2021 07:27:35 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Flatpak on Slint
Message-ID: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
Date: Sat, 24 Jul 2021 16:27:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I installed flatpak on my Slint installation, for the simple reason, 
there are no up to date Twitter clients that I can find.


I looked at the Slackbuilds, but nothing. Cawbird, my favorite Linux 
client, for now, is available as a flatpak, but when I try and run it, I 
get a broken Pipe error. Can anyone help with this issue?

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

