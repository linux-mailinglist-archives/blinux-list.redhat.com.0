Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B10AA4FE447
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 17:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649775678;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GVhZ8oybc94qdc9ULZRmSAJMsIjbIKl6GSGr7yfd0gU=;
	b=CuJ/ynIpvuY/yWs8Bb1mYW7mhhNLn/gwAWAjzBbrkzROUhT5vHoCgJITTpKm2RSRjYasZQ
	m5BNFcvDzjbNXeEV2q6gXjXbLdojb4AehS7Msbp1r/ArumwY36JG1NI/VJEo4p/n8AzRgN
	kA8TPz/pzidtOTUctSzzdcQDWDBpyYw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-182-jDieqSTAMnaON58GRPc4og-1; Tue, 12 Apr 2022 11:01:15 -0400
X-MC-Unique: jDieqSTAMnaON58GRPc4og-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79114801E80;
	Tue, 12 Apr 2022 15:01:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6425440FF40B;
	Tue, 12 Apr 2022 15:01:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DAB2C1940377;
	Tue, 12 Apr 2022 15:01:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 12 Apr 2022 17:01:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: DragonFM won't open text files again after last commit
To: blinux-list@redhat.com
References: <mailman.7848.1649771817.111207.blinux-list@redhat.com>
 <mailman.7934.1649774110.111208.blinux-list@redhat.com>
 <mailman.8090.1649775122.111201.blinux-list@redhat.com>
 <mailman.7728.1649775514.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.7728.1649775514.111205.blinux-list@redhat.com>
Message-ID: <mailman.8008.1649775672.111206.blinux-list@redhat.com>
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
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

ok i documented the key in settings.conf a little better and removed its 
value.
now open with does just show an empty input field

Am 12.04.22 um 16:58 schrieb Linux for blind general discussion:
> Ah great.
>
> well, the line must be there. but you can remove its value. its just 
> thought if you need open with command very often to avoid typing.
> let me set it blank for you in master.
>
> cheers chrys
>
> Am 12.04.22 um 16:51 schrieb Linux for blind general discussion:
>> Okay after clearing out the settings folder, the cache and doing paru 
>> -S dragonfm-git again that sorted it.
>>
>> I'm now curious if it's safe to remove the stuff on the open with... 
>> line, the cat and less stuff or does that need to be thereOn Tue, Apr 
>> 12, 2022 at 04:35:01PM +0200, Linux for blind general discussion wrote:
>>> Howdy,
>>>
>>> i found a bug that doesnt respect wildcars for mime subtypes like 
>>> text/*
>>> maybe you was affected by this.
>>> please pull and retry.
>>> here it works now all as expected.
>>>
>>> cheers chrys
>>>
>>> Am 12.04.22 um 15:56 schrieb Linux for blind general discussion:
>>>> As it says, after the last commit, I can't open up text files again 
>>>> with right arrow/ctrl+M/enter, I think it's the previous bug 
>>>> returning again. I'm not sure if changing up the python stuff broke 
>>>> it, but I'm noticing the slowdown a little but it's on par with how 
>>>> Caja operates on my system however
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

