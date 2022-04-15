Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 129B8502547
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 08:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650002746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vacr7jQPJNY0+nYK1NhBJUSkERdK/ULUBtRpoScwnws=;
	b=WQq94eTQM9qfxquA5J6fwCeSmJYABHftrlF7NtxHL7PI/Vsi9iMK6SnEh23WLrylp+YlUu
	lrkN5FPaLzXqpMbnLwgESFGIBSYuiXyIS3V1Ljg7VmnKkI4R0K+OrbK/Rp7mI+lrPtgFwJ
	hy9oB4cUoSQBr94mSlNZoDTfRfaR23M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-XKcezU68MLOyIf8aMX2Ktg-1; Fri, 15 Apr 2022 02:05:42 -0400
X-MC-Unique: XKcezU68MLOyIf8aMX2Ktg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 610BF83396C;
	Fri, 15 Apr 2022 06:05:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3EDA340E8100;
	Fri, 15 Apr 2022 06:05:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1BBE6194034F;
	Fri, 15 Apr 2022 06:05:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 15 Apr 2022 02:05:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: mailing list privacy, etc.
To: blinux-list@redhat.com
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8699.1649970342.111206.blinux-list@redhat.com>
 <mailman.8427.1649995127.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.8427.1649995127.111205.blinux-list@redhat.com>
Message-ID: <mailman.8448.1650002740.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You definitely have a point. If there is a way for the administrator of 
this list to just remove the email address, or set it to the list 
address as it is now, but still show the name of the sender, this would 
be very much acceptable, with the exception of automatic completion that 
seems to put the first name that I replied to next to the email every 
time, so I have to go back and fix it. Still, that's a very minor thing, 
and i do believe they may have fixed that now so that if I fix it once 
it stays that way. So if I do quote someone to provide answers inline or 
just to reference the exact point I'm responding to, the name will 
appear as I want it, and I can easily see who I'm responding to, even if 
they forget to put a name in the message. If this can be done, this is 
certainly the best option going forward, and should not generate any 
spam that doesn't get caught by the list's filters that keep out all 
non-subscribers' posts.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

