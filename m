Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 520913FA78C
	for <lists+blinux-list@lfdr.de>; Sat, 28 Aug 2021 23:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630184793;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4xt3p+p/fYi/u/SUQOp1eBO1DQeoIppXPR2WhtNN0+s=;
	b=Bq0lG0PXqbD4OImtvDM9ky8aBNj9ibsuMYdwQBQHkoW/qBAQlyYvP/ZzVn+wQiFsmr389T
	eUhFr0HxYNzRvS6hBmv9GtBxhDD5dkCkG3n3fseTcJCsT1FAz2dJFqG1ia5V3YafPTRpLT
	30kDrH8Eqz/Ba7/UNpxohaJj6BB2+RQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-hSsUM8GDP3Sm9kQqUuKl_A-1; Sat, 28 Aug 2021 17:06:31 -0400
X-MC-Unique: hSsUM8GDP3Sm9kQqUuKl_A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC92A107ACF5;
	Sat, 28 Aug 2021 21:06:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15E7260C17;
	Sat, 28 Aug 2021 21:06:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 164214BB7C;
	Sat, 28 Aug 2021 21:06:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17SL5o8c001801 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 28 Aug 2021 17:05:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1175610D16BB; Sat, 28 Aug 2021 21:05:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D2E0112D412
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 21:05:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 464E4185A79C
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 21:05:47 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-271-1deuEQWtNwWpLTjOu8ZBjg-1; Sat, 28 Aug 2021 17:05:44 -0400
X-MC-Unique: 1deuEQWtNwWpLTjOu8ZBjg-1
Received: by mail-qv1-f49.google.com with SMTP id g11so6176096qvd.2
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 14:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=a3LZN1/5vAyz9dsuEOtEnHj/xc1bxyWu5UXGKAmr+UM=;
	b=NJ3M5qj//aPSXcfxwcmMVWhw5iqkSh3L2AN7TLyMeTqI86WQa1US9aoZEvQjdw5Nlq
	zdMUGJU6GQrN21jKRtqbXOnr1QMjwTic8K0dt3K5Q5Cx6iviXGxX0sNdcWq3dTv02Msh
	xwz1KSCQXhK3AGmb57rg1Bxkvs5vi1Q/ZPP9KxVGM/zn3LPMCkn7Y+Yn0Cm9GP0CsmUm
	sxnQ6rdd1OOq0Qd3nJeGu45Y4ibVPRXoi6cMku3agPUOjxOIm8ilWJ4pMGGsGgwUaA/M
	3X4Kv7lg0zz39Zg4FrKwDmCPQ5YB/g6GgBf0YblA72uSvjUyYzDfk4JxA443OOSNBw5T
	Z8OQ==
X-Gm-Message-State: AOAM5301NL5OAmL3nqYiTdxiu6SYs/b4S6OVw+XmQa8PLPT6ebJzbC7e
	DwYkJ/mkBCY21ikItFFlwOiePmyL0ig=
X-Google-Smtp-Source: ABdhPJwHYmQM+lWQS7lIqpCLwhVhP45fMuefUco6bV55My1ZBNCDlludJ1s6dNB9rwvOKQcbQSJPCg==
X-Received: by 2002:a05:6214:1cb:: with SMTP id
	c11mr16713536qvt.47.1630184744104; 
	Sat, 28 Aug 2021 14:05:44 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:3d12:9060:7fb:946a])
	by smtp.gmail.com with ESMTPSA id 37sm5856881qtf.33.2021.08.28.14.05.43
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 28 Aug 2021 14:05:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Found this on youtube
Message-Id: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
Date: Sat, 28 Aug 2021 17:05:41 -0400
To: Blind Linux <blinux-list@redhat.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17SL5o8c001801
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

Just found this on Youtube and wondered if anyone hhas tried it.  This is a blind arch install demo on how it works.

https://www.youtube.com/watch?v=72g-2fbP04w
Matthew



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

