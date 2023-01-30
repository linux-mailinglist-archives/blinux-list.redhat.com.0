Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1004D6815DC
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 17:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675094612;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RSMNQkgzx44c4OHh0phOpdtQwm8w8dtzSKjRc4t5NBs=;
	b=i7JAYEjIWVE8u7kJxn/V4PGOCktd35OcuhxARuB9OfrJvF3gs23qSDrebNZVHZH9JKFuAd
	OYsNacop54dTe9RzHfbnE/UAA9g179/awu8Y7pq4b/dVbOJ5g1/Ru3Wc86QWnRkwQSkARw
	Kbf0/+1cFRIgLnGVSTJKYGuMp05Or4M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-498-hP59m7TDMk2sWMFEXcILVw-1; Mon, 30 Jan 2023 11:03:30 -0500
X-MC-Unique: hP59m7TDMk2sWMFEXcILVw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AE491869B12;
	Mon, 30 Jan 2023 16:03:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0E2722166B26;
	Mon, 30 Jan 2023 16:03:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B4EA71946597;
	Mon, 30 Jan 2023 16:03:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 Jan 2023 11:02:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: twitter alternatives for blind users
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2375.1675057992.8177.blinux-list@redhat.com>
 <mailman.2159.1675059096.8172.blinux-list@redhat.com>
 <mailman.2357.1675059714.8175.blinux-list@redhat.com>
 <mailman.2190.1675067274.8172.blinux-list@redhat.com>
In-Reply-To: <mailman.2190.1675067274.8172.blinux-list@redhat.com>
Message-ID: <mailman.2382.1675094600.8169.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Not sure about Bonfire, but I know Pleroma runs its own Gitlab, so I 
find it absolutely awesome that I won't have to get an account on a 
Microsoft website to report such issues, unless Phoenix itself is hosted 
on Github or similar. I'm seriously considering trying to switch 
Talkabout off Friendica and onto one of these other platforms, possibly 
Pleroma since I've seen it in action and like it so far, although the 
last time I had a serious problem with Friendica, I was in fact able to 
just tag their support forum, which itself is a Friendica instance, and 
I find its a11y to be a cut above acceptable, even though it's probably 
not a major focus.


Since I switched off ISPConfig3 in favor of Hestia Control Panel, I find 
it easier to run more various web applications on my servers, as it uses 
Nginx reverse proxying to Apache by default, and I can just copy that 
and change it to reverse proxy to pretty much anything else very easily. 
So I will have little to no trouble getting any of these alternatives up 
and running, even on various domains other than Talkabout, just for the 
fun of it if not for production use.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

