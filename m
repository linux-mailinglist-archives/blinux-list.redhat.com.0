Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B17639417
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 07:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669443858;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7N4QwkjfOy5oLLIsZ/n5v5ZNNZsOnRxS0oFvcxLDo20=;
	b=YgfVPY7geglxZ+m+1Q299ee3FqONet7sOkSxRk0TxBVhqRY1lY9cbVbGmxmz8rABWzJCLa
	1caAnhDjVZcV5hX6mPUENvKPYSZW8Vbcg+p0V1tw5Iv6zYOu4vou2dHilVy7WCDHKCuU6+
	MPIcT041muovdl227iaabFfKsP1tGH4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-55-89SePw0uOJmTz9FmMmRxvw-1; Sat, 26 Nov 2022 01:24:16 -0500
X-MC-Unique: 89SePw0uOJmTz9FmMmRxvw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AABC41C0515B;
	Sat, 26 Nov 2022 06:24:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E82BD111E3FF;
	Sat, 26 Nov 2022 06:24:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8AB121946597;
	Sat, 26 Nov 2022 06:24:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 01:24:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: blinux-list@redhat.com
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
In-Reply-To: <mailman.1917.1669441933.6934.blinux-list@redhat.com>
Message-ID: <mailman.1960.1669443853.6931.blinux-list@redhat.com>
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

Oh it sounds like you want something like an app rather than a web front 
end for a server. Sorry I misunderstood your question. Pleroma as I 
recall can use anything that Mastodon can use as a client. That said, 
desktop clients for these things tend to be harder to find. It appears 
to be easier to find phone apps. On a desktop, your best bet may be the 
website of the server you join. Most phone apps, at least on Android, 
appear to work with Talkback pretty well, though it's worth noting that 
although I run my own Friendica server, which does have Mastodon/Pleroma 
compatibility, I haven't tried a lot of the Android apps just yet, as I 
find that the website serves my needs well enough here, but of course 
your mileage may vary, especially if you're trying to join a Pleroma 
server, which can have any number of front-end web services. I still 
recommend trying the various clients you see, and look at the client 
list for Mastodon as well, since the API's that clients use are said to 
be the same for both.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

