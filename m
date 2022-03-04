Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 628AF4CDCDD
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646419459;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sENm9Gx25hQ73oq4vAnI3ELJXoov8Vt8R4awChTZUjw=;
	b=c/RCJiMoMKzjTeukeWwK6rdZKsNrjNrbXTDie9BTrNHZHxDgLLPV17WAlVRIU2rZ6UC7Cw
	K6kRbMS/fURtUpaVjgGw4OSHAw1DXZzrt7FIxibl4gpjKouCStQmnZDpXmrbJfPdk26IJ5
	NOlrA/nwYssDPClLSZPZEjF+8/3rx4A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-347-dAK-4cyANAKnjuwt-mHL-w-1; Fri, 04 Mar 2022 13:44:16 -0500
X-MC-Unique: dAK-4cyANAKnjuwt-mHL-w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B4BD51DF;
	Fri,  4 Mar 2022 18:44:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FB12106F777;
	Fri,  4 Mar 2022 18:44:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6131818095C9;
	Fri,  4 Mar 2022 18:44:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224IhK5S030803 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:43:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 237CF141DC2A; Fri,  4 Mar 2022 18:43:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EDDF141DC29
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:43:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0584F101AA45
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:43:20 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-549-uWjkbfDOOSGd8Plfd5E_xQ-1; Fri, 04 Mar 2022 13:43:18 -0500
X-MC-Unique: uWjkbfDOOSGd8Plfd5E_xQ-1
Received: by mail-wr1-f48.google.com with SMTP id j17so14030004wrc.0
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 10:43:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=yeyiQuo4kDT1GWQTtWXfLaAXbKdzOUHmVK3A+RQqvls=;
	b=oF5nlakrDL919uc+r/EUf9WTobofEsLs6HkhE6T59qAivC3XUtzmwLBF5Hn/W1jX8r
	jzuU0kv0zJhG0yjbS+PNQjSadaTt5GcKUYtU80QJuhP4nD9s3xpkuDrWcSIbnoq/RGqx
	odoEY6+ZVa5/ERcGLDGGaTygnSjKCIpKcPFL7YvZYTob5jI+Bu+ub7LnMzL2fLAlq93g
	7ntaLMvpRGSTpbbumqf9X1u6Chsj6NFp5SaTQEJ4RR5Nii1IoI09wlIm3BNwPmAc2qfS
	fi36YckPL3hY+kEXCzbGPlEH0Po3gMHMFt6DoLeMQD40FBC8rREYkfqoioD2sj4DZgKd
	KNQg==
X-Gm-Message-State: AOAM531kqQBrSI2g6tXkJgaF4b2/ck2bWPvl3g5JNvXBxe0cHkjPpdwd
	hpiox+NwA+W0ULFutqTVgH2sUbj5kzEglQ==
X-Google-Smtp-Source: ABdhPJws8OlJxLlHkHX+tO1Qh5Szc79ZbfUPv+a98tpvOF49rJZWQwAKEo0muOVYwZMO8oZQGb7WCQ==
X-Received: by 2002:adf:ed46:0:b0:1f0:619a:f900 with SMTP id
	u6-20020adfed46000000b001f0619af900mr50538wro.311.1646419396297;
	Fri, 04 Mar 2022 10:43:16 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	l8-20020a5d6688000000b001f04ae0bb6csm5092744wru.58.2022.03.04.10.43.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 04 Mar 2022 10:43:15 -0800 (PST)
Message-ID: <518c6e49-0315-d3ac-1586-0a2f6c99c7d7@gmail.com>
Date: Fri, 4 Mar 2022 18:43:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
	<9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
	<CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
In-Reply-To: <CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

not sure but I'd be interested too. Double so if I can point my Mutt at 
it and get it without a lot of hassle. I tried with the mutt Oauth2.0 
script and it broke, majorly...

So yes, I'm right with you on the hunt for a new email provider. Time to 
forward all my email to this new provider

On 3/4/22 18:38, Linux for blind general discussion wrote:
> Well, that's just vague enough to be worthless.
>
> While on the subject, anyone know of any Gmail alternative with a web
> interface comparable to Gmail's basic HTML view? If it adds in such
> missing features such as forcing replay to list as default when
> replying to messages from mailing lists, manually merging
> conversations, and having folders/labels for contacts, that would be
> nice to.
>
> Fortunately, I don't use many of Google's services(Gmail, search,
> YouTube) and Gmail is the only one that really requires logging in
> often enough to maintain a persistent cookie on my personal machine.
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

