Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E5869EDE8
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 05:22:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677039734;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=difFHavqf0T6fcww/0GcQXmHhr8vM0F60vTpNJ1V0M4=;
	b=ALRCAhwRuuNB4elQ00pcqlL7XPeWTthfrrH79ybe8DhHs1PQ2p/29lAzDgQ4mLuB8Rc0gk
	qt0yfkuG/JiVU7nKDOin+GgQp6EfQTz2uWf8OFNBzSEHtoW30qyASnj56XGrVQm5syWSQL
	J+1kknYEjeRNfPg7RyOgb2xE9Mh/nwc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-ltre3QhzNoSj01h57tAVdA-1; Tue, 21 Feb 2023 23:22:10 -0500
X-MC-Unique: ltre3QhzNoSj01h57tAVdA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F9D6811E6E;
	Wed, 22 Feb 2023 04:22:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 311A0492B00;
	Wed, 22 Feb 2023 04:22:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9C64319465B1;
	Wed, 22 Feb 2023 04:22:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 04:21:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: What a find! DECTalk!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
In-Reply-To: <mailman.886.1677038394.686542.blinux-list@redhat.com>
Message-ID: <mailman.816.1677039727.686543.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I heard about this some time ago and have been meaning to try it, glad 
to know it actually works and people are using it!

Thanks,

Aaron

On 2/22/23 03:59, Linux for blind general discussion wrote:
> I'm happy to be in the fediverse right now. Looking through my 
> timeline, I just found a link to a Github repository that has DECTalk 
> source code, apparently released by some of the original DECTalk 
> developers.
>
> https://github.com/dectalk/dectalk
>
> The LICENSE file still has scary words like "proprietary" and 
> "confidential" and "all rights reserved," but the source builds and 
> works. I have it working in speech-dispatcher with Orca as I write this.
>
>
> Note that this is the DECTalk software version 4.x, the one that 
> sounds just like the DECTalk Express from the 1990's, so anyone who 
> needs hardware speech should feel right at home with this. No, this is 
> not the 5.x DECTalk that really sounds like crap. Have fun and enjoy, 
> and I do hope they fix this license soon. It would be good to have 
> another truly free speech synthesizer to play with, and this is 
> definitely a huge step in that direction.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

