Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F0461B06
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638200033;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Dz7xD+rbelMzo0lXtVUcrh0tZfPD5t2Oam+eiiSNNk=;
	b=geH/CtwfDwDbSrMh5Y1Z9fSQaX2/RebIEIlqO/Va+IKiehYwvHDKrgMpm4VedgXFh7CgrL
	2grsUt+Hqxtr6UU3e4JhUIFSFWwAsWW0HGlZBZqK1CEEMRjy3i+IIZXv75W0ywlRVI+oJS
	hC4m7PfOlp4aGF7l6Ly5WkXSb0SqNCA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-542-qTJWFZj8PmC4WErOCZ129g-1; Mon, 29 Nov 2021 10:33:51 -0500
X-MC-Unique: qTJWFZj8PmC4WErOCZ129g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84081839A4C;
	Mon, 29 Nov 2021 15:33:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6703971CBF;
	Mon, 29 Nov 2021 15:33:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EB6E4BB7C;
	Mon, 29 Nov 2021 15:33:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFXcNm011427 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:33:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A0F8B492C3B; Mon, 29 Nov 2021 15:33:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C4DF492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:33:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83D888022F4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:33:38 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-98-DNjDuYOzN-Sp8TUNkCXb7w-1; Mon, 29 Nov 2021 10:33:36 -0500
X-MC-Unique: DNjDuYOzN-Sp8TUNkCXb7w-1
Received: by mail-ed1-f48.google.com with SMTP id t5so73894667edd.0
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:33:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=xc0pQdytlLI41Hu7caw6Utw2XtuBDEjrIJKyLiCNV7Q=;
	b=l02OcbJ90pflQ0xZIS6wyo5PDKx4p30dEb0RBysAWVFg1NhlpmGuMh0nfUfcySu9Lq
	V2ONA4iW+MK7b56+ExF7ityleE4AZjDweyZ6816DTUwoMtqE1+AxDX+6NmywW+/EYJBE
	2xm3pT0O6fLkn2wD0YYUmDHQl6CsAKLK+nAkmB+9v+mRKVmMwPJM4I0x8V6H97IH7+rx
	6GlpehPFQOInR9BzuwPAjV4zg2U6wP027cpQe+HoE6/IxAKjbACbz44FMvEBLeuce8hd
	m6K9Y02LOirtlmoN0ZoQqywgJUL5PfKLB1EVQFxb5Tg3/JD8VQ5Q1Hu6G9hFhArewRZ7
	pPOQ==
X-Gm-Message-State: AOAM5334QFDMs4cAG5Al6ZM0/izqDplDdk77sf9iDyZba1ATO7woaS7i
	rfp6A6rdwTvxwz7mVhN5jdFAwRS0NKxogA==
X-Google-Smtp-Source: ABdhPJzgB8MJS0nL+ZgP6tplGBjC3EQOnRtuOc0I2mHB/JmG00KS14dIHHwTySMa5mErTSIoaXqdZA==
X-Received: by 2002:aa7:de86:: with SMTP id j6mr74023940edv.1.1638200015060;
	Mon, 29 Nov 2021 07:33:35 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id e4sm8047775ejs.13.2021.11.29.07.33.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:33:34 -0800 (PST)
Message-ID: <4295d4fd-03f6-1a8a-42a6-1ad99b495fee@gmail.com>
Date: Mon, 29 Nov 2021 17:33:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: --force-renderer-accessibility not working lately
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
In-Reply-To: <4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

Hi,


I have it set in ~/.bashrc and still no go.


Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

On 2021/11/29 17:25, Linux for blind general discussion wrote:
> Do you have the right environment variables set? In my .bashrc I have
>
>
> export ACCESSIBILITY_ENABLED=1
>
>
> In it. That makes Chromium based things work on Arch/Ubuntu for me
>
> On 11/29/21 15:13, Linux for blind general discussion wrote:
>> Hi all,
>>
>>
>> I have tried this in both Slint and Fedora, and I've not had any luck 
>> making the --force-renderer-accessibility flag work with either 
>> Google-Chrome or Skype, both applications for which this flag use to 
>> work very well in the past.
>>
>>
>> Am I missing something, or am I just out of luck here.
>>
>>
>> Unfortunately, I actually need this to work, otherwise, I'll just 
>> have to use the MacBook to do my job.
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

