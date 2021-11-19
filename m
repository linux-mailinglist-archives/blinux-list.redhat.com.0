Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1F945733A
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 17:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637339945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/6ynDdw0igicNS1rp5X092QSvSau5J6Nykdcm8z25Lo=;
	b=XyxKQsuj3HxUj3wd3wFujkz5YOpWaurkzsQGdRHxO8Tf7ns6ET68Qqf2geTxgmIY1846vU
	1XrOwIeBz2rsxgcZEI0FjBrLUJL35tj8UWnlI+/k8pDfh1pt+GXFaD7bFOdoHsCHK101Ht
	XZVxbNdutPiI/yP6OAP0GnIZC/TWf2E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-273-TxdDvz7pPFiWZK6ECd5mGg-1; Fri, 19 Nov 2021 11:39:01 -0500
X-MC-Unique: TxdDvz7pPFiWZK6ECd5mGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C6981DDF2;
	Fri, 19 Nov 2021 16:38:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C303A60862;
	Fri, 19 Nov 2021 16:38:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7EE484EA30;
	Fri, 19 Nov 2021 16:38:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJGcXi0025475 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 11:38:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A5AA61121318; Fri, 19 Nov 2021 16:38:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0EBF1121315
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 16:38:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3C3C80A0B6
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 16:38:30 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-453-HP0SUurxN2OK88Ym3q4k8A-1; Fri, 19 Nov 2021 11:38:29 -0500
X-MC-Unique: HP0SUurxN2OK88Ym3q4k8A-1
Received: by mail-ed1-f48.google.com with SMTP id w1so45063131edc.6
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 08:38:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=K9cd1/bLhJIQQCQnRWhCIO7OynTjd6VCvUPm6axEaHs=;
	b=YMBrbYkCrjIpKzBE+0wiSzxaua8w1eBordk78YS6amwfUYnJ7o89GKVM53NFeYvOq+
	QXLwJT9ZVW0LVcrBEnijYBA80NYIbumRL5fAd/TRejDUnThNaUoXbHp8fhiy4Um7A1+V
	iyXWHaBoUKocEHR7GH04LQ1mo4Kt8mvrItb0h+NcJLJLQdrsKrreWr9ZB/0n1e3KVEVf
	QTY+AncSrNVYr5uuyeHSM2o+cliG9hBYUcGnd9CbpZIV20mhPpX0Rpjv0/T+cPYRB4iK
	qDtjTgrmcLkw0hJfJhcToJeoMtkJbB3M/wgJWeT5t2/R/yp8ZMt36SxUkj7vxPDFRBZD
	+vow==
X-Gm-Message-State: AOAM531qcACO95HxI6kp7Vm16Tm6ClUYFjvQAxdWGmfX6++ooV23HWhO
	HfLXUgE2VBzziON2G8Mke6sMX/yVKVw=
X-Google-Smtp-Source: ABdhPJzjdiadbG4dzhrl4H5IyT4gNNEHLlaJeiKatosELLPIEFrLm+Y7xuKhlw3K3y2jYFpU58mG+Q==
X-Received: by 2002:a50:8d47:: with SMTP id t7mr26735002edt.14.1637339907858; 
	Fri, 19 Nov 2021 08:38:27 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-078-055-079-123.78.55.pool.telefonica.de. [78.55.79.123])
	by smtp.gmail.com with ESMTPSA id d10sm166243eja.4.2021.11.19.08.38.27
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 08:38:27 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
Message-ID: <fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
Date: Fri, 19 Nov 2021 17:38:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10
MIME-Version: 1.0
In-Reply-To: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
it is very simple. I love Mint because there is no snap activated which 
I don't like. One can say: Mint is an Ubuntu withouut snap.
Greetings,
Wolfram

Am 18.11.21 um 22:49 schrieb Linux for blind general discussion:
> Hi,
> What do you think of Linux Mint 20.2?
> Is it better then Coconut?
> I downloaded the Mate ISO from
> https://linuxmint.com
> I installed it in a VM, But
> I have not had time to really check it out.
> Thanks,
> Rob
>
>
>> On Nov 16, 2021, at 11:57 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> hello I have one more question, I think. Where do I download this distribution from? And in general about how much disk space does it take? Is it something that can be installed and will virtual machine or is it a live distribution. I can probably vinyl this out by going to the URL if someone would like to share that link? Thanks in advance.
>>
>>
>> Disclaimer time, just be aware that the above has been dictated to the machine by means of Windows-based dictation software. If there's something that you don't understand that has been written above, please reach out to me and asked me what my original intent may have been. Thank you very much for reading this.
>>
>> On 11/16/2021 5:51 PM, Linux for blind general discussion wrote:
>>> Hi,
>>>
>>> I have been using Accessible Coconut for about a month.
>>>
>>> Orca can start at boot.
>>>
>>> Thanks,
>>>
>>> Rob
>>>
>>>
>>> On 11/16/21 8:46 PM, Linux for blind general discussion wrote:
>>>>      Good afternoon or good evening or whatever time it is wherever you are reading this. My subject line pretty much says everything there is to this message. I am looking for inappropriate Lennix distribution to run in a virtual environment. From everything I think I know, I'm thinking the best solution is something that can be installed easily, and allow me to install orca really quickly if not do it in the same install. Any good suggestions? I do have access to a Fedora core ISO image but I'm just wondering if there's something better or will this be sufficient? Looking forward to readig response wake up to my question.
>>>>
>>>>
>>>> Please be aware that I am dictating this to the computer and Windows. I am using dictation software because of an additional disability. If there's something that I've written about that you truly do not understand, please write me and asked me what I may have meant. I thank you kindly in advance for reading this.
>>>>
>>>>
>>>>
>>>> On 11/16/2021 3:06 PM, Linux for blind general discussion wrote:
>>>>> Thank you Didier-and-Kyle. I will certainly run your command, but do I need to un mount anything? I would also figure I would be sitting outside of that mdeia directory? O-and-yes, Didier, it is vfat.
>>>>> Chime
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

