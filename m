Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D96466F079C
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 16:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682606273;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RziS6+PkayRfDhGeYbRsGvAC7LSRLnHChNS8jos2IrQ=;
	b=VyHZ6fwFhf5OGMMrFFT7QZcsJK94cOZI6OeMhb/vR65vzLBKMf68OrpOMD3+hxZ/PHILVx
	AeotZBLe/v4bmfoklN+4ApFIfYnuWqC87kaK5qB7Xs8eO42/DhUg9zO6P4gFBvWSHos2yP
	rHRnzYR3+OoZpjFl6FbhjQBfVB/CdKg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-290-cDOOei_YNUG6UackbCNjrQ-1; Thu, 27 Apr 2023 10:35:34 -0400
X-MC-Unique: cDOOei_YNUG6UackbCNjrQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97D15894EF4;
	Thu, 27 Apr 2023 14:28:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 84C3C40C6E67;
	Thu, 27 Apr 2023 14:28:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1EDB31946A51;
	Thu, 27 Apr 2023 14:28:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 10:26:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Two Arch beginner questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
In-Reply-To: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
Message-ID: <mailman.2214.1682605732.2351818.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I find lightdm with lightdm-slick-greeter to be about the best display 
manager option. You should be able to start orca using alt+super+s from 
the display manager's window.


Fenrir is probably the most comprehensive fully userspace screen reader 
for text mode TTYs and terminals, meaning that it doesn't live in the 
kernel, although Orca works pretty well in mate-terminal. Personally 
though, I find that desktop web browsers and email applications work 
much better than their terminal counterparts, including being easier to 
set up, easier to navigate by various elements such as headers or links, 
and especially for browsers, supporting many more websites in a more 
accessible way. Just as an example of this, I have been able to access 
online banking through Firefox for coming up on 20 years, but none of 
the terminal-based browsers have ever allowed me to log into any bank's 
website, and many won't even show the login page correctly, not even in 
2023.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

