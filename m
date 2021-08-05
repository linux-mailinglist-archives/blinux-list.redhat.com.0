Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A1D523E113C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 11:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628155355;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vRehzJVF1wpD5HiEs5BMd88kyYDGvAvNvHEoI5gYZ7w=;
	b=Hpf7EosB2Ibk0M6Vu0EIyz1TbdnWBh4i29sfzHvvvcvPyr/lpJy8iuKUoNNU8x0suDzXNR
	I7THxdMZEASlDzcVTsPy0lIACmY8abNo236ujNCLh6H/rWddHf+AnQmzN4SUqKAfAijENA
	+yvzwJccsvenVyFArcA6kBLKxbWh2UI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-aLNKQMkGP9u3sEPy3jp_Yg-1; Thu, 05 Aug 2021 05:22:34 -0400
X-MC-Unique: aLNKQMkGP9u3sEPy3jp_Yg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD8BA8799E0;
	Thu,  5 Aug 2021 09:22:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1424F5D9DE;
	Thu,  5 Aug 2021 09:22:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C221180BAB2;
	Thu,  5 Aug 2021 09:22:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1759IrEo015177 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 05:18:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 718DFB6B38; Thu,  5 Aug 2021 09:18:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C072100D63
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:18:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6956980018D
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:18:47 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-185-v4RliJkbPROPP59koxRJEg-1; Thu, 05 Aug 2021 05:18:45 -0400
X-MC-Unique: v4RliJkbPROPP59koxRJEg-1
Received: by mail-wr1-f43.google.com with SMTP id p5so5603288wro.7
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 02:18:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ELZt6FhrGj5+QLgNXMLkmkjUL4N6IkFgkzQpN4+rJPY=;
	b=skJZMsOuSxAPESHFoYCpmuIi9/DcxRBEFGw/Z3I70ShVTpSQUBwhvRbEkQGO7oyJbP
	jmQHOpw81hSYty/9xSygK57nW/upMpWFOxWf+OEK1gMk7UPRaYXUEa3NBHR+1O8DGfDw
	dCnCKvsfj+J/ZVRj1HhDGO3NLli3XCH3JoVqoqucikRAn/JRtAILp32J7P8WKDdUmFaF
	ZeHgOoEr1IbCRbhw/BgbjknVHBrgfeiqSuxNbr9+MhfTVJ0vs4G0yIc7K23y4R7CtGMP
	dEL7uxLU7CkJhuIa8DaabermOhtQONESUMSv1fU//BGEemHSftvWp/T/3c88w1MomODR
	Q1vg==
X-Gm-Message-State: AOAM531tVfbd3U2mTb3KxgAiZia06RBjRVrTwng/OnAHDcrJfODYUyiH
	UxhWEYRWrYuVmze4K5zvpM+JWsCOFAn4IA==
X-Google-Smtp-Source: ABdhPJxXo9/+4B4LWk3w7XOISLgOPVzJJSJMuXv68T2i+A++En+ECfE5BxMVpC4olVeSH1ppoXFDjQ==
X-Received: by 2002:a05:6000:12ce:: with SMTP id
	l14mr4107600wrx.41.1628155123895; 
	Thu, 05 Aug 2021 02:18:43 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	b14sm5803302wrm.43.2021.08.05.02.18.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 02:18:43 -0700 (PDT)
Subject: Re: Looking for help with switching on the bare metal.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
Message-ID: <f94b08ef-317d-6816-b70a-7e153cf899ed@gmail.com>
Date: Thu, 5 Aug 2021 10:18:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

To me that looks like it'd run something like the newest LTS Ubuntu, 
Arch or Solus or Fedora and so on, it's a good spec machine really. If 
you're able to kill off Octane and its related stuff and maybe secure 
boot if needed, then....should, in theory, be good to go

On 8/5/21 9:03 AM, Linux for blind general discussion wrote:
> Hi all,
>
>   
>
> At the moment I am running my Linux in virtual Machines, simply because I do
> not have hardware that I trust to work correctly. I am currently using a
> Huawei Matebook see specs below.
>
>   
>
> Device name      LAPTOP-57VCMCF1
>
> Processor            Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz
>
> Installed RAM    16,0 GB (15,8 GB usable)
>
> Device ID             E533DBAD-50FA-48FF-A9AC-4B1B9BBC462D
>
> Product ID          00342-41428-46767-AAOEM
>
> System type        64-bit operating system, x64-based processor
>
> Pen and touch   No pen or touch input is available for this display
>
>   
>
> This machine, as far as I can tell, is rather new. I have tried looking
> online, but am not sure about what I am finding, or for that matter, not
> finding. If anyone can help me with this machine, I'd be grateful.
>
>   
>
> Warm regards,
>
>   
>
> Brandt
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

