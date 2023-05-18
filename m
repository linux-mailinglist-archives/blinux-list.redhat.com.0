Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E37082A7
	for <lists+blinux-list@lfdr.de>; Thu, 18 May 2023 15:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684416578;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BUQ6Q+XItXIZC8xkMKsAJ0ECZQYIciH7H/23sbe8d6M=;
	b=YFWVBar3Lqly2DfIX4O3H3rRwPKRUbu0SBZe3vWKBeab1uSh0Ex1YS2/UYIj6wPe2BtAB2
	dqY4mP7+A7+GKoRDMsDJCkH7g72jOtEln6mvziOqC7bSKaAfTCKQEhJP5/NkbNSrdO21Sw
	K8Hv9oeKNjHmFOH+y3cBi9HTBhsgA7U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-zJIMag0rN1KqjzuMu06-6A-1; Thu, 18 May 2023 09:29:34 -0400
X-MC-Unique: zJIMag0rN1KqjzuMu06-6A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32F6E88D071;
	Thu, 18 May 2023 13:29:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 764FF2166B32;
	Thu, 18 May 2023 13:29:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E92119465B5;
	Thu, 18 May 2023 13:29:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 18 May 2023 09:28:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: blinux-list@redhat.com
References: <mailman.1073.1684339614.1505526.blinux-list@redhat.com>
Subject: Re: gentle reminder on anonymous posts
In-Reply-To: <mailman.1073.1684339614.1505526.blinux-list@redhat.com>
Message-ID: <mailman.1486.1684416545.1505524.blinux-list@redhat.com>
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


On 17/5/23 12:06, Linux for blind general discussion wrote:
> To be sure, it doesn't really matter (to me, at least :-) who these 
> folks are, but it would make it a lot easier to follow conversations 
> if some identification were provided. 

It must be an issue with the mailing list server.

I know the messages are sent out with my full name and e-mail address in 
the "From" field.

Perhaps this is a side effect of the way in which the list is configured 
to deal with DMARC compliance. I'm on other lists for which this is not 
an issue, though. I do have a "reject" DMARC policy in my domain's DNS 
record, and SPF and DKIM are configured appropriately.

Jason.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

