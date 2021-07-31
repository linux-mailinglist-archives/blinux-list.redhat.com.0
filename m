Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1555C3DC545
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 11:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627722701;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hY6J7bEtnuR1A5gpBk+nPNhQPdo7oDIbFiBNdejI/4E=;
	b=NblIbh/9Tpqc7KDmKAxl3a/AKAIi60xFKX+YP7Vkfg7kMOVrMjztewMuhcrsh3/GX3WaF+
	bKnJYXnGJd8OAj4tN/ysOtBwQBUZ6t8qzJkCQsHW68XT3zw48LHgsUX/t8A1wmviTdkY34
	QM5tce4vtBGZAGpYYjmh6+xucemZG9E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-557-F3XKdJyyN_a0Lbhtou_tcw-1; Sat, 31 Jul 2021 05:11:39 -0400
X-MC-Unique: F3XKdJyyN_a0Lbhtou_tcw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 843753639F;
	Sat, 31 Jul 2021 09:11:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EA315D9F0;
	Sat, 31 Jul 2021 09:11:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D60364BB7C;
	Sat, 31 Jul 2021 09:11:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V9BLc4024923 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 05:11:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C72B310166DB; Sat, 31 Jul 2021 09:11:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C253510150FE
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 09:11:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E011866DF1
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 09:11:18 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-188-fDQSqdh1OcipNIsQneknyQ-1; Sat, 31 Jul 2021 05:11:16 -0400
X-MC-Unique: fDQSqdh1OcipNIsQneknyQ-1
Received: by mail-wr1-f47.google.com with SMTP id b7so14502988wri.8
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 02:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=T5UBUHTjSKydcWcdWoZK4vSYUs6zcksnZX+1Gmg+5wM=;
	b=axB5f2OWcDUPXqwgze11kMEhDlMDGYGPdE/2VjRR287NbiH6naSrgCLYnQdBO2n4Qx
	LLnBiztqWu6jDqFRwPCiD7JFlUPPtHr9fdNZWlzdbCP4sKW0cRmZIR3DtauY0/JVZ4U3
	xZdqvH5f/cAkUf6yyaHs2v8ectXtlChrAGYfcxlPCLoxp1l69RVH8R8v5uay6P01WnP0
	qmrBF4bJkwr5oZJAtOLT9sHIPiNCVYSX7Kz6ZiAYntHEmbgw1PcnoxmUsBiRUlawcp/Q
	+WIeaW3IUCIwSRw3hZoXzQ3XSMHce6sAkbOPgmvnBCymxZjt/DEP1MtSo+YpIkJHS75o
	U/8w==
X-Gm-Message-State: AOAM531HkUzcZ0XKrGHywpc5pwuV/exZyWgP066tBc9IW0ox0IRucuqV
	yeOxJaMhp1LwuavwVYrRg9O3w9ADkjY0TA==
X-Google-Smtp-Source: ABdhPJyg7ESndm2IJF6sHXF8mvTy+UFDzfncf7IRtP4fGNcCXLmOZusCIr0dKg8+zhz2/PuEDlz7NA==
X-Received: by 2002:adf:f287:: with SMTP id k7mr7184690wro.206.1627722671855; 
	Sat, 31 Jul 2021 02:11:11 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id l2sm4026740wmq.0.2021.07.31.02.11.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 02:11:10 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
	<c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
	<977e443f-189c-849c-eb13-842d6b036500@gmail.com>
	<b8c423b9-0d48-8b71-26c9-ddcc752d80ad@gmail.com>
	<CAGz84JKRSyGytL6a5V+ZEvBaKkszhfNjJGeMzXw8a3=HS5HJbg@mail.gmail.com>
Message-ID: <e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
Date: Sat, 31 Jul 2021 10:11:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGz84JKRSyGytL6a5V+ZEvBaKkszhfNjJGeMzXw8a3=HS5HJbg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oddly enough I've not noticed the choppiness with the Budgie desktop, so 
I'm wondering if it's something Mate spin specific with how Solus does 
things though?

On 7/31/21 3:25 AM, Linux for blind general discussion wrote:
> I'm now running Solus and find that both pulseaudio and pipewire are actual
> executable files.  Furthermore, pipewire is not running, as indicated by
> typing:
>
> ps aux |grep pipewire
>
> Only return is my command.
>
> When I do the same thing, but with pulseaudio, I get several lines.  I'm
> going to assume this means that pulseaudio is running.  What, next, to try,
> to smoothe this speech out?
>
>
> Thanks,
>
>
> Dave  H.
>
>
>
>
> On Sat, Jul 31, 2021 at 1:56 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Yes. If Pipewire is installed, pulseaudio would be a symlink. Try
>> running file like so:
>>
>> file /usr/bin/pulseaucio
>>
>> This should tell you exactly what you're dealing with. It does appear
>> you will want to change your AudioOutputMethod to "alsa" in
>> /etc/speech-dispatcher/speechd.conf. That will be the easiest way to
>> solve the choppy speech problem I think.
>>
>> ~Kyle
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

