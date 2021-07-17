Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 05A183CC581
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 20:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626546364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OZYfNI41DJy0CA4I6L0nEvy87GGRoAR8BxyLKfFTmfQ=;
	b=RhbKEhTFa4IVkrLifTIQEmuu/Ss/T4jegMC468P9Lk0G9jYxAa5MFYUJv2xIB28E1j8HVR
	9oHqJRGLpUQ5iIbCgkfNGwDISa5iflqLmTLBQr+SOKQAgM+UXocaOlr3wmqCB3DlfaFz/O
	9RPotEqOtlkqDFBjudwY4nevIBfrin8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-O0_7BMWTMy2DBBIjKebL8A-1; Sat, 17 Jul 2021 14:26:02 -0400
X-MC-Unique: O0_7BMWTMy2DBBIjKebL8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 850741084F4B;
	Sat, 17 Jul 2021 18:25:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A73415C1D0;
	Sat, 17 Jul 2021 18:25:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 54C6A4A702;
	Sat, 17 Jul 2021 18:25:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HIPW2b022748 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 14:25:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9F89E1104E8C; Sat, 17 Jul 2021 18:25:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1F011360DB
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:25:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B47080D1BF
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:25:29 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-596-bN3ZlgYiPX65t5KiYQDZiA-1; Sat, 17 Jul 2021 14:25:26 -0400
X-MC-Unique: bN3ZlgYiPX65t5KiYQDZiA-1
Received: by mail-qv1-f45.google.com with SMTP id x6so6268192qvx.4
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 11:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LEqWY5khUmAIZqyHVqQWg/8vQKOpz3FrggQrAkSvIQY=;
	b=W6gA6p0Shuib3Emf9lhZF4mPidU7xMmuraPHBXA83k6N6HVmVUkOf2DNI7Xi5HE15m
	jzE5CCQtIJvjbNzrDzK7U3OJL0eRhXNji3ECUlnmpV4kOcG1Bvir7bWGoPRo0Qf6UKq0
	n26wE/51RPJf5uKYYyiKFGtsgb7PFyT2Pp7LuijgxWm3LAmSOMK9p6XPqj3TzIG3CAiG
	RYmRPOO6I2LbR5p7OmHrQFVU2ASeN8Lq2x7KLIOs1DqMe1Dw6ACH9g72a0Qu5yVyNAGy
	KvE7q3lvv++ZnZ3zgF7iYraPBPWKy7Up6XZ4CUY5UxXeGZ2VBN1XEIIuzYDoUunYQXMK
	MAtA==
X-Gm-Message-State: AOAM532kiluIW22PJyllq/f3TXGNjCmKKXHg8F+Pr/zbr4vP4lzZpi6S
	TwdgxpWV/Mcu4lNRCXMtHV5OwedOaR+J4YNLKN4uVen6
X-Google-Smtp-Source: ABdhPJyNXmCT0Z3zBJepivLcgqztQZ4mtzh6Ee20WRQA1P6gYvuuy2szud1GYBi8ltUK0584q4eMDRFz8sgq0GVIJQM=
X-Received: by 2002:a05:6214:8f:: with SMTP id
	n15mr16728488qvr.61.1626546325175; 
	Sat, 17 Jul 2021 11:25:25 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 17 Jul 2021 20:25:14 +0000
Message-ID: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
Subject: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I do not know if this question has been asked in the past, so I am sorry if
I might be bringing up something that might have already been discussed.
My question is, what GUI tesseract or cuneiform front ends would you
recommend to a fairly new arch user, who wants something recognized in
different languages, and needs the ability to use a scanner?
Thanks for any answer.
Best regards.
Francisco.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

