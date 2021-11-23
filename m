Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 782B045AEDF
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 23:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637705287;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JPZEh9mCCudJahBLLKmwm1fO70HGAHIcHwbXXeNdiVw=;
	b=bho2rnD9dsKHGTk+ADRKR77VQjJmDmuxSq3sUGDIFtJ98BHbrV4a9BMUk06hhRG9qAQKFx
	QqTfZi1DTF+xgLq03rxTazUgoOcxFBkD4Eo5678wrC+4S9CZeqztm7TchX+xjb4wUrS4g0
	v5p9ATeFUHmAHNbQgLEGQBXtlqnHvrU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-182-0snzretbNA21qPn6Kp28Mw-1; Tue, 23 Nov 2021 17:08:03 -0500
X-MC-Unique: 0snzretbNA21qPn6Kp28Mw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D2EE101F002;
	Tue, 23 Nov 2021 22:08:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71C0E7945C;
	Tue, 23 Nov 2021 22:07:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CDD9E1832E7F;
	Tue, 23 Nov 2021 22:07:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANM23SX021378 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 17:02:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF2D42166B26; Tue, 23 Nov 2021 22:02:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9DF72166B25
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:02:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 307F2811E76
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:02:00 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-123-Po5_xpCFOgOFfk8bF_RfWw-1; Tue, 23 Nov 2021 17:01:58 -0500
X-MC-Unique: Po5_xpCFOgOFfk8bF_RfWw-1
Received: by mail-ed1-f46.google.com with SMTP id g14so1101919edb.8
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 14:01:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=+ohPHu3JqvTQHZUewIJ8GvrDKwXD3UAqOvfF1RrQ+OQ=;
	b=p3sRSaaC7wdekcFNqJVf0avoljxjHzCHEn7SWwo6JhiBrVBiAwLXn2wg6XPRA6XeJE
	pp5LEB678wAJ91g2FkYDNZdqte7AFckst87Kb2wqZq3C8vQgozLD7A5NGCuU2587GhKZ
	XdXLz+rKL+p0fZrOSTKX09rHPOl1Tx8dRkJDDKNYphzCdU6IPR9Fd/xyw0P6quU27HxN
	xAJlWwDbSi6k+gGHXTYPtVgKE3Tahf9ztWhCtYOC+Mwn9nGiEZxHRI5Z6SxnkCImryir
	im7FpyXrZf8M1FER/YlrnWY2ueCqWNZlmkcwsK/rHoZmugeeKh93Oa3Te8AZuPSIMEok
	FLVw==
X-Gm-Message-State: AOAM533u+1E/rv8J+NM8C+5gL7TDxsnLd0Fk/8wwmN79Zt70G7Yoc6Ft
	N5V/yyvwNmxKan0fHPA9PN6hZAWiQF+geQ==
X-Google-Smtp-Source: ABdhPJzSXcSZH89H5/l1JTzMICQRQrdYsnfZeLYSTguzbM4f6HHsAvpI/KjoimqKwapsv+zL7jDb7g==
X-Received: by 2002:a17:906:f856:: with SMTP id
	ks22mr11882275ejb.367.1637704916353; 
	Tue, 23 Nov 2021 14:01:56 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	he17sm5935187ejc.110.2021.11.23.14.01.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 14:01:55 -0800 (PST)
Message-ID: <d8ac620c-ce23-8ff7-d20f-4057682390bd@gmail.com>
Date: Wed, 24 Nov 2021 00:01:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Ok, Jenux finally installed for me!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <B5680B56-6FCB-4768-9404-664C2D069970@gmail.com>
	<alpine.NEB.2.23.451.2111231630150.11512@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111231630150.11512@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It's Mate and no, alt+F2 "orca" did nothing.


I decided after a few hours to not bother, and installed Fedora 
Mate-Compiz 35, which does talk just fine.


I may give Jenux another go some time, when I have eyeballs nearby to 
troubleshoot.


Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

On 2021/11/23 23:35, Linux for blind general discussion wrote:
> This should be a one-time procedure.  key in alt-f2 then key in orca
> --setup.
> Does orca start talking?
> I don't know what desktop choice you made mate is a good one and kde last
> time I knew didn't have orca in it so orca would have to be downloaded and
> installed with all dependencies in kde and even kde-accessibility list
> can't provide any guideance for use with orca since that hasn't been
> researched on that list.  If you chose a base install, you have no desktop
> and you also have no orca on your system.
>   On Tue, 23 Nov 2021, Linux for blind general discussion wrote:
>
>> Hi all,
>>
>> I finally had success installing Jenux, however,, now that I have it on the desktop, I cannot get Orca to talk. If anyone knows how to get it going, I'd be happy to keep the system for the time being.
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from my MacBook Air
>>
>> Contact:
>>
>> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>>
>> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>>
>> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>>
>>
>>
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

