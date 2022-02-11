Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F72B4B252C
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 13:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644581045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XV/07dAigNHL3AwD+7a6YnKj1ldFjc3RwPet9SKqUTI=;
	b=Xo8H8m8Kj676q9GhiFnoaliE1+ri46tFVSWvD4+0TA+R4j2FZMYCcxL7LNU/kcDJEdNPps
	F0fLLEuSq2Di36IRXJa258o3CLYbSlzb2be11udf5Swfse289pMOTXSB5U3CLgzb7MhrOz
	wr0txqzEW67mFiJqvEA0zYCSaSmOf0E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-386-Ilw6XeSzMe-3rzT5reKipA-1; Fri, 11 Feb 2022 07:04:01 -0500
X-MC-Unique: Ilw6XeSzMe-3rzT5reKipA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8D071934107;
	Fri, 11 Feb 2022 12:03:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 517C978C1E;
	Fri, 11 Feb 2022 12:03:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 625D24BB7C;
	Fri, 11 Feb 2022 12:03:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BC3nA7006177 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 07:03:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 235EF200A4F0; Fri, 11 Feb 2022 12:03:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CEAB2027EB4
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:03:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1E2A1C05B1B
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:03:45 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-408-IIwAKNNOPCSCX1LoAN47jg-1; Fri, 11 Feb 2022 07:03:43 -0500
X-MC-Unique: IIwAKNNOPCSCX1LoAN47jg-1
Received: by mail-ed1-f49.google.com with SMTP id b13so16301073edn.0
	for <Blinux-list@redhat.com>; Fri, 11 Feb 2022 04:03:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=AS+daV8z7K0K/zfZhonal1Ii7U4+xKZ8Fj9zVFNe9yA=;
	b=Lxx669/Hm5W93eqpGEWm0IFUWeiEu/fQdwmfMnYy2bcnK/dBKGaX3K+ZfFw+OUQbGO
	0GSzpooW7mQ0e0koZ8ykF4VDyZhRtSyoy/E7qGGJWI3cUbhnMYGw3f5EwLjPR5b4l68i
	9KswwBuqd8k5NVXNViqGciJ71xzMCpj866+Mme+a0xMlpUOaXPDykQOXg7OtNoWAplnI
	n0qvRNboZe8TwM2zTiqi3OWxMWo3TQtEcLCups8aTg3O8hfNhJn1TuovNlYw0jasdNMX
	f8WrbLQojTBhki+KqJfWrLEUbBo7T9eUybfCWKpkvqO/NfZVW0I9HAiDw+b4vP5bw137
	sruw==
X-Gm-Message-State: AOAM531F85958tr8v3dw3y/R6fP+b/jVAPb8YopbI6jtLLzJ2PMAPq3T
	Rn9uEFH5s53zU9QvXgyV4X3GiiYoIPo=
X-Google-Smtp-Source: ABdhPJwyfFSiUBCbXyl2hegSvLJ7UTbSiCwLQNHIUY0Bp7fU/tc9KSbc/v2sMns6UYNwP4viSxCHJA==
X-Received: by 2002:a05:6402:1395:: with SMTP id
	b21mr1497631edv.305.1644581022339; 
	Fri, 11 Feb 2022 04:03:42 -0800 (PST)
Received: from smtpclient.apple ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	if19sm5964610ejc.32.2022.02.11.04.03.41 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Feb 2022 04:03:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: `alpine refuses to save password
Message-Id: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
Date: Fri, 11 Feb 2022 14:03:38 +0200
To: Blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I hope this message didn't post twice, for I got a mail delivery system failure notification.

I have looked as hard as I know how, and have tried almost everything I could, but no luck in making 'alpine' save my Gmail password.

I did "$ touch .pine-pass", had no luck there, "$ touch .alpine.pwd", also no luck.

The only thing I can think to do is to re-compile the darn thing. Maybe that'd help.

If anyone knows how to fix this issue in Slint, please help?

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

