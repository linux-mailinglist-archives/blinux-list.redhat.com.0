Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7914623C7
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222716;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AXUqLDMU9LRkpmXoh/ID63B3RXypYndWgxdase+mZmA=;
	b=AHzODNm4jKDOpa02yyy9ot7lOL54e5nVOCU2cSs6zPpV0gBG4mbEZ883AacvHAaJl2u0Kl
	zcZW9m1pFOHAsMRNOhpjMnxIIf5Z7nlIAMqQyHPEOdnEeDgTz9lFo1+600zTXwMD71Q/Zl
	Ygolf3VBz8px6LbD3/OFlT4fLC87Wwg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-488-hCQIClieNB-7AEiVi4xnUQ-1; Mon, 29 Nov 2021 16:51:52 -0500
X-MC-Unique: hCQIClieNB-7AEiVi4xnUQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8AAE192D787;
	Mon, 29 Nov 2021 21:51:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FAAF19724;
	Mon, 29 Nov 2021 21:51:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E4571809C89;
	Mon, 29 Nov 2021 21:51:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLpekn011401 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:51:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AE665401E44; Mon, 29 Nov 2021 21:51:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAFBC401E4B
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:51:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9269F811E8F
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:51:40 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-228-DodU7LF7PAqJqYPZ6vNGLQ-1; Mon, 29 Nov 2021 16:51:38 -0500
X-MC-Unique: DodU7LF7PAqJqYPZ6vNGLQ-1
Received: by mail-ed1-f43.google.com with SMTP id y12so77922429eda.12
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:51:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=4H61Mvu3h38otMvlV+tUs5AjA4qJ33IjNqtZtsZfYCk=;
	b=o5Tb4uVQ8iA61V+EC846Z0l+O7B9jRFcCn+znopN+vE/Zm4XNXPyO0sT0HoshHg0YV
	rnf3WzVuCu3Espu3f/TMzirYl9DpnWLJe/B00uzYAottGbJAeO1gQ0ISdtY0L/3anDPR
	JqfRBO1PQMt8a5BIJx1Ol6NkJIb5sEb3dH6J93IHH8vona0RUp7ZdqQcehmk/XZ4BcOQ
	FlfmjKrcPLQpvVVqLba+i6WJAPw7GmioAJQCm2Kvx6DSg7txCZBOHGMZXqoE/LnDH20r
	48Jx1ItJstqjrRirLxne8xFVvKiNupDI8tAIrP433FFi3DFpO8HX5KRMBMBEwFCJcN5x
	gMTA==
X-Gm-Message-State: AOAM532diD4oql3qQx+WfpeIwf0mj623H/iBqgAb+8PNQes7PTv1uApg
	DDFFYFp2+eBmNxGygbGE4DaQYSkhHl1WCw==
X-Google-Smtp-Source: ABdhPJylqgq2oJzhV61wWqWBNxudgE+BLozTQMUSEe7kQrBWUBdQFLYiLNYweGrKJM/Ef4wZm3D27Q==
X-Received: by 2002:a05:6402:447:: with SMTP id
	p7mr77733856edw.261.1638222697282; 
	Mon, 29 Nov 2021 13:51:37 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	jl8sm7785390ejc.59.2021.11.29.13.51.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:51:36 -0800 (PST)
Message-ID: <8a8199b6-de2b-1366-ebec-6c3b469d9fb1@gmail.com>
Date: Mon, 29 Nov 2021 23:51:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<be0a3ef3-9637-a7d9-8d0b-030b3e28e75b@gmail.com>
In-Reply-To: <be0a3ef3-9637-a7d9-8d0b-030b3e28e75b@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I personally have nano on all systems I can get to. The reason is 
simple, I'm to lazy to bother learning vim, not that it's command 
structure would help me to much, seeing that I use the left-handed 
Dvorak keyboard anyway.


Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

On 2021/11/29 23:48, Linux for blind general discussion wrote:
> See I usually throw a terminal/console text editor in on any CLI only 
> systems/installs for that reason, or for working in a TTY when I want 
> to edit stuff or am on an SSH connection. It's always nice to have a 
> simple, easy to use editor in my pocket so if my desktop falls over or 
> I need to SSH into a machine I can just do nano filename and get right 
> to work without having to fight an editor that thinks it knows what I 
> want. No. I just want to get in, edit text, save, and get things donen.
>
>
>
> On 11/29/21 21:31, Linux for blind general discussion wrote:
>> Unless you are running a text-only installation, installing from 
>> scratch, editing configs before you have a desktop environment 
>> installed or working remotely, your best bet is going to be whatever 
>> editor comes with your desktop environment. Usually that will be 
>> either pluma on the MATE desktop, gedit on the GNOME desktop, or you 
>> may have leafpad or mousepad installed. Any of these give you very 
>> easy cut/copy/paste functionality, easy to use find/replace pop-up 
>> windows and a fully accessible menu system for doing other things. 
>> All these editors are fully accessible to Orca and are found in your 
>> accessories menu or its equivalent depending on your desktop.
>>
>> If you are looking for a terminal-based text editor, usually for 
>> installing a system manually or working remotely via ssh, the best 
>> and easiest to use by far is nano, although I usually like to use 
>> pluma even over ssh, since sshfs mounts my servers as if they are on 
>> the local disk, so I get access to every file on my servers just as 
>> if they are right on the computer I'm using to access them. I have 
>> edited server configs and even websites in this way.
>>
>> Forget EMACS. I gave up on that crap after 5 minutes of mucking about 
>> in it, and emacspeak didn't make it any better. A text editor should 
>> make it as easy as possible to edit text, and that is all. It 
>> shouldn't require a computer science degree, nor should it try to be 
>> a complete desktop that tries to turn every application into an 
>> editor. The editors I mention here are mostly straight-forward, with 
>> the possible exception of nano, which is mostly consistent with pico, 
>> but not so consistent with any other desktop editor, and they all do 
>> what they should and nothing extra or overly complicated. If you want 
>> complicated text handling and word processing, LibreOffice Writer is 
>> the way to go, as it's a sophisticated word processor, not a text 
>> editor.
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

