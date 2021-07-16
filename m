Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E51B93CB9EB
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 17:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626449710;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7jfwiJ4A8bNi99eFrou2VKSwMMZxv/uSmAbkkLvWOwM=;
	b=Ak5EazLvwBabB7EyGuIsACss1kASba6/5VpQ12eDw+ZRb7P1OpSN3Csp+jAslp9SKC9BBJ
	puDBlTpp0upWkL3l+G9p5NOxCIbjenEosyKFqAv14DKtVRE7olzo24B3ThqLQzHKMfeOgb
	allpKwsL4Tr8+pOVuDCaHCWZD85NvVc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-ArQlTaFdPFC3xavvVNqOmQ-1; Fri, 16 Jul 2021 11:35:08 -0400
X-MC-Unique: ArQlTaFdPFC3xavvVNqOmQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02C101084F5C;
	Fri, 16 Jul 2021 15:35:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F0865C1D0;
	Fri, 16 Jul 2021 15:35:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 996974EA2A;
	Fri, 16 Jul 2021 15:34:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GFTtwV001092 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 11:29:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0AD4310BFD74; Fri, 16 Jul 2021 15:29:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0699310BFD68
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:29:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48A3F89B852
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:29:52 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-60-1I7IGmnYPKWcb38wHuNtXw-1; Fri, 16 Jul 2021 11:29:50 -0400
X-MC-Unique: 1I7IGmnYPKWcb38wHuNtXw-1
Received: by mail-ot1-f50.google.com with SMTP id
	t4-20020a05683014c4b02904cd671b911bso2173558otq.1
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 08:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=qJPHGK9850yrp4eDx4sx17RlDPuw6+3+3mdwfOCLuxc=;
	b=KYHl1cgTSAoZKt0OLH/HTNUcSY41YEh5Pi25vbijzBzqcXdVcnSbMKf9DKayuceNkl
	ahQ+7gLDpEophZurSiNnKsW+jfNG5CWF0i6mqc+G+/WV71Z7/rcL5SKjT+nbURvFAITK
	inCMWDNf+JAE34AVx+FAQY/ITS7wWSbTyHf0bD7/r3bMF5qJCetBho3R6WeQSX/TvKIK
	XO1HO237oloLhc6vPLXwyN9ldGVbQlf763g78/bxuZ0A+mu5ojChpDNQ8jrZOO3HoaoJ
	6cmg9HQIX7YJxxtr7lzi5s8/r3ESQougqWKRdYydkIUDU/c+PftAngF1F4fBvV5Ij39A
	TwFA==
X-Gm-Message-State: AOAM531FjIkexOSsxABlhV646nvePBNcaBy2WtXN0N79QWoHw6A5SVj/
	u0l0uatnmflcrHClIk2yPbZmw3Yt77Q=
X-Google-Smtp-Source: ABdhPJz9zJI69nfbuK6acjyfBe2ZIUywyAKuhT4aoCV0zDfy0WY9bRkwZ1B0YUndyBMkOPfBjJgc+w==
X-Received: by 2002:a05:6830:1290:: with SMTP id
	z16mr8500691otp.28.1626449389424; 
	Fri, 16 Jul 2021 08:29:49 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:517a:9e0a:caf4:5347?
	([2601:3c2:8200:9360:517a:9e0a:caf4:5347])
	by smtp.gmail.com with ESMTPSA id
	r16sm1030696otu.26.2021.07.16.08.29.49 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jul 2021 08:29:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Subject: Fedora pros and cons
Message-Id: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
Date: Fri, 16 Jul 2021 10:29:48 -0500
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
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16GFTtwV001092
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello, I am interested in advantages and disadvantages of Fedora vs Ubuntu-based linux.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

