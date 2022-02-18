Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDCE4BBCC1
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 17:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645200026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AmqCDNbu8YuFxL1qwKUHontlkH+2nCcd4hSytuoqOA0=;
	b=gqg4/O3aKPIumf/tqk6M/e6Cj/NOZ18mrA0OV4gEJ43rqX6E00r7A/hQbBhGr74E0oo3dS
	DQUKhsjdMkQyniIKNy97WcSnvLkzHMxKw0/22N7/YwBuRim/f0ZKM2IJY1yIk5lqt66W8H
	y6CUdWUAmo4vEDSHJM6R15wYS0Tu5Xs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-hlzlDkWWPmWe-GXCqa_hXw-1; Fri, 18 Feb 2022 11:00:22 -0500
X-MC-Unique: hlzlDkWWPmWe-GXCqa_hXw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 836041898290;
	Fri, 18 Feb 2022 16:00:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ADD974EBF;
	Fri, 18 Feb 2022 16:00:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E62BA1832DBD;
	Fri, 18 Feb 2022 16:00:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IG0En4017103 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 11:00:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9369440885AB; Fri, 18 Feb 2022 16:00:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F53740885A0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:00:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75A231C10FE5
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:00:14 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-57-XIj1gEfyMCS6-5fZbARAXg-1; Fri, 18 Feb 2022 11:00:12 -0500
X-MC-Unique: XIj1gEfyMCS6-5fZbARAXg-1
Received: by mail-wr1-f52.google.com with SMTP id h6so15316158wrb.9
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=CsTdMEm29P6SxWNcgYQ5WD9S0SEjE9jq4zk8ap50vIA=;
	b=5nXL7nPC2pbrrBhN/wME2z7CJn8X3fhEYkoyjlbnpGh8h13ZNw3BQr7XmJONkJLuAi
	weya41w64f7ziK+5alXWsx1mC7r4TbVE+O4P3qaNjJ/fjo+s16Mj249tH8EoOPYdnIbd
	cu7fA547rjmuQYHeQtxHmaeLjCV2mjnFnGj0z+dyrAfR6PWaYR+/zVT2sPwbqKF04y41
	LPGxwPlFK3ZDzzYubC9L3QX/HTftk0Xw2mHJKD+y5/euyHNpCOGlfnBf4lswArLWHe9V
	gLvFG/EFoLoBKp5R1xaf4Gd8kFxI5up0/svmmQppWtz07itKhNs/jPAwfQFtXodeQcYv
	xa3g==
X-Gm-Message-State: AOAM530WjZrWjFWVpl1cJQ5ds1OzSWw0yN2064osAdUEgLXjcvLm3GCU
	92u5vq8pddBmuNIL0hEfxH/pOhJGf0g=
X-Google-Smtp-Source: ABdhPJx+bwm8SmCBTPwZnzk5sAxYUAxMKmOFl4CeMtZ+xBh5tp3HGIuRBGmgmilR1WUOj6Ct8pC7gg==
X-Received: by 2002:adf:e890:0:b0:1b3:6d7b:b29b with SMTP id
	d16-20020adfe890000000b001b36d7bb29bmr6548939wrm.692.1645200009393;
	Fri, 18 Feb 2022 08:00:09 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	h17sm21972018wrx.58.2022.02.18.08.00.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 08:00:08 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Mutt or Alpine
Message-ID: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
Date: Fri, 18 Feb 2022 16:00:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I'm using Mutt, but...

What does Mutt have over Alpine and vice versa, why would I use one over 
the other?

Mutt seems faster to me, but Alpine seems more user friendly without 
making temporary files while composing a message (unles I can tell 
Mutt/Neomutt to delete those automatically

So is there a consensus of which is the easier choice to use with Orca?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

