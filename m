Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E924B545F
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 16:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644851828;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9uv9lY37aoYq6jluNYALn625BVEd0ffwPAEHL54hjRc=;
	b=FF8UsvOAriDHE436QciQOfkNrMqklLgyQF6brsYgjDaOry1xp7k7Nk68k+XfY28heb5wpK
	IjVZivuZAN4goc1UBa5gPhDUhI4xEcSxJku7jVmTJ9MBT7hYvKN+SdXBs62zaXRkBVTESd
	S7MYbA9EGvaQha0FoZW/6STitH2RfQk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-154-xkDxYzccNDqiBRuGbhG6yg-1; Mon, 14 Feb 2022 10:17:06 -0500
X-MC-Unique: xkDxYzccNDqiBRuGbhG6yg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60E251006AA4;
	Mon, 14 Feb 2022 15:17:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11E605E488;
	Mon, 14 Feb 2022 15:17:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 753011809CB8;
	Mon, 14 Feb 2022 15:16:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21EFGnfI018272 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 10:16:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 657975361EA; Mon, 14 Feb 2022 15:16:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 616B05361CF
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 15:16:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4727829DD988
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 15:16:49 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
	[209.85.216.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-367-69CTKkbQNOiez2hzuk7y5A-1; Mon, 14 Feb 2022 10:16:47 -0500
X-MC-Unique: 69CTKkbQNOiez2hzuk7y5A-1
Received: by mail-pj1-f41.google.com with SMTP id v4so14890480pjh.2
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 07:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=hK8ROaa4M/OKKEaGd+H4hRwOjHXUmv2LDZLOVboFN8Q=;
	b=IZ/ooz+NZLEGN//311R+fNbRXkGZ+5tmtdxL0995HIF3ffy9CTLjpssVsMO/7mG/+3
	NSw77pC+rCXc+CVJvURrYMCOP03aM6BH1YqNxMdJtFEXFrDo50kr3GfaVjjOsNmzn6hZ
	DN7+EYhCc2W9dscWJ6lkAoPUAc8iX6AOxzRwD9PIo1JbtA2PxcSda82C7PgMARI9yRK6
	vMwfufryBPTi0xTS3pBH9GVj1ZdZK9eYFaQsk1G3CS/ZKOuHOR5ir+ppFRuJQFTVgYtt
	K0VUXiPER+gX/1hO09kkVZRircPCAGmrgPnxdwkFpG08Xy2NFf8U+YCrp20bAO6XFxYz
	NAiA==
X-Gm-Message-State: AOAM531PnUY/u/SmdRoj0Gg/Uv+cpZ9EcYtPFSxp9WCwUyLESg9Nem52
	EwDzO8aIAsYdc2yhayMtdr+T77zGc4h72A9y1DKzoM32
X-Google-Smtp-Source: ABdhPJwfk5qADrNz1o4angar9zqRR3sZGzZB2NMJsozU18I9Qub/rgOJNybG5S4VFmWYePFivRdZA6MD2sd5zRwvZ18=
X-Received: by 2002:a17:902:9a06:: with SMTP id v6mr157802plp.60.1644851806059;
	Mon, 14 Feb 2022 07:16:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f951:0:0:0:0 with HTTP; Mon, 14 Feb 2022 07:16:45
	-0800 (PST)
In-Reply-To: <f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
Date: Mon, 14 Feb 2022 09:16:45 -0600
Message-ID: <CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried adding entries to the pronunciation table, but strangely, they
vanish after a few seconds.

I Open the screen reader prefs, selecting the Pronunciation tab. Then,
I select New Entry. I add a punctuation to the first column (e.g.
'!'). Then I tab to the next field and add a pronunciation string
(e.g. "bang"). Then, the entry that I created just disappears. The
table had one row when I was entering stuff, but a few seconds later
it shows that there are no rows. This is so weird! What am I doing
wrong?

Amanda[0]

On 2/13/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi,
>
> Perhaps what you're looking for is Orca preferences > Pronounciation
>
> There you can set pronounciation of character or word.
>
>
> HtH
>
> On 2/14/22 06:44, Linux for blind general discussion wrote:
>> I know you can switch between the usual All, Some, etc, I want to
>> control how punctuations are pronounced, e.g. '!' can be spoken as
>> "explanation mark," "exclaim," or "bang," When I am writing code, I
>> like to hear the punctuation, but shorten it as much as practical.
>> This makes code easier to read IMO. Is there a configuration file that
>> will allow me to make these changes?
>>
>> Amanda[0]
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> --
> Edhoari Setiyoso
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

