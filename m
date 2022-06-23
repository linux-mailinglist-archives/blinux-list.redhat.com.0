Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B346955785C
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 13:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655982326;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+5z3P2O/r3ejN7ON+qFZOUr1CWWzMXqRF2g9JSteyZo=;
	b=FG3ihc0ieOSFc35WqVucHUvVoWMjfGnA5L+O2WJ6nRrsay2T/DOne1BTcG5KPJWK8PN9qX
	vsJRXKHvIJWeqllf3jS2gAI3hlolgNA6Fs5bhIg3U2Qh97/cGj0W728wPBU48uFXYVO+gc
	7CVK2ldynqpNJgh6l/jH1SiKerIssSE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-5UUqtLGkOOel_cKBrR6m5w-1; Thu, 23 Jun 2022 07:05:23 -0400
X-MC-Unique: 5UUqtLGkOOel_cKBrR6m5w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52791294EDCE;
	Thu, 23 Jun 2022 11:05:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B85B92166B29;
	Thu, 23 Jun 2022 11:05:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 341ED194B952;
	Thu, 23 Jun 2022 11:05:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Jun 2022 12:05:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Thoughts on KDE Plasma as of right now
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
 <mailman.28082.1655981624.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.28082.1655981624.111205.blinux-list@redhat.com>
Message-ID: <mailman.28290.1655982320.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I mean, all I really need is the apps being fixed, things like konsole, 
the various windows and programs and it's definitely useable. Dolphin is 
surprisingly great, I went in expecting oh, it'll be a pain to use.

No, Dolphin was quick, useable and responsive. The only show stopper or 
me, and I've not found a workaround yet, is that the QT5 windows and 
panels do not read, the irony of the accessibility panel being 
inaccessible is not lost on me, but I'm tempted to keep it around to see 
where it goes, and given the Steam Deck uses Plasma last I checked, 
here's hoping for improvements that get ported there too

On 6/23/22 11:53, Linux for blind general discussion wrote:
> Yeah, I've not tried it in like half a year, but this has prompted me to
> begin as a Patron to linux-accessibility again. Just $19 per month, but I
> hope it helps enthusiasm and to keep up this really great work!
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Thu, Jun 23, 2022 at 5:18 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> So given the news about KDE accessibility getting worked on, I figured
>> I'd give KDE a shot. I wasn't that impressed last time.
>>
>> However. It's improved a lot, I can do basic things, which is a big step
>> up, and I get talking app launchers, and can do email, web browsing and
>> text editing which is a big, big plus.
>>
>>
>> That being said, I still cannot change system settings or default apps
>> like I can on, say, Mate but, and here's the thing I like about KDE
>> Plasma as of writing this...
>>
>>
>> It is fast, it, on my Arch box, so YMMV on other OSes, but I'm running
>> this on my Arch box, the thing I like about it is the keyboard commands
>> make sense.
>>
>> Now, if I can just work on adding a shortcut that doesn't require me to
>> go and fight with a window that won't read, that'd be good. Plasma is
>> pleasently surprising and worth checking in on.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

