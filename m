Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 728054CD851
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 16:52:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646409171;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GHt7inZPSMCaLnajHUXyX8w4Wx9DocVN6VV+mWxYKSQ=;
	b=jSi65qM5nYh3gVuL5bCil0ZkHWUXNG3WTr4KqqBqZTiMdBgYzRsIlgF+Ea2THwE/TArjoK
	CdAiNzYwo59X4WQYtJAHAWkOlWpKyRm2IKjS5NTKzMfcZ90sJFxopB1GucYO+UEinGKkMG
	Xbo/onYZ19dYEN/3t6WTFT9e7ET1zWc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-424-GOcnSjl2PuKnaKLarzSRtg-1; Fri, 04 Mar 2022 10:52:47 -0500
X-MC-Unique: GOcnSjl2PuKnaKLarzSRtg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D86C5835DE1;
	Fri,  4 Mar 2022 15:52:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AEC17BCCB;
	Fri,  4 Mar 2022 15:52:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 64EC446F9A;
	Fri,  4 Mar 2022 15:52:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224FqcTn016050 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 10:52:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 101F1140240A; Fri,  4 Mar 2022 15:52:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C652141DED3
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 15:52:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7DCE1C068E1
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 15:52:37 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-216-PqN7a_XmPlyWj-cQcvpQ-Q-1; Fri, 04 Mar 2022 10:52:36 -0500
X-MC-Unique: PqN7a_XmPlyWj-cQcvpQ-Q-1
Received: by mail-qt1-f177.google.com with SMTP id a1so7662066qta.13
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 07:52:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=gqAPL5AmimqfkDt00ivP1i/V08x0DKKVf8GnAayKb2I=;
	b=2ORINjRCm3Ulq3xZx2tvXC6Zxg3hQrlllxQfMs7DjdVKVRJPfBa0W76fQp6Avfp5v6
	NMC0mZQJjynLEt8lFFcfuTyspH6eTawTUh230ytGN2dziBt4vw6c0M9B55ZF7+Qmmhu9
	Q0Yfp4/T2lIc5FYNb8gWdW8owkuZXr3mO0y3V1LbabDZ20/ThwNsK13Nz4+8HMJcKr8S
	zkEtHf+q0UxlN1KnMU1Q0cYDgsUWuunxGXcDYZS3ax6b1ML62+lP58/n5PFKPdsyv9Ir
	dPqridCTU/ccwlacgQvTpevvytEcW+ScUJHSkxmr/LBTVtlgDHrhr1Yd8INMbJUrv9gS
	j08Q==
X-Gm-Message-State: AOAM531emtpG5sQDpqrLAuNjuN1wPTjSEkJCn0a5PjCs9fj1ucHmYnQP
	TNumv6R1Ovy/xxer3K7wmso5bvOrBOs=
X-Google-Smtp-Source: ABdhPJz6DvVHwzmChfbFvIQC3JHS7Ash9ICHWQcLwy1S1WfJv+zuVKOSU/fmGrd1n6MIbIakJLK/0w==
X-Received: by 2002:ac8:5751:0:b0:2de:b81:4c00 with SMTP id
	17-20020ac85751000000b002de0b814c00mr32158241qtx.190.1646409155673;
	Fri, 04 Mar 2022 07:52:35 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	h3-20020a05622a170300b002e008a93f8fsm3658163qtk.91.2022.03.04.07.52.35
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 04 Mar 2022 07:52:35 -0800 (PST)
Date: Fri, 4 Mar 2022 10:52:33 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google is nuking simple username/password sign ins?
Message-ID: <f8324aa8-9b92-edaf-b86a-5aa712ee547c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

XOAUTH2 Configuration - Alpine

https://alpine.x10host.com/alpine/alpine-info/misc/xoauth2.html

On Fri, 4 Mar 2022, Linux for blind general discussion wrote:

> On Fri, 4 Mar 2022, Linux for blind general discussion wrote:
>
> > Is there anything terminal based that's like mutt/rclone that supports
> > Oauth 2.0 already so I can be ahead of this?
>
> I think recent ALPINE supports it but I've not tried it myself.
>
> HTH,
> Geoff.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

