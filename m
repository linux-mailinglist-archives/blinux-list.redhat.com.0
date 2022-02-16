Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B38C24B84AB
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 10:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645004727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=syptimSVeEMBMYGInG5C1g+jRBuHFeuovQyBrUDSyFc=;
	b=d/RrsrB19YCE+3cSh3/hSJYw7/I3oZvoxwivEnXcXRU8nHCnkilv9kNzTkyk6k0MRtvp1k
	uQ3UUomUOPLNSCq9E6XSWn+CBTPEx+QZZmzWSSnQfjD6FYyCWjAv6FSgTbB66Dch/Cuze/
	pTzadQCVeuu/sr9pLmznIMO6V3063jA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-kj2O99e1NV6lY56sVCmrjw-1; Wed, 16 Feb 2022 04:45:24 -0500
X-MC-Unique: kj2O99e1NV6lY56sVCmrjw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 772121853028;
	Wed, 16 Feb 2022 09:45:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9443678D85;
	Wed, 16 Feb 2022 09:45:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E94984BB7C;
	Wed, 16 Feb 2022 09:45:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21G9g5ME003199 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 04:42:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22C4141136EA; Wed, 16 Feb 2022 09:42:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EA2641136E0
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 09:42:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06C9C185A7A4
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 09:42:05 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-302-5aJPwQ_UOeGL81bar97umw-1; Wed, 16 Feb 2022 04:42:03 -0500
X-MC-Unique: 5aJPwQ_UOeGL81bar97umw-1
Received: by mail-wr1-f47.google.com with SMTP id d27so2460191wrb.5
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 01:42:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=7EpHIAC/T1V7g4mwfDDVBP9h4eaG4eL9tCe7Y1ZoT5E=;
	b=JVm2MPY4ggSvQzsczxf/svGL7ds39XjJX2WAZOoPjteuKf3v92CDKnxl0L9L5v+EG5
	2F3a60Z++BsQtLdsbT/IwkkrRJHCw5h7V9Ayi3HQRl2GTrtP2i9xbIEMyHVfG68Pbf2b
	83ZgZKZDv9drUx1NIQQN7qPs52t4kQKg/X4fJyTeEcFTJbbDN+D5l02CIDCmkFt7oDby
	IkUU1uTVVy2cP17P7/jDl7aAUXoUYmwc2iJ1TWm0hfJTrPFNRIRa0++Ppw9LYZ+HN7I8
	TkLRBEvFXEJ1iGfTJxBvBkq2vbl6+qn+vEMMmK9tandl25iVfhpxSlAy5EkWMABn9i0U
	unUA==
X-Gm-Message-State: AOAM533804n4LnBnNklkBPLbKwx4Uh7tLVGqeoWSaD5vKBiUaacIu1co
	3HfpI7SK2O/SaUHTa1i0ZFZZyDh2VK4XFw==
X-Google-Smtp-Source: ABdhPJzAs7onldpvkk182C29VzQm7pvrH+1FwQZWmc0ejRFzr2nEX+4mC28WxwGB78IITZrtYFCe7A==
X-Received: by 2002:adf:d20e:0:b0:1e4:a0a0:9da2 with SMTP id
	j14-20020adfd20e000000b001e4a0a09da2mr1585727wrh.319.1645004521679;
	Wed, 16 Feb 2022 01:42:01 -0800 (PST)
Received: from brandt-slint ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id x1sm6573537wrn.12.2022.02.16.01.42.00
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Feb 2022 01:42:01 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Wed, 16 Feb 2022 11:41:49 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
Message-ID: <c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Question regarding Debuan,

Is it, like Debian, only free software, or do they also provide a non-free 
Iso?

Standard Debian doesn't install on my hardware due to non-free Wi-Fi 
drivers being required. Which is rather strange, since both Trisquel and 
Fedora, both shipping with only free software install just fine.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Tue, 15 Feb 2022, Linux for blind general discussion wrote:

> Date: Tue, 15 Feb 2022 15:41:32 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Accessibility of installing Distros?
> 
> A debian spin without systemd.  debuan.org for any interested.
>
>
> On Tue, 15 Feb 2022, Linux for blind general discussion wrote:
>
>> Never heard of this one.
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
>>> On 15 Feb 2022, at 21:54, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>
>>> I forgot Devuan, or, would you just consider that a Debian spin?
>>>
>>>
>>>
>>> On 2/15/22 14:47, Linux for blind general discussion wrote:
>>>> What other options do we, the Blind Linux users have? And, no, I really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

