Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id D6CB7164201
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 11:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582107933;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p43cU8a0Sp88yDBNjClPxET/brmZyLYM2A+pxxmuxxE=;
	b=Wvrn1ptIIKVzwOssEShZS4CAV63CNr/A4l5bResI7OPvxnfQReVpuM8YHb9GXXN5xoh3Hw
	MiuhehsvrWFUGQTQSl/NR1jBDwXNh/K8/VH9NxCXcRu4pOjQcpvr+2UjCTIMVPOIcmN4LB
	ZHHDtVZFNp0uk2oRzy90tJk6C4pDKl8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-D7Jd9SSlMMOQD1-3pEirfw-1; Wed, 19 Feb 2020 05:25:31 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3C7B800D5E;
	Wed, 19 Feb 2020 10:25:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5125F89F3B;
	Wed, 19 Feb 2020 10:25:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E84351809567;
	Wed, 19 Feb 2020 10:25:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JANm2a029384 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 05:23:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 462342063207; Wed, 19 Feb 2020 10:23:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40CD32026D67
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 10:23:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF878101D24D
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 10:23:45 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-313--nsqjkgKOeysl025WZCVxA-1; Wed, 19 Feb 2020 05:23:43 -0500
Received: by mail-wm1-f44.google.com with SMTP id t14so6142669wmi.5
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 02:23:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=cH/21i73xzhljqSwSWyBIKl6I6OuagiM/t2PyX+6ChU=;
	b=X4avKOy8otgcG1ve8lovwf78xaasxf53dzBQfJxKJykfnPtfjo9Jji7Zu0GT42Me20
	BBgeWdLVP4+AmnF056Pf16MGyhB5rM3Mlg4xh+7042dg0/xq7wo3fmU2E/DU+mmZCRC1
	WJg1LcFc4lo1lMjW6P72IdQ/vK6MJy3c8LxY8leP3x1tiJx43XWb4536z39Ae9q6D7S4
	XpiWETzpZJc5ectIi9F4YcnQHWwilW+SSQ4UjNfsFczdFB0FUtF3e4zzwhMuUPvSL0kf
	0qbYeTuqkte3yF7QtpFVE/TGLzWwFeJ2trMcvG/xrxzEDJnmDXhL1Ej+jDLtT2m5EVAg
	LilQ==
X-Gm-Message-State: APjAAAXSEx9l7bqFQ0zKEQSXtJjB8npww4WhuFw3aiK5frCHMGQR3vhY
	FV70+N787h+lE3+fk29PQiIAjNHZ
X-Google-Smtp-Source: APXvYqxcZGTQ3k0l+1ZmPU5wavFuJp5jGlmKp8ZQlLHIOymxMJwG8EIADK86hDNubaEFuSk88UreFg==
X-Received: by 2002:a05:600c:414e:: with SMTP id
	h14mr1672557wmm.179.1582107822394; 
	Wed, 19 Feb 2020 02:23:42 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1810:500:1cb0:5aba:dff3:46e2?
	([2a04:b2c2:1810:500:1cb0:5aba:dff3:46e2])
	by smtp.gmail.com with ESMTPSA id
	s23sm2378567wra.15.2020.02.19.02.23.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Feb 2020 02:23:41 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Getting started with Debian
Message-ID: <28075e6a-979d-c1b5-cc1f-7ead9c893dac@GMAIL.COM>
Date: Wed, 19 Feb 2020 10:23:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: -nsqjkgKOeysl025WZCVxA-1
X-MC-Unique: D7Jd9SSlMMOQD1-3pEirfw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

So, since Debian got brought up on the list...

What all do I need to get started with it, exactly? I'd like to get a 
system up and going on debian-testing, and set it up how I want

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

