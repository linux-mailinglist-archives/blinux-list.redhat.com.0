Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB753F52E4
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 23:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629754458;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L+wWy1cbJwFP4iJNLcEV6OfIG0Kxo4RkgXVynrV7nU8=;
	b=jBvXT5d0pzRqtFAzmgkvUKrBw76DvG+20YS3zWWODvhd0ZDGnymMhhCJGwxgFJ2ZFhJB0m
	S0ixyIm/FH/FKyObFlT09tvuGUIGlQzx+sCjZLhWdwjQqdIF9h94TUBFIHxlqnlrzU9lT0
	tQnnSyyhp9ZJbRU6fu1wSEr7yaNFU9w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-31xmpYG3MV-cfLX2Gqdedw-1; Mon, 23 Aug 2021 17:34:16 -0400
X-MC-Unique: 31xmpYG3MV-cfLX2Gqdedw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FBFA801A02;
	Mon, 23 Aug 2021 21:34:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B842B18AD4;
	Mon, 23 Aug 2021 21:34:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24076181A0F2;
	Mon, 23 Aug 2021 21:34:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NLY41v021486 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 17:34:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A78E21449D3; Mon, 23 Aug 2021 21:34:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6536021449D4
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:34:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAFDE866DF4
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:34:00 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-263-V3rO1T2dOdClEru2kDtnyg-1; Mon, 23 Aug 2021 17:33:58 -0400
X-MC-Unique: V3rO1T2dOdClEru2kDtnyg-1
Received: by mail-wm1-f45.google.com with SMTP id u15so11432012wmj.1
	for <Blinux-list@redhat.com>; Mon, 23 Aug 2021 14:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=2zNY2p0m55K1eeMAjzIY1n/RgJ5sOM/QhwJATKRUxEk=;
	b=DI1TpufB89sALKEQyYyaY4HevQwuoMJorNvRxnPPLCgem+aYfk1cEcAB0qyEo+I3EG
	f3QRySt2KKmo35/hzVs35qeS3KKMDPuZf58mCAPa1vuqDdRJugQBDWaw8fSgO4jXal85
	xZdAFLKP3Nz1EhnFgGEXkXBeK7uzZKo7vcj1sTmGT3jEkh1ilkp94rlo8Q1qqjaWbMo+
	ARSsC4V2Cg+xaS5JfPpzY0iJKmNN/1K5hLxIncB8dDaE93b6NvRPIyy2HeXUJuzgKvbQ
	MNn7nRhYkszk1ecxbAg8YqxlkYnbedP2bOFM0xWIRQmmQmOgORCh4BZ7w2ustvA7d2WE
	c1yg==
X-Gm-Message-State: AOAM530JroG+/vkeJwZhPk3KA7+lqcJynqecQg/ohpsSE2nH0FmrFqcV
	T58Ht7c5HjsslZkZ5tDxtHahD6OKiagPBw==
X-Google-Smtp-Source: ABdhPJxm6zy+VPDfTMVRrgGYoI8VvQvVCMluDQr+V33+WOlkhC7MeCeg3JnZUXAQdOzO1PZMPz8VLQ==
X-Received: by 2002:a05:600c:26c4:: with SMTP id
	4mr625071wmv.111.1629754437172; 
	Mon, 23 Aug 2021 14:33:57 -0700 (PDT)
Received: from smtpclient.apple ([165.255.54.43])
	by smtp.gmail.com with ESMTPSA id
	v5sm16139149wru.37.2021.08.23.14.33.56 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 23 Aug 2021 14:33:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 23 Aug 2021 23:33:52 +0200
Subject: BRLTTY on Linux mint Mate edition
Message-Id: <8754E24A-42C0-41F4-87E3-918096D65F4B@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NLY41v021486
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everybody,

I apologize for the cross post, but I do need help.

After about a week of fighting with pulseaudio, again, I reinstalled my system with the first iso I could get my hands on.

In this case, Linux mint, mate edition.

My problem comes in, in mint, Mate, The BRLTTY version is 6.0. My humanware brailleOne is not supported under that version. Only under 6.3.

Can anybody please assist me with full instructions on how to install the latest BRLTTY under Linux Mint?

Warm regards,

Brandt Steenkamp

Sent from my iPhone


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

