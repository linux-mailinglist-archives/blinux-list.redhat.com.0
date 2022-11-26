Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D2E639401
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 06:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669440427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AHk8vAPHacJrQubXY7PpixAhZQELCajDzVGrEZXM6Vc=;
	b=SLbzfW//vZoXVSKG/WFWnI9IIjacDcVovqxl/LVLbUbXJJ5/zvQY3fZu0Bx5DS9tiXFNKj
	95XH6FBwV1winxR2aGoHYIiA/ucfcoaxWNGPnCYDqaeNL7HT/E8VzCCs6d8SKiFimZx1WW
	3Opz1EYkr7YG/U/dtEPHndlhlayCc3c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-84-8Yp6DGCLPUa6_hDHF913WQ-1; Sat, 26 Nov 2022 00:27:03 -0500
X-MC-Unique: 8Yp6DGCLPUa6_hDHF913WQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D674811E67;
	Sat, 26 Nov 2022 05:27:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 999DA111E3FB;
	Sat, 26 Nov 2022 05:26:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DF51E1946597;
	Sat, 26 Nov 2022 05:26:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 00:26:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
In-Reply-To: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
Message-ID: <mailman.1994.1669440416.6925.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I was thinking about running something like this. I mean I already have 
Friendica, which is easy to get up and running, but then I heard Pleroma 
may be harder to get started, but may perform better. I'm not sure what 
front ends are or are not accessible, although I have heard that 
pleroma-fe I think it's called, which is the default front end that I 
believe ships with it, works pretty well with screen readers. If you do 
get the back end server up and running, it may be worth trying the 
various front end web services available for it to find the one you like 
the best. From what I understand, you can switch them out fairly easily. 
Welcome to the Fediverse.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

