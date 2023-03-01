Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D73996A6585
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 03:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677637892;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uXOF5QJelju+rvS9eimHu1Hjdc2ccZjValBWFOcFPW0=;
	b=PPJRe9e4LLGaBBwt7/L5F1r9/oectIAEv6chZDKtfRgw+p5eIOGrmzxVI7reEGDGPnoRjl
	5wsapFoCkOyf9HLXw4KUmuy4d1oU8Yvw6hqEVlXFaCr9g7/gyiTUwY2lyWn+NGkq/QCOi5
	0scI4XTY5bHK6M7sY7JMK490fkmeNnU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-168-wAvihrzcPnCyg5Sq5ZfHBQ-1; Tue, 28 Feb 2023 21:31:31 -0500
X-MC-Unique: wAvihrzcPnCyg5Sq5ZfHBQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02A1480D0F0;
	Wed,  1 Mar 2023 02:31:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C459218EC6;
	Wed,  1 Mar 2023 02:31:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4488419465A8;
	Wed,  1 Mar 2023 02:31:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 28 Feb 2023 21:31:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Looking for a podcast player
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.959.1677626979.3183645.blinux-list@redhat.com>
In-Reply-To: <mailman.959.1677626979.3183645.blinux-list@redhat.com>
Message-ID: <mailman.1038.1677637887.3183650.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have a client who successfully uses GPodder on the MATE desktop with 
Orca. This is a GTK application written in Python, and from what I've 
seen of it, it seems to work well with keyboard and screen reader 
access. You can do everything from GPodder from downloading your podcast 
subscriptions to actually playing them, as it allows you to specify the 
player to use to play them right from the app. You can specify different 
players for different file extensions and for audio and video podcasts. 
GPodder allows your subscriptions to sync on gpodder.net, but this is 
completely optional.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

