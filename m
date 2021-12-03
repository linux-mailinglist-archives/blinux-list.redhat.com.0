Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F35467B6E
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 17:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638549109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kJjY05cJegDqLdYsSrrd5A9hVKd2tmQZQok9hVbr+2c=;
	b=UZfZcnbpjlMQbaYXPkIISdJrd1x8RA2/ls0naZegTcTKeDS96oBD6oVX16j9wtg6YmSqSw
	HvMSHDP/Rmvr8TXftKpWHRBxyogPyr32LiK4sMx94MBaVyzQxpLf9Cew07nXCGSf+LmPHm
	lT3iy/SgboC8DxnLmOqB3I9aXZfRnVw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-3w-rCShOOtysYFEqd6F7kA-1; Fri, 03 Dec 2021 11:31:45 -0500
X-MC-Unique: 3w-rCShOOtysYFEqd6F7kA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 844AE8042E2;
	Fri,  3 Dec 2021 16:31:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25EE919724;
	Fri,  3 Dec 2021 16:31:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 910321809C88;
	Fri,  3 Dec 2021 16:31:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B3GTBSb006454 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Dec 2021 11:29:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7347551FF; Fri,  3 Dec 2021 16:29:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69F0C51E5
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 16:29:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2638E805B0A
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 16:29:08 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-592-r-j2P692OWuLywuyPUQgmg-1; Fri, 03 Dec 2021 11:29:06 -0500
X-MC-Unique: r-j2P692OWuLywuyPUQgmg-1
Received: by mail-qv1-f41.google.com with SMTP id u16so3261600qvk.4
	for <blinux-list@redhat.com>; Fri, 03 Dec 2021 08:29:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=bP/xkmd1UWgyaKJDp6jYDs9z4IwGMk9iyKEOgQhMv2I=;
	b=0ChATljYUaHEg80i41ur8BP55uAOv+rfEO/HgI5U6vS1LQXt8GA2+2pBhH+peuiauE
	nlDGn5xXqz8NPeijcHFD/JF3PywLl4WcnVG1PZOvwm+9Pluyuu1VdclSHVPMgbKyIhbZ
	VliFICIvmjEZG8jQxx/9PVo/5LTCqDKJ07k6KjcDAMsDwE6bwwi43QzHq37xV02kQndv
	bXOHESX8huqGHF3BePp8qMLXeIQ+TtXRtwLsmW2DXSh7qMx1sSYDb7geUt8Cw7lPaLKB
	NOkXWEJ6z8llnhCnZb4+o/5Os8phP5OEICTTqEdc/hPwLxTbxkeeX7JsexpiKfmJJ7/l
	aIGw==
X-Gm-Message-State: AOAM532SItV3kd9X4hrlaXSpms19BsRUuAP4ea5zfaXWobdZ7/PmK6Ex
	4eNpDsiccnThfsPwvzereETMuYZmFOkyGSxX
X-Google-Smtp-Source: ABdhPJyMX47cert8Vkx5LtAyguoDh6lYCpEoNOID7kVDocfguvYt055DonovH5GvcLq9iVi1SRkLFg==
X-Received: by 2002:a05:6214:1c8a:: with SMTP id
	ib10mr20896091qvb.89.1638548945945; 
	Fri, 03 Dec 2021 08:29:05 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	u188sm2210126qkh.30.2021.12.03.08.29.05 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 03 Dec 2021 08:29:05 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Have anyone successfully managed to use CawBird?
Message-ID: <1932e187-4027-39e9-0af8-406a7a1c3fb4@gmail.com>
Date: Fri, 3 Dec 2021 11:29:04 -0500
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello Friends,

I installed cawbird after Didier added flatpak to Slint. I thought I 
wouuld give it a try and see if indeed I can use my twitter with Linux.

When I launch the application, It gives me the option to request a pin, 
or to create an account. When I click on create an account, nothing 
happens. However, when I click oon the button that says request a pin, I 
get this error message:


GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name
org.freedesktop.portal.Desktop was not provided by any .service files





@ cawbird

How do I go past this? Have anyone figured it out?

Cheers,

Ibrahim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

