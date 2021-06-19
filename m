Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B024A3ADB6B
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 20:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624128854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Akwdv/J/A90+i2ofuqw3WR9PoVZOdx0ni3VBeBPAWao=;
	b=WarQsB4d9ZFheWw+rny00djTXfUVI3kw9T72Z6Fr7sWcSTljOIZLIER0vfkgvNGlTlhAUm
	2ySWy79Zfki3qNWvj5YLpQzg5tCTCzoG3fCZYbcd7+AwS/O2F9+z2flEilb/jR+WENBj8e
	DUV8mnbBd4/bGsAQk7mkLZmcNiCXSPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-qQRroo8AOm-2YC5Y52qNOg-1; Sat, 19 Jun 2021 14:54:13 -0400
X-MC-Unique: qQRroo8AOm-2YC5Y52qNOg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 438F1362F9;
	Sat, 19 Jun 2021 18:54:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 627B8179B3;
	Sat, 19 Jun 2021 18:54:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A2184EA29;
	Sat, 19 Jun 2021 18:54:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JIs0lo025387 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 14:54:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F056521677F7; Sat, 19 Jun 2021 18:53:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB68D21677EC
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:53:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72FEE1064E69
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:53:56 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-141-QaVlrVvJN5aTgO2HWKAyng-1; Sat, 19 Jun 2021 14:53:54 -0400
X-MC-Unique: QaVlrVvJN5aTgO2HWKAyng-1
Received: by mail-ot1-f42.google.com with SMTP id
	v22-20020a0568301416b029044e2d8e855eso3990154otp.8
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 11:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:subject:mime-version
	:content-transfer-encoding;
	bh=wDyEgXVD5xNZBVBq4aixf0Ay1xns8V5QZKgOfTU++Fg=;
	b=GFw2+EQN6OkGthi7n+h+2olyAzJOSvvzZ+KfKhQEAQB+IFeC4rpN/+k52H2qw+/sVy
	4SheuwNEFSkSzrod49zprRnLM8I+du78aoH0Oa2O06zbRZPbwZPiKCHMgQLENsqATGpi
	eyEVM1c5p1IPBpGQQtHX6pM8gURxRXZS36ioz73iUFcQNLEtuZi50fJl59y39vT3eo8q
	+lkSw4Um0JquqKm358IeWMZpAhoNkg3B5sUIE7X2ZmyEu4iCEhQ+7yAJK7xw0NUAU4g0
	LiGap67Hj7UbO1hJiR/MZAEMJn6zi0M3cDTxkEcBAL5t8cTPsL4pgeskbkoa9+T74rot
	PfvQ==
X-Gm-Message-State: AOAM530e0pajNaT0pdJCCxSksdZomFEJrEnW7E26qrXgmlaT4+rSAId3
	FY5xIkyguQDaOoJmZUWPFbn6HRqUu9tolZkN
X-Google-Smtp-Source: ABdhPJyfvAnxgEs+db6XZyO4JqpAABYrBiubnbGhiBI4erOFz1ucsl9R7cHxs8fhAPm/FKma3QbuCw==
X-Received: by 2002:a9d:62ce:: with SMTP id z14mr14817822otk.255.1624128832955;
	Sat, 19 Jun 2021 11:53:52 -0700 (PDT)
Received: from localhost ([2600:1702:20f0:4420:fd65:6225:a238:1232])
	by smtp.gmail.com with ESMTPSA id
	t14sm2670661ooh.39.2021.06.19.11.53.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 19 Jun 2021 11:53:52 -0700 (PDT)
Date: Sat, 19 Jun 2021 14:54:00 -0400 (EDT)
To: blinux-list@redhat.com
Message-ID: <220000834.4.1624128838799@localhost>
Subject: RE: Accessible linux distro for raspberry pi?
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Have you tried Debian?  I myself have thought about a razbury pi and thought about giving debian a try for razbury pi.  There is also razbian.  Hth.

Matthew



----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
Date: Saturday, June 19, 2021 12:06 PM
To: blinux-list@redhat.com
Subject: Accessible linux distro for raspberry pi?

Hey all,
As subject line says, I want to know that what accessible distros are
available for raspberry pi? I want those distros which come with
accessibility enabled on the setup screen.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

