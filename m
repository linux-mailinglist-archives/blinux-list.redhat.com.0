Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9CB1E1523FF
	for <lists+blinux-list@lfdr.de>; Wed,  5 Feb 2020 01:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580861649;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5mHCbGf5SyZDeYax4c0nIubKGi0hIMYdPQcHlD6Omhs=;
	b=BrWPaHjipn3dQE5DettzOdNdDpbOTDVhcD42SC9N/Ayff3nZa4AV91vW3QrKTzd7fhhYrr
	UM7ChG7ASH1Tt4gYQcYyX3PxHj9WCJg8pB7KURAjGAZByMxBjCUrsgvkOxtQULZrL3FX1P
	mxS8kOnnIleNnQfmKOyCyC3AhsoRJQM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-x9LLPvB9PdKB8wVEnC8fbg-1; Tue, 04 Feb 2020 19:14:07 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2A03801E77;
	Wed,  5 Feb 2020 00:14:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36E387FB79;
	Wed,  5 Feb 2020 00:14:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCF5818034EA;
	Wed,  5 Feb 2020 00:13:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0150Dn3s016908 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Feb 2020 19:13:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 17F61D0B57; Wed,  5 Feb 2020 00:13:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12CBBB3514
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 00:13:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E55D318AE941
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 00:13:46 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-361-ddL-EpvwNEWgVMYWlqCzaQ-1; Tue, 04 Feb 2020 19:13:44 -0500
Received: by mail-ot1-f50.google.com with SMTP id h9so260206otj.11
	for <blinux-list@redhat.com>; Tue, 04 Feb 2020 16:13:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wxZSKQKwgyVc2TkdzWaJ7IFekIcIG7RbkJ/Ibbdncg0=;
	b=FmBYypB5yLtO43xLDdEkphlC5GXPGHGrIA8jji3anc9pvuv+7SvGdzj81auaPb7hIq
	k9F91IoZgvbtmLJp49IgGURf46AYulRiDYKAm6BZ58r/NXdqnK9DQLFldWkzylK2nN8r
	tIVTwUYm9UJrg/nWJb0hSVl5RhjQUTLCMRIu4xgf9r138Bw3yUSx+R+3BQshsO1eLbpA
	9e+K5Z9dcOQJNXiFu38cM4CLUd7fshnYE+0ai4bHOrUnD3+CwZxDe7i/900Eu4FpqxaH
	oJrtdpm1wDAVbBYmBhNhPkaUwCMjnYb/iW9hgA6GE896vrnrObG7jcBZHVesndqmqnYI
	t1bg==
X-Gm-Message-State: APjAAAWetvJpiBpZBdCsjuDZCwgmHq5acjrGTTvqwb9mQjJNAtyQeMaP
	TI1NVCSVCOB877YxnhucX5SipQen
X-Google-Smtp-Source: APXvYqzUZGbB8WMWzZklajq/U4KdTlvoXHfZTapQQqVk/t8NrGQ1gxhDQdbZAdRGF2Ameko3ZKw0Ow==
X-Received: by 2002:a9d:6d10:: with SMTP id o16mr24826765otp.28.1580861623892; 
	Tue, 04 Feb 2020 16:13:43 -0800 (PST)
Received: from [192.168.1.14] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	s26sm8249861otk.43.2020.02.04.16.13.43 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Feb 2020 16:13:43 -0800 (PST)
Subject: Re: Looking for Emacspeak users
To: blinux-list@redhat.com
References: <bc9ce353-0b50-f93e-345f-c9d53da80968@gmail.com>
Message-ID: <2912b235-d91d-7e9e-7f20-67c96e0b77fe@gmail.com>
Date: Tue, 4 Feb 2020 18:13:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bc9ce353-0b50-f93e-345f-c9d53da80968@gmail.com>
Content-Language: en-US
X-MC-Unique: ddL-EpvwNEWgVMYWlqCzaQ-1
X-MC-Unique: x9LLPvB9PdKB8wVEnC8fbg-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I'm an Emacspeak user, so ask away or join the Emacspeak list. BTW, I 
use the same TTS for Emacspeak that I use for Orca, which is eSpeak. I 
don't have a separate TTS just for Emacspeak.


On 2/4/20 10:01 AM, Linux for blind general discussion wrote:
> Hello
>
>
> I have Several years curious about emacspeak.
>
> I tried it out in a raspberry pi, but regarding it needs its own TTS 
> engine whuich I was not able to configure in those times.
>
>
> I would like to contact emacspeak users in linux to discuss about what 
> can I do in that environment and how versatile it is.
>
>
> Thanks
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

