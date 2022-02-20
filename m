Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AA74BD0A4
	for <lists+blinux-list@lfdr.de>; Sun, 20 Feb 2022 19:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645382339;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RzvT4jYIEe8jxYdj3Ki4erx2SJj/YCex7zTAcN1ght4=;
	b=AtiyG7QCGV5/vZqpZKUW8EUaCFcJFd9nJiKxXzk+FOrrWbr3Z/rz7Ievz58NDb4QT79Ekx
	f3iUAJHTvEXdv7rhqVdPy8WWxzThiz/A8EVt/eVQOisMoXQwt3cbP+7nc+76t8KGqFCuAd
	KSzOvoPKbqenf1WnVP+VckPRhTu2TOo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-nTy-2Wu1PVGu63Va88SVsQ-1; Sun, 20 Feb 2022 13:38:57 -0500
X-MC-Unique: nTy-2Wu1PVGu63Va88SVsQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C531A2F4A;
	Sun, 20 Feb 2022 18:38:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE377D57E;
	Sun, 20 Feb 2022 18:38:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2CF1A1809CAA;
	Sun, 20 Feb 2022 18:38:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21KIcDev030318 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Feb 2022 13:38:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F40DA2026D5D; Sun, 20 Feb 2022 18:38:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEB502026D4D
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 18:38:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED93985A5A8
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 18:38:07 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-100-66XqEqlEMCibl-6AVUXlOw-1; Sun, 20 Feb 2022 13:38:05 -0500
X-MC-Unique: 66XqEqlEMCibl-6AVUXlOw-1
Received: by mail-qv1-f45.google.com with SMTP id c14so26426662qvl.12
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 10:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=bFh4fthtAYj1pNLh3LuchYKYaPDTidbhZLcKCdobh9E=;
	b=G4t7xtq0GwD5XMpXj6AcD8KxydBg5KiwTFci48Wr+jvG/kK06yj3zKRWHkH61kBsZi
	TC16Mfdxl3GGc1EX/zhFLYSmaWH8vrnocbFQydoeKrluLrOf01pa1+R1EB1rhhukAkqr
	MvLGT4PayDR3ojkY0DNh6+E+0kcah3beyA4Wd0UF2K5txyPoPMA17lNC4D2fL/SAkVA3
	GZC/XNAdoEoVbmCuoXKRY/GfoXm3Q8iFPrnj/RpSw93ZKKuECYYnQHE8NDriaJlKo1m/
	ycboLUHBl7YogNxHbkKpX2IENBXJi+r/jNjoRLrqyjysUTuS5xio4Ydl+vv7Bj5qU6V5
	vs8w==
X-Gm-Message-State: AOAM533DftLviX/kYLlBoQ8F4HAykJgtpQ1x1UbK9DMVUpulcnzwlBkD
	z227I17tacV1wYcI2LpQVPAWv0WRK9GBGcXD
X-Google-Smtp-Source: ABdhPJxXdNLPROoRodevHfidlfdbpROH20z1nhAgYrxmvSRKYbwPj+VWwcFQfp9ktZVg7z+48wpgIQ==
X-Received: by 2002:a05:6214:21e4:b0:42c:82bd:64d1 with SMTP id
	p4-20020a05621421e400b0042c82bd64d1mr12841630qvj.31.1645382284992;
	Sun, 20 Feb 2022 10:38:04 -0800 (PST)
Received: from ElBraille
	(2603-6011-ba01-8300-3554-cdde-949b-f41d.res6.spectrum.com.
	[2603:6011:ba01:8300:3554:cdde:949b:f41d])
	by smtp.gmail.com with ESMTPSA id
	v144sm132175qkb.121.2022.02.20.10.38.04 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 20 Feb 2022 10:38:04 -0800 (PST)
To: <blinux-list@redhat.com>
Subject: Any arch users notest that there hasn't been any updates in over a
	week?
Date: Sun, 20 Feb 2022 13:38:04 -0500
Message-ID: <02cb01d82688$ff3af010$fdb0d030$@gmail.com>
MIME-Version: 1.0
Thread-Index: Adgmh2gq4Yc3YuiqTWmr7QYBrqeLAw==
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all, Is it just me or Is there something going on with the arch repos?  I
have 3 different arch systems and only one seems to be updating.  2 of them
are vanela arch systems in that they were installed using the arch iso.   2
of them also have packages from the aur in particularly, an aur helper yay
to be exact.  The third is a jenux system which seems to be getting package
updates just fine.  The 2 that were installed from the arch install iso,
just tell me that there is nothing to do.  It we seem to me that if the main
ararch repos are the sme that the package for the must part should find the
same packages unless there is something I am missing.  As a matter of
interest, I have gnome on one system and mate on the other 2.  Any ideas?

 

Matthew

 

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

