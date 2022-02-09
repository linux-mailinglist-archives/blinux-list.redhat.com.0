Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2204AF333
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 14:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644414410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JwKqOdst9WDldknRITqa6unZr6sN+MUS7bhc6vNjH6A=;
	b=JuIzMQuKALqjQ7/6ZY8kf3F44VKXASyzo6SmYcj/vUpiqp+JcMVB8d7RdURU5oIANQJMFP
	7uIhaeLQVmzu6KmdvoVwAo8QUEJfA2PiLPTqWC5jfTcfem16SbjKlQBSOek3XlvwVCnphk
	qItyex13hnbVSnaRMJ2rAGcX7Cuau6U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-kDgoWCnzN3e_eWnuPn3aoQ-1; Wed, 09 Feb 2022 08:46:46 -0500
X-MC-Unique: kDgoWCnzN3e_eWnuPn3aoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA7721091DA0;
	Wed,  9 Feb 2022 13:46:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6085478A97;
	Wed,  9 Feb 2022 13:46:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A17474BB7C;
	Wed,  9 Feb 2022 13:46:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219DkbJu024651 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 08:46:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C1A58400E101; Wed,  9 Feb 2022 13:46:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD99B4010A10
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:46:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5E6B3C01C1C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:46:37 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-557-exjrdYHpNsy12NRqTiVX-A-1; Wed, 09 Feb 2022 08:46:35 -0500
X-MC-Unique: exjrdYHpNsy12NRqTiVX-A-1
Received: by mail-wr1-f42.google.com with SMTP id d27so4160876wrc.6
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 05:46:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=MKoGOTGTSzsC3O9qddvbrNO5tA/DPnNe42jFOvUY6Kg=;
	b=6ZrnQ/qvyRswnQc5MHZUbIaW9oF6+6Ru78m08N6adEHQp2Mm7xqBo+aLm797XPCjDI
	ZhIopfkxdk8eX1Fi2Vau870Dn6SqB39CelwN0rCncmXxOlwaYjiddxJBZzARwApG8668
	LQQh7lOLOuQkEP4kGBJ0Z+ezNqCJ7CWGGNcvoZ5k+T6pE5QZw1eR3U87rxVcgMs6STGl
	e4CIkiajLUb1Y/Pw9iGnedcrnviy9IgbA2QP4quZk2/2sXkQNEhRRAIhb/YvcKKQgSCF
	pDdCrhTukmUfSUAftsx3NRfB1uuzu+1ufWheCNacI4qHW0z8JHMSHXScutoBVye8QtZa
	4s0w==
X-Gm-Message-State: AOAM532QdV8GPNuacfSRvW3I9Qflf76WkFEEaBDCwA6wbfUNoEKVsTIg
	EYiTbkbd5dCOoohvaG4xRHZTyVrrt6Q=
X-Google-Smtp-Source: ABdhPJy73fLCkCCVbpNcaVtWzl3USTJbF8Fh15iADva8UXzEboUcZRjjQabbfjcy3G5iHIGmvpuLqg==
X-Received: by 2002:adf:f710:: with SMTP id r16mr2089901wrp.327.1644414394417; 
	Wed, 09 Feb 2022 05:46:34 -0800 (PST)
Received: from brandt-slint ([197.184.183.237])
	by smtp.gmail.com with ESMTPSA id
	11sm18510709wrb.30.2022.02.09.05.46.32 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 05:46:33 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.study.home>
Date: Wed, 9 Feb 2022 15:46:15 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
In-Reply-To: <10ddd15f-34b1-4137-b114-e5d44c31b12b@gmail.com>
Message-ID: <e05b07-fc2c-db87-895c-2befe57b7b62@brandt-slint.study.home>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<10ddd15f-34b1-4137-b114-e5d44c31b12b@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ah well,

As I said, I'm happy with ratpoison or on the console, as I am at the 
moment.

It would be interesting if StumpWM can be modded the same way as 
ratpoison, since it is a fork of ratpoison after all.

I just don't have the mind to do something like that, I'm just an average 
user with an interest in tech.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Date: Wed, 9 Feb 2022 00:11:14 +0000
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
>     besides ratpoison, which is great, btw
> 
> Not really a WM...
>
> But I've adapted Strychnine to work with LXDE/LXQT. I couldn't get i3 to work 
> and I'm not touching xmonad at all. I'm not sure about Stumpwm however....but 
> I've yet to find anything as intuitive as Ratpoison personally. If i3 can be 
> made accessible, I'd like that but I'm not sure. Wasn't there a github/gitlab 
> bounty for it a while ago?
>
> Linux for blind general discussion wrote:
>> Hi all,
>> 
>> 
>> The subject encompassed basically all I wanted to know.
>> 
>> 
>> I remember a while ago someone built a talking arch installer using the 
>> ezarch scripts. On their page they listed i3 as an accessible option, but I 
>> could never get the thing to install on a VM, and at the time I wasn't 
>> going to break my Windows install to test it. Now, maybe, but I cannot for 
>> the life of me remember what that project was called.
>> 
>> 
>> If anyone got any tiling WM setups, besides ratpoison to work as they 
>> should, please let me know.
>> 
>> 
>> I really love the way ratpoison doesn't slow this machine down at all.
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

