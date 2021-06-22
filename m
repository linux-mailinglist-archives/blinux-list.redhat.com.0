Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 54B3D3B0AF4
	for <lists+blinux-list@lfdr.de>; Tue, 22 Jun 2021 18:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624381060;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7ngkIM4uu6H5ELvzFQnx7S3lNx/CZ5rFFISJ3A+0Pbg=;
	b=ABwA7ORoHGjKrsuxn9fAyiPXg2C6xnxNGnyYrjRbKVEPsuTSydUCLOGkfHnhu94FM7RPga
	dyGTJbaGNrkBJzz1R1hSLnpu1G6ixeoCK7GYRNrpIwFN+kL2t5svcpeqwnGHlt9G6N06It
	DqoNet9adDA5py9t6E+cq8eFB8kHjAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-ARArQRDzOlKdY2L1DMJmog-1; Tue, 22 Jun 2021 12:57:37 -0400
X-MC-Unique: ARArQRDzOlKdY2L1DMJmog-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3983C100C660;
	Tue, 22 Jun 2021 16:57:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D60D7A8D6;
	Tue, 22 Jun 2021 16:57:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 321154A712;
	Tue, 22 Jun 2021 16:57:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15MGvFUa002342 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Jun 2021 12:57:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 492172141DFD; Tue, 22 Jun 2021 16:57:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 417B92141DFC
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 16:57:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA07E80D08E
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 16:57:11 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
	[209.85.216.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-354-U-9s1g2TNmCi_y4eNx8QGQ-1; Tue, 22 Jun 2021 12:57:09 -0400
X-MC-Unique: U-9s1g2TNmCi_y4eNx8QGQ-1
Received: by mail-pj1-f52.google.com with SMTP id
	g6-20020a17090adac6b029015d1a9a6f1aso2104848pjx.1
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 09:57:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=r1oAg/XGoQg2dVDYys50UbfXRWNpMRnuwbhf9jevR50=;
	b=YHAhgu20QpeN7HV7yP2aMRTZBC2LNnWh26KlUZrnJ0AJBpZrhMhcTt2zcDZlwc/EGL
	qEKVSV4Vqb5r5SgwrPe152QtezJuU46IsStHU440X9rd/z4PK1tJYwH3NzZywJPzH5+0
	Flqj0FSEQkDFuDAbQDioPRiCUSXg4IOHx7Lb8LDyOn3ea1R+BcoKV1tAwUCMDdL3suLc
	MU9F4oc3KeYZW73YjBleFsXGOsQjKyUsZrRD1Y0m0QOBONESTAA19U6r2uzVcyXIeMcA
	k0dNEduO//JUldafX85kY4D6w1Sryx3iJcmB+QhBaEoG2+4u+gqgAJ8USeRQD8Y6r80Z
	FbNA==
X-Gm-Message-State: AOAM531EEyPeVLR70AgrW38YhLqOFn1PPI81wt7MxL/ei6mCzFqLLa7K
	2CIbic0UD9oKbgIUQbM2iyNR/cd2aL4cyQ==
X-Google-Smtp-Source: ABdhPJySoR8gVaucnBJYfUoJ9WAvLpv/De3cu6a8kM2fcyHxUGiKYs8fg4teBWgqP9L6aOOkk/C9Cg==
X-Received: by 2002:a17:902:aa04:b029:ec:f779:3a2b with SMTP id
	be4-20020a170902aa04b02900ecf7793a2bmr23473097plb.44.1624381027521;
	Tue, 22 Jun 2021 09:57:07 -0700 (PDT)
Received: from [127.0.0.1] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id 92sm3029292pjv.29.2021.06.22.09.57.06
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Jun 2021 09:57:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: making an accessible version of Nushell
In-Reply-To: <4c93f3ee-a8db-48eb-3675-ebd73d83e4b4@protonmail.com>
Date: Tue, 22 Jun 2021 09:57:06 -0700
Message-Id: <E9CAF83F-3872-4E22-974C-312B52C95DAA@cfcl.com>
References: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
	<4c93f3ee-a8db-48eb-3675-ebd73d83e4b4@protonmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15MGvFUa002342
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> hmm, this sounds definitely interesting!
> ...
> Rastislav

If anyone wants to get involved, the easiest thing to do is to get on the demo site (https://www.nushell.sh/demo) and play around.  Report any ideas or problems using the GitHub issue I started (https://github.com/nushell/nushell/issues/3663).

FYI, the Nushell code is written in Rust:

> Rust is a multi-paradigm programming language designed for performance and safety, especially safe concurrency.  Rust is syntactically similar to C++, but can guarantee memory safety by using a borrow checker to validate references.  Rust achieves memory safety without garbage collection, and reference counting is optional. -- https://en.wikipedia.org/wiki/Rust_(programming_language)

My impression is that Rust has a fairly steep learning curve, so jumping into the code base could be challenging.  OTOH, it might be interesting to scan some of the code just to see what it's like...

-r (Rich Morin)



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

