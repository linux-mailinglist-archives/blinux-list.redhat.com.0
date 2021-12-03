Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BF0466FA0
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 03:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638497613;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ms95+fL6LnUiI20zNd3jdj5NgN9m5Y0PdSNNw/Z0g5c=;
	b=E+ZPSQbDL/8Z9/4clJEgdmF+ruL59rUHpDxuT9mSwsTynV7NaDpMYfErOVLf6hy1RNNVl2
	Re1P/6nU05OO4g1ybrqnC41StIho4xlDIm9oG65QamIE/N9fQL0hI9o+BXBQHL76Zc2IAD
	wfO3pxLKIRr0oZog4185Aa+ssb2TI4U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-cd73XPzXOU6cXAktXN07ww-1; Thu, 02 Dec 2021 21:13:32 -0500
X-MC-Unique: cd73XPzXOU6cXAktXN07ww-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB22F81CCB4;
	Fri,  3 Dec 2021 02:13:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7048260C05;
	Fri,  3 Dec 2021 02:13:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6FC051809C89;
	Fri,  3 Dec 2021 02:13:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B32Crpd030785 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 21:12:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1F9664047279; Fri,  3 Dec 2021 02:12:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B9D94047272
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 02:12:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03B82811E7A
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 02:12:53 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-600-9m1-zcG8N2mrDnuitAy8gw-1; Thu, 02 Dec 2021 21:12:51 -0500
X-MC-Unique: 9m1-zcG8N2mrDnuitAy8gw-1
Received: by mail-qt1-f175.google.com with SMTP id f20so1840039qtb.4
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 18:12:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f7WwkIWdBiaRX3ZKG61TIELlkooKBPpgGx/YDdUTVlk=;
	b=baSvi29oZucgUtvdac+YhCX+0Xhnqxx5WQPpS45tr1uTwvwtBVmDj2theMVIbu83ZV
	DFbaa43C/mOJSwoliw39uUBmjwwoEBDsJLySi87+8+xbd3t+4zAXjT75LnOFfpfXs06V
	XOsfWeV8uiiOhuUNUWraUskGqakw7G4mdw07aIyrbLGXktL0fU6yF4fxN3trLW+ItHDU
	VSJnv298nYujLkCEkxEGXUoKZ/BVTDLzftYTbRR3DIUUGQZ2ZsDWbnTZ3nd3f1l+YGn6
	9xtkD/OE4+Lk3Z9TFrqeIZzL82y99EQJ6y9KMD2F5aBg8GGMkc6CirqmmUzKa8x8F795
	hj9w==
X-Gm-Message-State: AOAM531F+fRQM05fxXQ+MYcqB7L72vm+/qL+IS/uGz7cB8M0wPTnB104
	n9itzGYpVuKWiWrumoZnZ3C2vSS2u9QrFMxK
X-Google-Smtp-Source: ABdhPJwefWMzi9orIn5M5FplPNWrVZ6LrpPR1nbOIJ3aBqFieikBy7Ajr6yUk18/Yc6qRZgEbd7vgQ==
X-Received: by 2002:ac8:5ad1:: with SMTP id d17mr17955569qtd.23.1638497570767; 
	Thu, 02 Dec 2021 18:12:50 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	h12sm1099239qkp.52.2021.12.02.18.12.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 18:12:50 -0800 (PST)
Subject: Re: two questions for the experts
To: blinux-list@redhat.com
References: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
	<af43849a-3949-a189-e294-9e488766fa78@gmail.com>
Message-ID: <a75f9981-10a8-f23b-7b7b-7275cfa8f188@gmail.com>
Date: Thu, 2 Dec 2021 21:12:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <af43849a-3949-a189-e294-9e488766fa78@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks a bundle Kyle.

You answered both of my questions. I never even noticed this tab of key 
bindings before. I used to pass by it without giving it much thought.

Somehow I made some stupid mistake, which I do not know exactly what it 
was, and inadvertantly unchecked all of the bound keys. I had to go and 
check them one by one. I do not even know what I did to uncheck all of 
them together. hahaha

Now things are fine.

Cheers,

Ibrahim

On 12/2/21 6:29 PM, Linux for blind general discussion wrote:
> To bind shortcut keys to speech rate, check the keybindings tab. There 
> are unbound keys to increase speech rate and decrease speech rate. 
> First, arrow to the right once and you will hear keybinding. Press the 
> enter key there and press the key you want to bind to that shortcut. 
> Then arrow right once more and tick the "modified" checkbox. There is 
> also an unbound keybinding to cycle to the next settings profile. 
> Perform the same steps to bind that shortcut to the key you want.
> ~Kyle
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

