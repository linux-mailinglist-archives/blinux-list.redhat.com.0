Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DD54C714D
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 17:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646064469;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RusyR7PWEcOjnG/u95dfTUnf40+UN6d6P/AYheqhY4Y=;
	b=V/hqX1ktowB9YNGkZNi4crwnAiXy6fblyVTqAcQ7Qzqm7ePd4vxpzF37bqDhsYGqlCQ8/r
	UD16Wwnl1/WIpKW60Wg/7u7udVF8qy8BToTyUOpNMQE82rxDAo+HO/HPtpdNzsSHIi94v1
	oYo85EbuSyd+hFa1u8Ovwl8XQ7A8fms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-374-fvTkbvieNBS4jCtC7UEV7w-1; Mon, 28 Feb 2022 11:07:35 -0500
X-MC-Unique: fvTkbvieNBS4jCtC7UEV7w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A22771006AA5;
	Mon, 28 Feb 2022 16:07:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E89A1053B27;
	Mon, 28 Feb 2022 16:07:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4338C4EE45;
	Mon, 28 Feb 2022 16:07:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SG5XSS020005 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 11:05:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE1FDC4C7A8; Mon, 28 Feb 2022 16:05:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA3FBC4C7A1
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:05:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0A9D85A5BE
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:05:32 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-670-YsXnpxjdPDSoqSH4uyOTNg-1; Mon, 28 Feb 2022 11:05:29 -0500
X-MC-Unique: YsXnpxjdPDSoqSH4uyOTNg-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 1354D1BBDFB
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:05:28 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id oZ_fqr4sVmf4 for <blinux-list@redhat.com>;
	Mon, 28 Feb 2022 16:05:27 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 3E8C71BB0B4
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:05:26 +0000 (UTC)
Message-ID: <b2a8081b-6661-8353-56f4-9fcc1ea7545e@free2.ml>
Date: Mon, 28 Feb 2022 11:05:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Use alexa on linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
In-Reply-To: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK that one does look a little better, and it seems it won't require 
having an app open and clicking a button on it to make it work. It still 
requires a developer account though, and I'm guessing they don't just 
hand those out to anyone who wants one. Maybe I'm wrong though. I didn't 
try it just yet.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

