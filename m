Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AEF232D8A58
	for <lists+blinux-list@lfdr.de>; Sat, 12 Dec 2020 23:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607812348;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4HyPevZyEV3vEcVO+qb97czt1Uj13co+BI/UOnGgJT4=;
	b=fqNZXWIRU0k/4hzkHonhHgePJapUObjIlVoTjdsaB5/cmHWPA+2AJ9KTKCNtTX0ZJV2LCw
	fdyOn9VGh/BunNaJXnK8PCplGNCmW9Km/7JNe6x/WCVR4DlFB6WckNTHoXpd2cDl/2d002
	YZcU9z0CT/xLBSceQaTwrmE0u4BVeg0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-GdUcVce3P9OMlkbE1tSqcQ-1; Sat, 12 Dec 2020 17:32:26 -0500
X-MC-Unique: GdUcVce3P9OMlkbE1tSqcQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C89B801817;
	Sat, 12 Dec 2020 22:32:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 535EF70464;
	Sat, 12 Dec 2020 22:32:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BE12180954D;
	Sat, 12 Dec 2020 22:32:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BCMWJx5021783 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 12 Dec 2020 17:32:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 233332166B2A; Sat, 12 Dec 2020 22:32:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E2CD2166B28
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:32:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE70C858EEC
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:32:16 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-391-4dumcOkYMHaJgaO-K2B_eA-1; Sat, 12 Dec 2020 17:32:14 -0500
X-MC-Unique: 4dumcOkYMHaJgaO-K2B_eA-1
Received: by mail-pl1-f176.google.com with SMTP id g20so5767452plo.2
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 14:32:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:message-id
	:user-agent:mime-version;
	bh=38J8Fz8TT7iiItD/SZ0I9pHhZBnWv9ugqS36MqvUPIQ=;
	b=Jt9/XYkxVCDmJ3M43kZQh2mYTgQpUjpSecJUH6E1kpLYz60icuSBcbAN2VQ/h62z06
	VbziTuqfSnq6K15nKzfixUPbYG4san78q4gBNtQrZ+9xBupO8AI+o3naew4u2P3yXpXd
	V83A/tQ6WoymcuRCxoJlK+Ab79VH3f9PHx3ZzWqrCGlPtQ683WFZwrzoh0awHXOS5q2C
	xsF5nPqwg2MHu6NAD0u/ca9ItQxN10pyVGRG8mPYZq4tz1yeG+/rdwCYOT1JXQ5dcjxl
	g7M4iNrACVlpjlQBdII7Pv8eb1d9D7Pt1aHm8+fK2IXsVu1aD9Mv+lLCA/y4mZdm9Wg2
	+ryA==
X-Gm-Message-State: AOAM531PA5gCbm92+BGB9TEUJwkG93ygbqYexDhfCpM0VJoOsmtjRiII
	X8xTU5dpBoEZQHfSQOn6WFcAnQASsh0=
X-Google-Smtp-Source: ABdhPJwMC1gVSyEEpFdhlb1/eXmUpHP88KoUdy76XpF2I6ngSQ8XqG4Cv2d5BysjQkTsoguKIiUuKQ==
X-Received: by 2002:a17:90a:f683:: with SMTP id
	cl3mr18977662pjb.136.1607812333382; 
	Sat, 12 Dec 2020 14:32:13 -0800 (PST)
Received: from precision-M2800 (72-160-108-142.dyn.centurytel.net.
	[72.160.108.142]) by smtp.gmail.com with ESMTPSA id
	m18sm14884243pff.172.2020.12.12.14.32.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 12 Dec 2020 14:32:12 -0800 (PST)
Date: Sat, 12 Dec 2020 14:32:06 -0800 (PST)
X-X-Sender: tom@precision-M2800
To: Blinux list <blinux-list@redhat.com>
Subject: Has anyone used slack (slack.com)
Message-ID: <alpine.DEB.2.22.394.2012121430210.6481@precision-M2800>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi

I have a group that is using slack and wants me to meet with them 
tomorrow.  Has anyone used the slack messaging stuff and how accessible is 
it?

Tom

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

