Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3950D4467FF
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 18:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636133859;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zqTH3sjNdQ5nl3WIXKeLHF2Ol6hCYzMMWwQMJKU23Ec=;
	b=BPmPoEQlRUdZ2e7CKrmpjx7bkhfTGOP5UzfaYocP9a90QSQi7t2CNBoVRmGDuF7bh4vCdI
	5wdfXHC6+t4QpAB+BkCfcPgferLOaskjqatSCau7bvoB8cpCB3OeIMmGvqHXGii7yNUx0x
	obXi+nn5jlEdki334qNI0A8N8Vio4Us=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-0KwX4lkjNT6V9uND0sSZsg-1; Fri, 05 Nov 2021 13:37:35 -0400
X-MC-Unique: 0KwX4lkjNT6V9uND0sSZsg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B57E1006AA2;
	Fri,  5 Nov 2021 17:37:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3BF55F4EC;
	Fri,  5 Nov 2021 17:37:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12C1D180BAD1;
	Fri,  5 Nov 2021 17:37:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5HbCiZ006967 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 13:37:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9DCF251E1; Fri,  5 Nov 2021 17:37:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9840E51DC
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 17:37:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2EC5833943
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 17:37:08 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
	[209.85.216.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-410-U4LVbqjBMR6X3iuO416Kcg-1; Fri, 05 Nov 2021 13:37:06 -0400
X-MC-Unique: U4LVbqjBMR6X3iuO416Kcg-1
Received: by mail-pj1-f43.google.com with SMTP id h24so2470900pjq.2
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 10:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kbhnof95tcy/a8iAIhmsWrk7VDJl+mdb9yksvmRePoE=;
	b=M3s5Bj0GP9M9HSmo13/bG2v7E8TUCWDYIeiQT1ILkWVy08hmsR1miAM8/MS1xZTngQ
	DAidPlebKF6wftSP0nROMIUm/0kbFoclyt7CQEGZsAIYUkO2dQyrL6WGJ3FPoHjniT9j
	mfEbw1t6veq19lbE5rB2sxQ9MbO+YpMO3CAGks2t5JFmSNNL5kN8WodMEqj5oeOyv78P
	4WjKtIpoTdg5Nrd7K2bwaF5Eyn/J5s2787cXUoJvwSaFNhqJsbQNrE3mWKgHOfWgoMCY
	/0LZRmQx6Z424Kjigk/GIZHPYFpkaBnK4TyJDv5w1pHnsWMDn5oyPSywHwMy8uzHdgiY
	5Y2w==
X-Gm-Message-State: AOAM533Lzbuez3vkBHTdbAL/zwPuQCsZUHV+M//5TvHfsuD3Gg4JI0nV
	eJrO1LSyrNPJoeskvSGoIEcolu++6PfA12+3OvFMlZ7141w=
X-Google-Smtp-Source: ABdhPJwLJyEgmA7UWHU1uasywlgMFykvSrZ9ICZU0xlMx8A0drWS7EzSsWL6827efIN6SNZPWjZfDIojqBEdu7IHCnk=
X-Received: by 2002:a17:90b:3447:: with SMTP id
	lj7mr9647749pjb.112.1636133825343; 
	Fri, 05 Nov 2021 10:37:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:7244:b0:41:f915:42f2 with HTTP; Fri, 5 Nov 2021
	10:37:04 -0700 (PDT)
Date: Fri, 5 Nov 2021 12:37:04 -0500
Message-ID: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
Subject: How to get speech in a console session?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I'm new to Linux, and I'm going to be trying it out for a period of
about a week or two, to see if I could use it as a daily driver.
One thing I'm not sure about is how to get Speakup (with either
Espeakup or Speechd-Up) working.
My distribution of choice is Debian 11, by the way.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

