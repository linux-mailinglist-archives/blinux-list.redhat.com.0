Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3784D2A2299
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 01:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604278238;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WmSGcuyCZ63NLtfqwsXfcfXiv7mJALndUKGCiEC2aA0=;
	b=QG4lsfI0V8lfSrT1FKOkAgEGNsqAjWGTW9EYI1oRfWH65pcZleMQP4IL1QLw/gRqDvJLU7
	iNiWYy5y+WTg9QMQAXQGlxrEVVaP6LPHm3qic5WxofSjfwShLGcElpUYg2AcG5QVndWBNP
	ZwHwm2+Rf6m5eR2feepaPUDDABlUO9E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-i9fDZMrsMdezOa1mkaeIxg-1; Sun, 01 Nov 2020 19:50:35 -0500
X-MC-Unique: i9fDZMrsMdezOa1mkaeIxg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 837CB185A0F7;
	Mon,  2 Nov 2020 00:50:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F24685D9E4;
	Mon,  2 Nov 2020 00:50:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D9268C7AE;
	Mon,  2 Nov 2020 00:50:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A20ne1l012714 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Nov 2020 19:49:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EE97333253; Mon,  2 Nov 2020 00:49:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E911C33231
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 00:49:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A3D38D6324
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 00:49:37 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-312-BfUDxmreNJqnTquW6yhVWg-1; Sun, 01 Nov 2020 19:49:33 -0500
X-MC-Unique: BfUDxmreNJqnTquW6yhVWg-1
Received: by mail-ej1-f54.google.com with SMTP id j24so16547870ejc.11
	for <blinux-list@redhat.com>; Sun, 01 Nov 2020 16:49:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Osywh9iD6/cNl+bNMyqrVxAXcQ911i74QzNuyQbXPLk=;
	b=ov7VV0dsUvkgqFC7ivU37NvSPl6O1kJ6NoYii8EPxnglOTYyWo6GfVYVIK/zjQmSKq
	DiRB1Wnuc9pOSfRWWZ+HiAQlUQNz2jIx0cgcXB9g4UHi53HMHdk845YfeLS8I9ap7y4e
	0oGco8Cch3L0eglpNZ48AdCJ6dPNUxvkeoCPzWPfjnX9nk/CCqKoamKooxb1A4G9N7yU
	W1mNPr8QY4MWITnWo7mxKYayrdpp/UGpmkTTxV0e1yQBMJrYeUrDb/XEmQ9HZpBJ9vg9
	x3q9jQvemNyt+MsV965QJJdURlsz1Q+1fRYSE/zI92mr9VPuCUYoXRGRV5PCdurMc2aB
	W/1A==
X-Gm-Message-State: AOAM530zRMmgXauY2uSOGB1sVyQWHWGPTLiTo/2uUuqCwwAI087jeXqY
	C9ZiUhG1IA8MbcK48DYqkYltZD3z5z23UzUnWgY=
X-Google-Smtp-Source: ABdhPJyNZTc1gsyZ5bymZR6TSrMUSXNdP5JtP6kfGFbI07HznnIFwsi8G96kYBRMA7FcGM9W1vy4dQ==
X-Received: by 2002:a17:907:9490:: with SMTP id
	dm16mr8043041ejc.107.1604278171896; 
	Sun, 01 Nov 2020 16:49:31 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id t5sm9304277edw.45.2020.11.01.16.49.31
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Nov 2020 16:49:31 -0800 (PST)
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Arch Linux supports accessibility out of the box.
Message-ID: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
Date: Mon, 2 Nov 2020 03:49:30 +0300
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

hello everyone. I am pleased to announce that starting from this day, 
arch Linux

supports accessibility officially out of the box. [1]

you can download iso from official website. [2] also a documentation about
installing with accessibility is provided. [3]
[1]: https://www.archlinux.org/news/accessible-installation-medium/
[2]: https://www.archlinux.org/download/
[3]: 
https://wiki.archlinux.org/index.php/Install_Arch_Linux_with_accessibility_options

-- 
Sincerely, Alexander.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

