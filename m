Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2FC4BBD6B
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 17:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645201474;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4WEZOadwSl3tzqxUaMCDDm7vaARd0fE1/FDkEBJ80/0=;
	b=VQD7IGaE5rH1TguV1uU5d8mTyYK1+NqGJNEvPuNsU9WGWym1UCE3Z2/oKSATmZxsFC65Y4
	tgze+qIvcndFXzw4xhDqd4lV7VPqJQC5zWAmZRT5fue/s6cjdlSViiHkjUcfIE7u10n/1+
	55ID4d3d1jp/30Vv81+xMfRdGdKqTEI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-VHu-8dzmOXScOWPfUPw8wQ-1; Fri, 18 Feb 2022 11:24:31 -0500
X-MC-Unique: VHu-8dzmOXScOWPfUPw8wQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39A5E18397A7;
	Fri, 18 Feb 2022 16:24:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21FE4108BD40;
	Fri, 18 Feb 2022 16:24:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3839D1809CAA;
	Fri, 18 Feb 2022 16:24:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IGM0iE019634 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 11:22:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B393276E9; Fri, 18 Feb 2022 16:22:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF70E79A9
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:21:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3138802A5E
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:21:57 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-582-wXC0XsE_M0ewUmWCiUC7ew-1; Fri, 18 Feb 2022 11:21:55 -0500
X-MC-Unique: wXC0XsE_M0ewUmWCiUC7ew-1
Received: by mail-qv1-f48.google.com with SMTP id o5so15698176qvm.3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:21:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=kcCqi7DKncBEPmh2+tFUKXdDb3HAWfFgVzBeX9ZONLo=;
	b=tue6b1UBGMjl5nA4N0vYX0PR9KlRYupc74opoLJZv99DhQRYpI8fOdIt5HwgHE4iJs
	OuPWph00TTs3HjxLf2ieOWGBs5GVm1WIGM6NXf5z9Dygr4kUYIudUNfgJzZOxW90T4E/
	Am0FTw6ybNI9s/Jn1r2jGeAd0gnnhVn186Dsog6XefpEW1MbQvQMzTpdOJe6zFNyK6se
	0U994N5uxkaNjF+LDObM8yd2GeyEhr5w3m5buDAbEex8DUiwqfR6kfDlnSLBgeDOlrmf
	gY7q5LV+4EqDd+1gdG7qRfC5Gnbj6uysE1w/+cfn6M+9lV/jQTxnTE6nPKHhDoqm9bbs
	bhTQ==
X-Gm-Message-State: AOAM530npCjYqn0mfIWc3o6JbLx90v88a+YBNaSQ/nRqy0mPdhacyQUO
	YyelLpf5cQsos4j8n/yrdav7m9uMsfukvg==
X-Google-Smtp-Source: ABdhPJzWESb0bEN7OhaGXbYaxKrTjT+ZE1rR3aAqBBNHxcHV2dfyurKVdZ/bF4JVxY1CaiU4QZa8nA==
X-Received: by 2002:a0c:e6c5:0:b0:42c:532a:6864 with SMTP id
	l5-20020a0ce6c5000000b0042c532a6864mr6452929qvn.113.1645201314977;
	Fri, 18 Feb 2022 08:21:54 -0800 (PST)
Received: from [192.168.2.11]
	(bras-base-otwaon234vw-grc-29-65-94-101-185.dsl.bell.ca.
	[65.94.101.185]) by smtp.gmail.com with ESMTPSA id
	j14sm23493251qko.10.2022.02.18.08.21.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 08:21:54 -0800 (PST)
Message-ID: <24f6f8cf-f064-be98-8c5c-2c1176a6a258@gmail.com>
Date: Fri, 18 Feb 2022 11:21:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Accessibility of installing Distros?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
In-Reply-To: <98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Relating to installing Linux, does anyone know how I get a Dell 
Precision T3600 workstation to boot from a USB stick?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

