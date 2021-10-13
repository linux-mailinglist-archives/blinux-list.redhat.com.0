Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD9942CF1A
	for <lists+blinux-list@lfdr.de>; Thu, 14 Oct 2021 01:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634167165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cQixf+pMzKhwM3mzaHtDRzeGmb8xAot0pTl7mW2kyoI=;
	b=RfN/D08HRdz0/z2ypB4j6KqNfcdUlsl2ndYkjjwEwU3SmjArywujzNKVhOCWcyGEHZIP1h
	35h09JpIY9sGYqOaJzCWrY/vHTuBPImVhdDE4IcbzUgMbNVqt/UQs4KC8x+rZVNrhJt+If
	JG99G4vaMVlpdoBxfiZogKASHVaYD7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-601-fsDi4isIPheyn03XB_RZZw-1; Wed, 13 Oct 2021 19:19:21 -0400
X-MC-Unique: fsDi4isIPheyn03XB_RZZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 953222FD22;
	Wed, 13 Oct 2021 23:19:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 779685DA60;
	Wed, 13 Oct 2021 23:19:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 785B0180598A;
	Wed, 13 Oct 2021 23:19:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DNJDJH006827 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 19:19:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 423022166B3F; Wed, 13 Oct 2021 23:19:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D35D2166B2D
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 23:19:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 782BB811E76
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 23:19:10 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-434-iXF9yHgvMgKdsTeNqnsO8g-1; Wed, 13 Oct 2021 19:19:08 -0400
X-MC-Unique: iXF9yHgvMgKdsTeNqnsO8g-1
Received: by mail-pf1-f182.google.com with SMTP id 187so3811863pfc.10
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 16:19:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=e1OyNY4DEniuIUSWdien3c02pNii7dH53JDgkMfOdN0=;
	b=OVEcKBL5iTObtO2HmD7HSICgbI1sspMqqfO2OkD/T4Aca9JncpMaJwJeCCyLWYZ+FY
	RLUycfYRtm2Thl9+KMzNIRMip5OxtwGdJ7pO/zI3aHBhKVg6JKV9mviT3YPbRohoXLJr
	UsYqYIkNDFI8hk9UlezSZXUdAyaGQeM0PEw0x9YoiwoVhLlmqijkcPw/5SzTfkdnR54M
	BvgCIIVl1MtKC6yZdxjBSYbKDv9P3vN8eVrHMA0GFtwNwV8axvQtONx1pzZXQAo3QKFU
	Y4+vJCZCx8YmMMP3JxSJpefqy8h1fgTJbkWgOyKHm3YVdA/qzZuE7BXdaWljHBcNRCVG
	yA4Q==
X-Gm-Message-State: AOAM5332D9BtGrTmAh0tgW0d9+e9r3adLGE8/g2+oODvDaz7i6/QLJwf
	fRuaYm+lls+YWWzJ/sGrsWCS0c7D/0s=
X-Google-Smtp-Source: ABdhPJzLI21V8KfMyUgWh4R+fnhHoaDNbGgWxmQ3U9IAc64ua2Nx6se3hkC0aukEJAAdnBorah8pRg==
X-Received: by 2002:a62:3893:0:b0:44b:9369:5de5 with SMTP id
	f141-20020a623893000000b0044b93695de5mr2218448pfa.40.1634167147131;
	Wed, 13 Oct 2021 16:19:07 -0700 (PDT)
Received: from [192.168.1.101] ([103.121.18.11])
	by smtp.gmail.com with ESMTPSA id m7sm533830pgn.32.2021.10.13.16.19.05
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 16:19:06 -0700 (PDT)
Subject: Re: GRUB boot tone on Fedora
To: blinux-list@redhat.com
References: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
	<alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
	<093939d5-38ef-c30b-5b6b-49da243047ad@gmail.com>
	<alpine.NEB.2.23.451.2110131029110.5363@panix1.panix.com>
Message-ID: <a926fae7-2df2-2268-8bdb-b40932e90900@gmail.com>
Date: Thu, 14 Oct 2021 06:19:04 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2110131029110.5363@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I do have similar approach on my other laptop.


Unfortunately This approach cannot be used on fully encrypted system 
that I have because it'll stop at unlock prompt before anything else is 
executed.


Regards


On 10/13/21 9:30 PM, Linux for blind general discussion wrote:
> My friend needed to know when  it was time to login which is why there
> were no problems with that approach in that situation.
>
>
> On Wed, 13 Oct 2021, Linux for blind general discussion wrote:
>
>>> If the computer hasn't got a speaker, some don't you may need to find and
>>> install the rc.local package then put a file in/etc/rc.local/rc.local.d/
>>> with a script that plays a sound and make that script executeable.
>>
>> The problem with that approach is that the sound will always play long after
>> GRUB has transferred control to the OS. In fact, traditionally, rc.local runs
>> immediately before login, not at the GRUB menu as the tone would do.
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
-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

