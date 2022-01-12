Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B72748CD81
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 22:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642022154;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9nvI4idztC9mGTjSIlUmMyNbJh0Bx6TS1bn/DoEn+I0=;
	b=PflSWdgmCccFR6JKhvCWXxRly+SiJJfQSingzCKkcwL2BsAjbj/3vXdR18hEF43gPxarV0
	ehKRuhlejEWN4L6jXbAtsmkzEMqsyZ1bCRAOg7+n9/VBtLvXyz6kU0OMBE25sSp9ZQPbOu
	svdZa8M/kHFmLVbCNl010aG+X5SecsY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-R2PHoS7OMaq-PPtxXwAHCQ-1; Wed, 12 Jan 2022 16:15:51 -0500
X-MC-Unique: R2PHoS7OMaq-PPtxXwAHCQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF6581083F60;
	Wed, 12 Jan 2022 21:15:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 994895E26C;
	Wed, 12 Jan 2022 21:15:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC9BF4BB7C;
	Wed, 12 Jan 2022 21:15:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CLFRtK015807 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 16:15:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BCB2F4047281; Wed, 12 Jan 2022 21:15:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B90484047272
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 21:15:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A025438035D4
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 21:15:27 +0000 (UTC)
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de
	[80.67.29.7]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-615-Fcgbv_iiNSe1JssE8MMFrw-1; Wed, 12 Jan 2022 16:15:25 -0500
X-MC-Unique: Fcgbv_iiNSe1JssE8MMFrw-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay03.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>)
	id 1n7kvi-0006Np-2z; Wed, 12 Jan 2022 22:13:14 +0100
Message-ID: <357e9c39-17b9-74cd-3b83-085af1adc4fc@linux-a11y.org>
Date: Wed, 12 Jan 2022 22:12:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
To: orca-list <orca-list@gnome.org>,
	Linux for blind general discussion <blinux-list@redhat.com>,
	fenrir-screenreader@freelists.org, debian-accessibility@lists.debian.org
Subject: OCRdesktop 3.0 Released
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy List,

sorry for cross posting, but I thought you might be interested into that.
I just released OCRdesktop 3.0 with some very nice stuff :).
For those who don't know about OCRdesktop:
https://wiki.archlinux.org/title/Ocrdesktop

1. i removed unmaintained "tesserwrap" bindings and use "pytesseract" 
now. This is very good maintained and is able to use Tesseract 4.1.x and 
Tesseract 5.0. Last didnt work with tesserwrap anymore cause by broken API.
2. Removed all deprecation warnings, Modernize the code, use spaces 
instead of Tab and all kind of cleanup goodness.
3. i added an very nice new feature to analyze the color of an given 
Text and its background. So you can figure what text is highlighted, has 
the focus and all kind of useful stuff. its off by default and could be 
used by "-O" flag as parameter. For this we need some new dependency 
webcolor and scipy.

See the full story here:
https://www.patreon.com/posts/ocr-desktop-60895292
https://www.patreon.com/posts/color-analyzing-60988555

Where to get:

https://github.com/chrys87/ocrdesktop/releases/tag/v3.0

Depencys:
- python3
- tesseract
- tesseract-lang-<yourLanguageCode>
- python3-pillow
- python-atspi
- python-pytesseract
- libwnck3
- GTK3
Optional Depencys
- python-scipy (for color detection)
- python-webcolors (for color detection)

I hope you have as much fun while using it as i had while working on it :).
have a good day and stay healthy in those crazy times.

cheers chrys

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

